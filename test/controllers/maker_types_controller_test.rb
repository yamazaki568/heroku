require 'test_helper'

class MakerTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @maker_type = maker_types(:one)
  end

  test "should get index" do
    get maker_types_url
    assert_response :success
  end

  test "should get new" do
    get new_maker_type_url
    assert_response :success
  end

  test "should create maker_type" do
    assert_difference('MakerType.count') do
      post maker_types_url, params: { maker_type: { maker_id: @maker_type.maker_id, type_id: @maker_type.type_id } }
    end

    assert_redirected_to maker_type_url(MakerType.last)
  end

  test "should show maker_type" do
    get maker_type_url(@maker_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_maker_type_url(@maker_type)
    assert_response :success
  end

  test "should update maker_type" do
    patch maker_type_url(@maker_type), params: { maker_type: { maker_id: @maker_type.maker_id, type_id: @maker_type.type_id } }
    assert_redirected_to maker_type_url(@maker_type)
  end

  test "should destroy maker_type" do
    assert_difference('MakerType.count', -1) do
      delete maker_type_url(@maker_type)
    end

    assert_redirected_to maker_types_url
  end
end
