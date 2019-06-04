class QuizzesController < ApplicationController
    before_action :logged_in_user, only: [:create, :destroy]

  def create
    @quiz = current_user.quizzes.build(quiz_params)
    if @quiz.save
      flash[:success] = "Quiz created!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end

  private

    def quiz_params
      params.require(:mquiz).permit(:content, :answer)
    end
end
