require 'test_helper'

class QuizzesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  # def setup
  #   @quiz = quizzes(:orange)
  # end

  # test "should redirect create when not logged in" do
  #   assert_no_difference 'Quiz.count' do
  #     post quizzes_path, params: { quiz: { content: "Lorem ipsum" } }
  #   end
  #   assert_redirected_to login_url
  # end

  # test "should redirect destroy when not logged in" do
  #   assert_no_difference 'Quiz.count' do
  #     delete quiz_path(@quiz)
  #   end
  #   assert_redirected_to login_url
  # end

  # test "should redirect destroy for wrong quiz" do
  #   log_in_as(users(:michael))
  #   quiz = quizzes(:ants)
  #   assert_no_difference 'Quiz.count' do
  #     delete quiz_path(quiz)
  #   end
  #   assert_redirected_to root_url
  # end
  
  # test "should redirect destroy for wrong quiz" do
  #   log_in_as(users(:michael))
  #   quiz = quizzes(:ants)
  #   assert_no_difference 'Quiz.count' do
  #     delete quiz_path(quizzes)
  #   end
  #   assert_redirected_to root_url
  # end
end
