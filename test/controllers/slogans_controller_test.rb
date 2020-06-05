
require 'test_helper'

class SlogansControllerTest < ActionDispatch::IntegrationTest
#  test "test index" do
#    get "/api/v1/slogans"
#    assert_response :SUCCESS
#  end

  test "test reading from database" do
    @slogan = Slogan.first
    puts @slogan.id
    assert_equal(1 , Slogan.count)
    assert_equal("Second" , @slogan.firstname)
    assert_equal("Test" , @slogan.lastname)
    assert_equal("test@test.fr" , @slogan.email)
    assert_equal("This is the 2nd slogan for testing" , @slogan.slogan)
  end

  test "create slogan" do
  assert_difference('Slogan.count') do
    post "/api/v1/slogans", params: { firstname: 'Third', lastname: 'Test', email: 'email@email.em', slogan: 'test slogan3' } 
  end

  @slogan = Slogan.last
  assert_equal(2 , Slogan.count)
  assert_equal("Third", @slogan.firstname)
  assert_equal("Test", @slogan.lastname)
  assert_equal("email@email.em", @slogan.email)
  assert_equal("test slogan3", @slogan.slogan)
end
end