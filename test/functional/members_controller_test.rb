require 'test_helper'

class MembersControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Member.first
    assert_template 'show'
  end
end
