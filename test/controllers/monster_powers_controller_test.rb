require 'test_helper'

class MonsterPowersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get monster_powers_new_url
    assert_response :success
  end

end
