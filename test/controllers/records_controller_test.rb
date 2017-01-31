require 'test_helper'

class RecordsControllerTest < ActionController::TestCase
  setup do
    @record = records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create record" do
    assert_difference('Record.count') do
      post :create, record: { a_date: @record.a_date, a_id: @record.a_id, a_paid: @record.a_paid, c_address: @record.c_address, c_fn: @record.c_fn, c_id: @record.c_id, c_ln: @record.c_ln, c_state: @record.c_state, c_zip: @record.c_zip, i_id: @record.i_id, i_order_date: @record.i_order_date, i_order_size: @record.i_order_size, i_vendor_email: @record.i_vendor_email, i_vendor_fn: @record.i_vendor_fn, i_vendor_ln: @record.i_vendor_ln, p_date: @record.p_date, p_descript: @record.p_descript, p_instock: @record.p_instock, p_num: @record.p_num, p_price: @record.p_price, p_qoh: @record.p_qoh, p_sold: @record.p_sold }
    end

    assert_redirected_to record_path(assigns(:record))
  end

  test "should show record" do
    get :show, id: @record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @record
    assert_response :success
  end

  test "should update record" do
    patch :update, id: @record, record: { a_date: @record.a_date, a_id: @record.a_id, a_paid: @record.a_paid, c_address: @record.c_address, c_fn: @record.c_fn, c_id: @record.c_id, c_ln: @record.c_ln, c_state: @record.c_state, c_zip: @record.c_zip, i_id: @record.i_id, i_order_date: @record.i_order_date, i_order_size: @record.i_order_size, i_vendor_email: @record.i_vendor_email, i_vendor_fn: @record.i_vendor_fn, i_vendor_ln: @record.i_vendor_ln, p_date: @record.p_date, p_descript: @record.p_descript, p_instock: @record.p_instock, p_num: @record.p_num, p_price: @record.p_price, p_qoh: @record.p_qoh, p_sold: @record.p_sold }
    assert_redirected_to record_path(assigns(:record))
  end

  test "should destroy record" do
    assert_difference('Record.count', -1) do
      delete :destroy, id: @record
    end

    assert_redirected_to records_path
  end
end
