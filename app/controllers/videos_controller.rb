class VideosController < ApplicationController
  before_action :set_video, only: %i[ show edit update destroy ]
  before_action :authenticate_user!


  # GET /video_per_users or /video_per_users.json
  def index
    @videos = current_user.videos.all
  end

  # GET /video_per_users/1 or /video_per_users/1.json
  def show
    @course = @video.course
    @tasks = @course.tasks
    @course.videos.current.each do |video|
      if video.id != @video.id
        video.update!(status: :finished)
      end
    end
    @video.update!(status: :current)
    render show: {
      video: @video,
      course: @course,
      videos: @course.videos,
      tasks: @tasks
    }
  end

  # GET /video_per_users/new
  def new
    @video = current_user.video.new
  end

  # GET /video_per_users/1/edit
  def edit
  end

  # POST /video_per_users or /video_per_users.json
  def create
    @video = current_user.video.new(video_per_user_params)

    respond_to do |format|
      if @video_per_user.save
        format.html { redirect_to video_per_user_url(@video_per_user), notice: "Video per user was successfully created." }
        format.json { render :show, status: :created, location: @video_per_user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @video_per_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /video_per_users/1 or /video_per_users/1.json
  def update
    respond_to do |format|
      if @video_per_user.update(video_per_user_params)
        format.html { redirect_to video_per_user_url(@video_per_user), notice: "Video per user was successfully updated." }
        format.json { render :show, status: :ok, location: @video_per_user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @video_per_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /video_per_users/1 or /video_per_users/1.json
  def destroy
    @video_per_user.destroy

    respond_to do |format|
      format.html { redirect_to video_per_users_url, notice: "Video per user was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

  def set_video
    @video = current_user.videos.find(params[:id])
  end


    # Only allow a list of trusted parameters through.
  def video_params
    params.require(:video).permit(:user_id, :video_id, :status)
  end
end
