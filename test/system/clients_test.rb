require "application_system_test_case"

class ClientsTest < ApplicationSystemTestCase
  setup do
    @client = clients(:one)
  end

  test "visiting the index" do
    visit clients_url
    assert_selector "h1", text: "Clients"
  end

  test "creating a Client" do
    visit clients_url
    click_on "New Client"

    fill_in "Address", with: @client.Address
    fill_in "Current Weight", with: @client.Current_weight
    fill_in "Email", with: @client.Email
    fill_in "Gender", with: @client.Gender
    fill_in "Height", with: @client.Height
    fill_in "Name", with: @client.Name
    click_on "Create Client"

    assert_text "Client was successfully created"
    click_on "Back"
  end

  test "updating a Client" do
    visit clients_url
    click_on "Edit", match: :first

    fill_in "Address", with: @client.Address
    fill_in "Current Weight", with: @client.Current_weight
    fill_in "Email", with: @client.Email
    fill_in "Gender", with: @client.Gender
    fill_in "Height", with: @client.Height
    fill_in "Name", with: @client.Name
    click_on "Update Client"

    assert_text "Client was successfully updated"
    click_on "Back"
  end

  test "destroying a Client" do
    visit clients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Client was successfully destroyed"
  end
end
