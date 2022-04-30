require "application_system_test_case"

class BloodsTest < ApplicationSystemTestCase
  setup do
    @blood = bloods(:one)
  end

  test "visiting the index" do
    visit bloods_url
    assert_selector "h1", text: "Bloods"
  end

  test "creating a Blood" do
    visit bloods_url
    click_on "New Blood"

    fill_in "Maxblood", with: @blood.maxblood
    fill_in "Minblood", with: @blood.minblood
    click_on "Create Blood"

    assert_text "Blood was successfully created"
    click_on "Back"
  end

  test "updating a Blood" do
    visit bloods_url
    click_on "Edit", match: :first

    fill_in "Maxblood", with: @blood.maxblood
    fill_in "Minblood", with: @blood.minblood
    click_on "Update Blood"

    assert_text "Blood was successfully updated"
    click_on "Back"
  end

  test "destroying a Blood" do
    visit bloods_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blood was successfully destroyed"
  end
end
