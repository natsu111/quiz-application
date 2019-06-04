class StaticPagesController < ApplicationController
  def home
    @quiz = current_user.quizzes.build if logged_in?
  end

  def help
  end
end
