class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
  end

  def show
    @schedule = Schedule.find(params[:id])
    rescue ActiveRecord::RecordNotFound => e
      redirect_to schedules_path
  end

  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.new(schedule_params)
    if @schedule.save
      redirect_to schedule_path(@schedule), notice: '操作に成功しました。'
    else
      flash.now[:alert] = "操作に失敗しました。"
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @schedule = Schedule.find(params[:id])
    rescue ActiveRecord::RecordNotFound => e
      redirect_to schedules_path
  end

  def update
    @schedule = Schedule.find(params[:id])

    if @schedule.update(schedule_params)
      flash.now[:notice] = "操作に成功しました。"
      render :show
    else
      flash.now[:alert] = "操作に失敗しました。"
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @schedule = Schedule.find(params[:id])
    @schedule.destroy
    redirect_to schedules_path, status: :see_other
  end

  private
  def schedule_params
    params.require(:schedule).permit(:title, :start_date, :end_date, :memo, :is_allday)
  end
end