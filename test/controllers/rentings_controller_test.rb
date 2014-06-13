require 'test_helper'

class RentingsControllerTest < ActionController::TestCase
  setup do
    @renting = rentings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rentings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create renting" do
    assert_difference('Renting.count') do
      post :create, renting: { customer_id: @renting.customer_id, renting_calendar: @renting.renting_calendar, renting_calendar_end: @renting.renting_calendar_end, renting_calendar_start: @renting.renting_calendar_start, renting_cost: @renting.renting_cost, renting_cost_duration: @renting.renting_cost_duration, renting_country: @renting.renting_country, renting_display_offer: @renting.renting_display_offer, renting_form: @renting.renting_form, renting_gallery: @renting.renting_gallery, renting_header_picture: @renting.renting_header_picture, renting_header_slider: @renting.renting_header_slider, renting_location: @renting.renting_location, renting_min_duration: @renting.renting_min_duration, renting_object: @renting.renting_object, renting_object_longdesc: @renting.renting_object_longdesc, renting_object_shortdesc: @renting.renting_object_shortdesc, renting_region: @renting.renting_region, renting_video: @renting.renting_video }
    end

    assert_redirected_to renting_path(assigns(:renting))
  end

  test "should show renting" do
    get :show, id: @renting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @renting
    assert_response :success
  end

  test "should update renting" do
    patch :update, id: @renting, renting: { customer_id: @renting.customer_id, renting_calendar: @renting.renting_calendar, renting_calendar_end: @renting.renting_calendar_end, renting_calendar_start: @renting.renting_calendar_start, renting_cost: @renting.renting_cost, renting_cost_duration: @renting.renting_cost_duration, renting_country: @renting.renting_country, renting_display_offer: @renting.renting_display_offer, renting_form: @renting.renting_form, renting_gallery: @renting.renting_gallery, renting_header_picture: @renting.renting_header_picture, renting_header_slider: @renting.renting_header_slider, renting_location: @renting.renting_location, renting_min_duration: @renting.renting_min_duration, renting_object: @renting.renting_object, renting_object_longdesc: @renting.renting_object_longdesc, renting_object_shortdesc: @renting.renting_object_shortdesc, renting_region: @renting.renting_region, renting_video: @renting.renting_video }
    assert_redirected_to renting_path(assigns(:renting))
  end

  test "should destroy renting" do
    assert_difference('Renting.count', -1) do
      delete :destroy, id: @renting
    end

    assert_redirected_to rentings_path
  end
end
