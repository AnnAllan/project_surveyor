class SurveysController < ApplicationController

  def index
    @surveys = Survey.all
  end

  def new
    @survey = Survey.new
  end

  def create
    @survey = Survey.new(safe_survey_params)
    if @survey.save
      flash[:success] = "Survey created."
      redirect_to new_question_path(@survey)
    else
      flash.now[:error] = "Survey could not be created."
      render :new
    end
  end


  private
  def safe_survey_params
    params.require(:survey).permit(:title, :description, :responses)
  end
end
