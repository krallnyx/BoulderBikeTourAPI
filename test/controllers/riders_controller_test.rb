require 'test_helper'

class RidersControllerTest < ActionDispatch::IntegrationTest
  test "test index" do
    get "/api/v1/riders"
    assert_response :success
  end

  test "test reading from database" do
    @rider1 = Rider.first
    puts @rider1.id
    assert_equal(2 , Rider.count)
    assert_equal("Second", @rider1.firstname)
    assert_equal("Test", @rider1.lastname)
    assert_equal("New York", @rider1.city)
    assert_equal("NY", @rider1.state)
  end
end
