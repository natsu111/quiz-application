class QuizzesController < ApplicationController
    before_action :logged_in_user, only: [:create, :destroy]
    before_action :correct_user,   only: :destroy

  def create
    @quiz = current_user.quizzes.build(quiz_params)
    if @quiz.save
      flash[:success] = "Quiz created!"
      redirect_to root_url
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
    @quiz.destroy
    flash[:success] = "Quiz deleted"
    redirect_to request.referrer || root_url
  end

  private

    def quiz_params
      params.require(:quiz).permit(:content, :answer)
    end
    
    def correct_user
      @quiz = current_user.quizzes.find_by(id: params[:id])
      redirect_to root_url if @quiz.nil?
    end
end
