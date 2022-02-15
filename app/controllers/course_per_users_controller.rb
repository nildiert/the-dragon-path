class CoursePerUsersController < ApplicationController
  before_action :set_course_per_user, only: %i[ show edit update destroy ]

  # GET /course_per_users or /course_per_users.json
  def index
    @course_per_users = CoursePerUser.all
  end

  # GET /course_per_users/1 or /course_per_users/1.json
  def show
  end

  # GET /course_per_users/new
  def new
    @course_per_user = CoursePerUser.new
  end

  # GET /course_per_users/1/edit
  def edit
  end

  # POST /course_per_users or /course_per_users.json
  def create
    @course_per_user = CoursePerUser.new(course_per_user_params)

    respond_to do |format|
      if @course_per_user.save
        format.html { redirect_to course_per_user_url(@course_per_user), notice: "Course per user was successfully created." }
        format.json { render :show, status: :created, location: @course_per_user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @course_per_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_per_users/1 or /course_per_users/1.json
  def update
    respond_to do |format|
      if @course_per_user.update(course_per_user_params)
        format.html { redirect_to course_per_user_url(@course_per_user), notice: "Course per user was successfully updated." }
        format.json { render :show, status: :ok, location: @course_per_user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @course_per_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_per_users/1 or /course_per_users/1.json
  def destroy
    @course_per_user.destroy

    respond_to do |format|
      format.html { redirect_to course_per_users_url, notice: "Course per user was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_per_user
      @course_per_user = CoursePerUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def course_per_user_params
      params.require(:course_per_user).permit(:user_id, :course_id, :status)
    end
end
