require 'test_helper'

class SloganTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
test "should not save empty slogan" do
  slogan = Slogan.new
  assert_not slogan.save, "Saved the empty slogan"
end

test "should not save slogan with more than 50 chars" do
  slogan = Slogan.new
  slogan.lastname="Last"
  slogan.firstname="First"
  slogan.email="email@ema.il"
  slogan.slogan="test slogan with more than 50 characters in the database"
  assert_not slogan.save, "Saved the too long slogan"
end

end
