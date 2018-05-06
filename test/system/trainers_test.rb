require "application_system_test_case"

class TrainersTest < ApplicationSystemTestCase
  setup do
    @trainer = trainers(:one)
  end

  test "visiting the index" do
    visit trainers_url
    assert_selector "h1", text: "Trainers"
  end

  test "creating a Trainer" do
    visit trainers_url
    click_on "New Trainer"

    fill_in "Address", with: @trainer.Address
    fill_in "Current Weight", with: @trainer.Current_weight
    fill_in "Email", with: @trainer.Email
    fill_in "Gender", with: @trainer.Gender
    fill_in "Height", with: @trainer.Height
    fill_in "Name", with: @trainer.Name
    click_on "Create Trainer"

    assert_text "Trainer was successfully created"
    click_on "Back"
  end

  test "updating a Trainer" do
    visit trainers_url
    click_on "Edit", match: :first

    fill_in "Address", with: @trainer.Address
    fill_in "Current Weight", with: @trainer.Current_weight
    fill_in "Email", with: @trainer.Email
    fill_in "Gender", with: @trainer.Gender
    fill_in "Height", with: @trainer.Height
    fill_in "Name", with: @trainer.Name
    click_on "Update Trainer"

    assert_text "Trainer was successfully updated"
    click_on "Back"
  end

  test "destroying a Trainer" do
    visit trainers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trainer was successfully destroyed"
  end
end
