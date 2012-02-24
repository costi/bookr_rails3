require 'test_helper'

class LibraryCardsControllerTest < ActionController::TestCase
  setup do
    @library_card = library_cards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:library_cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create library_card" do
    assert_difference('LibraryCard.count') do
      post :create, library_card: @library_card.attributes
    end

    assert_redirected_to library_card_path(assigns(:library_card))
  end

  test "should show library_card" do
    get :show, id: @library_card.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @library_card.to_param
    assert_response :success
  end

  test "should update library_card" do
    put :update, id: @library_card.to_param, library_card: @library_card.attributes
    assert_redirected_to library_card_path(assigns(:library_card))
  end

  test "should destroy library_card" do
    assert_difference('LibraryCard.count', -1) do
      delete :destroy, id: @library_card.to_param
    end

    assert_redirected_to library_cards_path
  end
end
