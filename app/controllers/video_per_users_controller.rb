class VideoPerUsersController < ApplicationController
  before_action :set_video_per_user, only: %i[ show edit update destroy ]

  # GET /video_per_users or /video_per_users.json
  def index
    @video_per_users = VideoPerUser.all
  end

  # GET /video_per_users/1 or /video_per_users/1.json
  def show
  end

  # GET /video_per_users/new
  def new
    @video_per_user = VideoPerUser.new
  end

  # GET /video_per_users/1/edit
  def edit
  end

  # POST /video_per_users or /video_per_users.json
  def create
    @video_per_user = VideoPerUser.new(video_per_user_params)

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
    def set_video_per_user
      @video_per_user = VideoPerUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def video_per_user_params
      params.require(:video_per_user).permit(:user_id, :video_id, :status)
    end
end
