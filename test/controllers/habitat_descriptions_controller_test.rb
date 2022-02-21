require "test_helper"

class HabitatDescriptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @habitat_description = habitat_descriptions(:one)
  end

  test "should get index" do
    get habitat_descriptions_url
    assert_response :success
  end

  test "should get new" do
    get new_habitat_description_url
    assert_response :success
  end

  test "should create habitat_description" do
    assert_difference("HabitatDescription.count") do
      post habitat_descriptions_url, params: { habitat_description: { habitat_description: @habitat_description.habitat_description, habitat_type: @habitat_description.habitat_type } }
    end

    assert_redirected_to habitat_description_url(HabitatDescription.last)
  end

  test "should show habitat_description" do
    get habitat_description_url(@habitat_description)
    assert_response :success
  end

  test "should get edit" do
    get edit_habitat_description_url(@habitat_description)
    assert_response :success
  end

  test "should update habitat_description" do
    patch habitat_description_url(@habitat_description), params: { habitat_description: { habitat_description: @habitat_description.habitat_description, habitat_type: @habitat_description.habitat_type } }
    assert_redirected_to habitat_description_url(@habitat_description)
  end

  test "should destroy habitat_description" do
    assert_difference("HabitatDescription.count", -1) do
      delete habitat_description_url(@habitat_description)
    end

    assert_redirected_to habitat_descriptions_url
  end
end
