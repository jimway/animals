require "application_system_test_case"

class HabitatDescriptionsTest < ApplicationSystemTestCase
  setup do
    @habitat_description = habitat_descriptions(:one)
  end

  test "visiting the index" do
    visit habitat_descriptions_url
    assert_selector "h1", text: "Habitat descriptions"
  end

  test "should create habitat description" do
    visit habitat_descriptions_url
    click_on "New habitat description"

    fill_in "Habitat description", with: @habitat_description.habitat_description
    fill_in "Habitat type", with: @habitat_description.habitat_type
    click_on "Create Habitat description"

    assert_text "Habitat description was successfully created"
    click_on "Back"
  end

  test "should update Habitat description" do
    visit habitat_description_url(@habitat_description)
    click_on "Edit this habitat description", match: :first

    fill_in "Habitat description", with: @habitat_description.habitat_description
    fill_in "Habitat type", with: @habitat_description.habitat_type
    click_on "Update Habitat description"

    assert_text "Habitat description was successfully updated"
    click_on "Back"
  end

  test "should destroy Habitat description" do
    visit habitat_description_url(@habitat_description)
    click_on "Destroy this habitat description", match: :first

    assert_text "Habitat description was successfully destroyed"
  end
end
