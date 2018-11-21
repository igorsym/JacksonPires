require "application_system_test_case"

class AvaliacaosTest < ApplicationSystemTestCase
  setup do
    @avaliacao = avaliacaos(:one)
  end

  test "visiting the index" do
    visit avaliacaos_url
    assert_selector "h1", text: "Avaliacaos"
  end

  test "creating a Avaliacao" do
    visit avaliacaos_url
    click_on "New Avaliacao"

    fill_in "Comentario", with: @avaliacao.comentario
    fill_in "Estrelas", with: @avaliacao.estrelas
    click_on "Create Avaliacao"

    assert_text "Avaliacao was successfully created"
    click_on "Back"
  end

  test "updating a Avaliacao" do
    visit avaliacaos_url
    click_on "Edit", match: :first

    fill_in "Comentario", with: @avaliacao.comentario
    fill_in "Estrelas", with: @avaliacao.estrelas
    click_on "Update Avaliacao"

    assert_text "Avaliacao was successfully updated"
    click_on "Back"
  end

  test "destroying a Avaliacao" do
    visit avaliacaos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Avaliacao was successfully destroyed"
  end
end
