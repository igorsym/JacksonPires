require "application_system_test_case"

class ModeradorsTest < ApplicationSystemTestCase
  setup do
    @moderador = moderadors(:one)
  end

  test "visiting the index" do
    visit moderadors_url
    assert_selector "h1", text: "Moderadors"
  end

  test "creating a Moderador" do
    visit moderadors_url
    click_on "New Moderador"

    fill_in "Email", with: @moderador.email
    fill_in "Nome", with: @moderador.nome
    fill_in "Sal", with: @moderador.sal
    fill_in "Senha", with: @moderador.senha
    click_on "Create Moderador"

    assert_text "Moderador was successfully created"
    click_on "Back"
  end

  test "updating a Moderador" do
    visit moderadors_url
    click_on "Edit", match: :first

    fill_in "Email", with: @moderador.email
    fill_in "Nome", with: @moderador.nome
    fill_in "Sal", with: @moderador.sal
    fill_in "Senha", with: @moderador.senha
    click_on "Update Moderador"

    assert_text "Moderador was successfully updated"
    click_on "Back"
  end

  test "destroying a Moderador" do
    visit moderadors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Moderador was successfully destroyed"
  end
end
