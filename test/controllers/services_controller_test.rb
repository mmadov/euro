require 'test_helper'

class ServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @service = services(:one)
  end

  test "should get index" do
    get services_url
    assert_response :success
  end

  test "should get new" do
    get new_service_url
    assert_response :success
  end

  test "should create service" do
    assert_difference('Service.count') do
      post services_url, params: { service: { about_az: @service.about_az, about_en: @service.about_en, about_ru: @service.about_ru, desc_az: @service.desc_az, desc_en: @service.desc_en, desc_ru: @service.desc_ru, img: @service.img, name_az: @service.name_az, name_en: @service.name_en, name_ru: @service.name_ru } }
    end

    assert_redirected_to service_url(Service.last)
  end

  test "should show service" do
    get service_url(@service)
    assert_response :success
  end

  test "should get edit" do
    get edit_service_url(@service)
    assert_response :success
  end

  test "should update service" do
    patch service_url(@service), params: { service: { about_az: @service.about_az, about_en: @service.about_en, about_ru: @service.about_ru, desc_az: @service.desc_az, desc_en: @service.desc_en, desc_ru: @service.desc_ru, img: @service.img, name_az: @service.name_az, name_en: @service.name_en, name_ru: @service.name_ru } }
    assert_redirected_to service_url(@service)
  end

  test "should destroy service" do
    assert_difference('Service.count', -1) do
      delete service_url(@service)
    end

    assert_redirected_to services_url
  end
end
