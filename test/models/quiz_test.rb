require 'test_helper'

class QuizTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = users(:michael)
    # このコードは慣習的に正しくない
    @quiz = @user.quizzes.build(content: "Lorem ipsum", answer: "Lorem ipsum")
  end

  test "should be valid" do
    assert @quiz.valid?
  end

  test "user id should be present" do
    @quiz.user_id = nil
    assert_not @quiz.valid?
  end
  
   test "content should be present" do
    @quiz.content = "   "
    assert_not @quiz.valid?
  end

  test "content should be at most 140 characters" do
    @quiz.content = "a" * 141
    assert_not @quiz.valid?
  end
  
  test "answer should be present" do
    @quiz.answer = "   "
    assert_not @quiz.valid?
  end

  test "answer should be at most 140 characters" do
    @quiz.answer = "a" * 141
    assert_not @quiz.valid?
  end
  
   test "order should be most recent first" do
    assert_equal quizzes(:most_recent), Quiz.first
  end
  
  
end
