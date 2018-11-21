require "application_system_test_case"

class SolicitacaosTest < ApplicationSystemTestCase
  setup do
    @solicitacao = solicitacaos(:one)
  end

  test "visiting the index" do
    visit solicitacaos_url
    assert_selector "h1", text: "Solicitacaos"
  end

  test "creating a Solicitacao" do
    visit solicitacaos_url
    click_on "New Solicitacao"

    click_on "Create Solicitacao"

    assert_text "Solicitacao was successfully created"
    click_on "Back"
  end

  test "updating a Solicitacao" do
    visit solicitacaos_url
    click_on "Edit", match: :first

    click_on "Update Solicitacao"

    assert_text "Solicitacao was successfully updated"
    click_on "Back"
  end

  test "destroying a Solicitacao" do
    visit solicitacaos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Solicitacao was successfully destroyed"
  end
end
