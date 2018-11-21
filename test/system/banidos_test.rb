require "application_system_test_case"

class BanidosTest < ApplicationSystemTestCase
  setup do
    @banido = banidos(:one)
  end

  test "visiting the index" do
    visit banidos_url
    assert_selector "h1", text: "Banidos"
  end

  test "creating a Banido" do
    visit banidos_url
    click_on "New Banido"

    fill_in "Permanente", with: @banido.permanente
    fill_in "Termino", with: @banido.termino
    click_on "Create Banido"

    assert_text "Banido was successfully created"
    click_on "Back"
  end

  test "updating a Banido" do
    visit banidos_url
    click_on "Edit", match: :first

    fill_in "Permanente", with: @banido.permanente
    fill_in "Termino", with: @banido.termino
    click_on "Update Banido"

    assert_text "Banido was successfully updated"
    click_on "Back"
  end

  test "destroying a Banido" do
    visit banidos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Banido was successfully destroyed"
  end
end
