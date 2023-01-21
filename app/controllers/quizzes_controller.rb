class QuizzesController < ApplicationController
  before_action :authenticate_user!

  def new
    @quiz = Quiz.new
  end

  def create
    @quiz = Quiz.new
  end

end
