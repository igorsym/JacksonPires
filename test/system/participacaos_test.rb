require "application_system_test_case"

class ParticipacaosTest < ApplicationSystemTestCase
  setup do
    @participacao = participacaos(:one)
  end

  test "visiting the index" do
    visit participacaos_url
    assert_selector "h1", text: "Participacaos"
  end

  test "creating a Participacao" do
    visit participacaos_url
    click_on "New Participacao"

    fill_in "Is Host", with: @participacao.is_host
    click_on "Create Participacao"

    assert_text "Participacao was successfully created"
    click_on "Back"
  end

  test "updating a Participacao" do
    visit participacaos_url
    click_on "Edit", match: :first

    fill_in "Is Host", with: @participacao.is_host
    click_on "Update Participacao"

    assert_text "Participacao was successfully updated"
    click_on "Back"
  end

  test "destroying a Participacao" do
    visit participacaos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Participacao was successfully destroyed"
  end
end
