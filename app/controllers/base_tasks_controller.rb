class BaseTasksController < ApplicationController
  before_action :set_base_task, only: %i[ show edit update destroy ]

  # GET /base_tasks or /base_tasks.json
  def index
    @base_tasks = BaseTask.all
  end

  # GET /base_tasks/1 or /base_tasks/1.json
  def show
  end

  # GET /base_tasks/new
  def new
    @base_task = BaseTask.new
  end

  # GET /base_tasks/1/edit
  def edit
  end

  # POST /base_tasks or /base_tasks.json
  def create
    @base_task = BaseTask.new(base_task_params)

    respond_to do |format|
      if @base_task.save
        format.html { redirect_to base_task_url(@base_task), notice: "Base task was successfully created." }
        format.json { render :show, status: :created, location: @base_task }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @base_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /base_tasks/1 or /base_tasks/1.json
  def update
    respond_to do |format|
      if @base_task.update(base_task_params)
        format.html { redirect_to base_task_url(@base_task), notice: "Base task was successfully updated." }
        format.json { render :show, status: :ok, location: @base_task }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @base_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /base_tasks/1 or /base_tasks/1.json
  def destroy
    @base_task.destroy

    respond_to do |format|
      format.html { redirect_to base_tasks_url, notice: "Base task was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_base_task
      @base_task = BaseTask.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def base_task_params
      params.require(:base_task).permit(:title, :description, :task_url, :base_course_id)
    end
end
