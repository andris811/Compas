class QuestionsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    questions = Question.all.includes(:answers)
    questions = questions.map do |question|
      h = question.serializable_hash
      h['answers'] = question.answers
      h
    end
    render json: questions
  end
end
