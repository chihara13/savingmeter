require "application_system_test_case"

class SavingItemsTest < ApplicationSystemTestCase
  setup do
    @saving_item = saving_items(:one)
  end

  test "visiting the index" do
    visit saving_items_url
    assert_selector "h1", text: "Saving Items"
  end

  test "creating a Saving item" do
    visit saving_items_url
    click_on "New Saving Item"

    fill_in "Amount", with: @saving_item.amount
    fill_in "Categoryid", with: @saving_item.categoryid
    fill_in "Date", with: @saving_item.date
    fill_in "Itemname", with: @saving_item.itemname
    fill_in "Memo", with: @saving_item.memo
    click_on "Create Saving item"

    assert_text "Saving item was successfully created"
    click_on "Back"
  end

  test "updating a Saving item" do
    visit saving_items_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @saving_item.amount
    fill_in "Categoryid", with: @saving_item.categoryid
    fill_in "Date", with: @saving_item.date
    fill_in "Itemname", with: @saving_item.itemname
    fill_in "Memo", with: @saving_item.memo
    click_on "Update Saving item"

    assert_text "Saving item was successfully updated"
    click_on "Back"
  end

  test "destroying a Saving item" do
    visit saving_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Saving item was successfully destroyed"
  end
end
