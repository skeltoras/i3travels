require 'test_helper'

class CustomersControllerTest < ActionController::TestCase
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post :create, customer: { customer_city: @customer.customer_city, customer_contact: @customer.customer_contact, customer_country: @customer.customer_country, customer_email: @customer.customer_email, customer_homepage: @customer.customer_homepage, customer_is_active: @customer.customer_is_active, customer_name: @customer.customer_name, customer_plz: @customer.customer_plz, customer_show_email: @customer.customer_show_email, customer_state: @customer.customer_state, customer_street: @customer.customer_street, customer_telefax: @customer.customer_telefax, customer_telephone: @customer.customer_telephone, user_id: @customer.user_id }
    end

    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should show customer" do
    get :show, id: @customer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer
    assert_response :success
  end

  test "should update customer" do
    patch :update, id: @customer, customer: { customer_city: @customer.customer_city, customer_contact: @customer.customer_contact, customer_country: @customer.customer_country, customer_email: @customer.customer_email, customer_homepage: @customer.customer_homepage, customer_is_active: @customer.customer_is_active, customer_name: @customer.customer_name, customer_plz: @customer.customer_plz, customer_show_email: @customer.customer_show_email, customer_state: @customer.customer_state, customer_street: @customer.customer_street, customer_telefax: @customer.customer_telefax, customer_telephone: @customer.customer_telephone, user_id: @customer.user_id }
    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete :destroy, id: @customer
    end

    assert_redirected_to customers_path
  end
end
