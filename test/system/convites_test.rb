require "application_system_test_case"

class ConvitesTest < ApplicationSystemTestCase
  setup do
    @convite = convites(:one)
  end

  test "visiting the index" do
    visit convites_url
    assert_selector "h1", text: "Convites"
  end

  test "creating a Convite" do
    visit convites_url
    click_on "New Convite"

    click_on "Create Convite"

    assert_text "Convite was successfully created"
    click_on "Back"
  end

  test "updating a Convite" do
    visit convites_url
    click_on "Edit", match: :first

    click_on "Update Convite"

    assert_text "Convite was successfully updated"
    click_on "Back"
  end

  test "destroying a Convite" do
    visit convites_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Convite was successfully destroyed"
  end
end
