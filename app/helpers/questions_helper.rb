module QuestionsHelper

  def question_params
    params.require(:question).permit(:prompt, :description)
  end
end
