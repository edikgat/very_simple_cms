require 'test_helper'

module VerySimpleCms
  class MercuryControllerTest < ActionController::TestCase
    test "should get update" do
      get :update
      assert_response :success
    end

  end
end
