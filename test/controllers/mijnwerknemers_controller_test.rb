require 'test_helper'

class MijnwerknemersControllerTest < ActionController::TestCase
  setup do
    @mijnwerknemer = mijnwerknemers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mijnwerknemers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mijnwerknemer" do
    assert_difference('Mijnwerknemer.count') do
      post :create, mijnwerknemer: { aandoening: @mijnwerknemer.aandoening, advies: @mijnwerknemer.advies }
    end

    assert_redirected_to mijnwerknemer_path(assigns(:mijnwerknemer))
  end

  test "should show mijnwerknemer" do
    get :show, id: @mijnwerknemer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mijnwerknemer
    assert_response :success
  end

  test "should update mijnwerknemer" do
    patch :update, id: @mijnwerknemer, mijnwerknemer: { aandoening: @mijnwerknemer.aandoening, advies: @mijnwerknemer.advies }
    assert_redirected_to mijnwerknemer_path(assigns(:mijnwerknemer))
  end

  test "should destroy mijnwerknemer" do
    assert_difference('Mijnwerknemer.count', -1) do
      delete :destroy, id: @mijnwerknemer
    end

    assert_redirected_to mijnwerknemers_path
  end
end
