require 'test_helper'

class UsersProfileTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
   include ApplicationHelper

  def setup
    @user = users(:michael)
  end

  test "profile display" do
    get user_path(@user)
    assert_template 'users/show'
    assert_select 'title', full_title(@user.name)
    assert_select 'h1', text: @user.name
    assert_match @user.quizzes.count.to_s, response.body
    assert_select 'div.pagination'
    @user.quizzes.paginate(page: 1).each do |quiz|
      assert_match quiz.content, response.body
    end
  end
end
