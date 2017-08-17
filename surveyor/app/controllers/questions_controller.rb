class QuestionsController < ApplicationController
  def new
    @question = Question.new
    @survey = Survey.last
  end

  def create
    @survey = Survey.last
    @question = Question.create(safe_question_params)
    if @question.save
      flash[:success] = "Question created."
      if @question.question_type == 1
        render partial: "range_info", locals: {survey: @survey}
      else
        render partial: "choice_info", locals: {survey: @survey}
      end
    else
      flash.now[:error] = "Could not create question."
    end
  end


  private

  def safe_question_params
    params.require(:question).permit(:survey_id, :question_type, :content, :required, :min_value, :max_value, :option_number, :selectons_allowed)
  end

end
