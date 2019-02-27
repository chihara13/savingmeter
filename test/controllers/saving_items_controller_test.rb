require 'test_helper'

class SavingItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @saving_item = saving_items(:one)
  end

  test "should get index" do
    get saving_items_url
    assert_response :success
  end

  test "should get new" do
    get new_saving_item_url
    assert_response :success
  end

  test "should create saving_item" do
    assert_difference('SavingItem.count') do
      post saving_items_url, params: { saving_item: { amount: @saving_item.amount, category_id: @saving_item.category_id, content: @saving_item.content, date: @saving_item.date, item_name: @saving_item.item_name, user_id: @saving_item.user_id } }
    end

    assert_redirected_to saving_item_url(SavingItem.last)
  end

  test "should show saving_item" do
    get saving_item_url(@saving_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_saving_item_url(@saving_item)
    assert_response :success
  end

  test "should update saving_item" do
    patch saving_item_url(@saving_item), params: { saving_item: { amount: @saving_item.amount, category_id: @saving_item.category_id, content: @saving_item.content, date: @saving_item.date, item_name: @saving_item.item_name, user_id: @saving_item.user_id } }
    assert_redirected_to saving_item_url(@saving_item)
  end

  test "should destroy saving_item" do
    assert_difference('SavingItem.count', -1) do
      delete saving_item_url(@saving_item)
    end

    assert_redirected_to saving_items_url
  end
end
