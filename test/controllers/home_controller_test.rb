require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "節約メーター"
  end

  test "should get index" do
    get home_index_url
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

end
