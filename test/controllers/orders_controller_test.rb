require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get orders_url
    assert_response :success
  end

  test "should get new" do
    get new_order_url
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post orders_url, params: { order: { address: @order.address, authorization: @order.authorization, called: @order.called, cause: @order.cause, contact: @order.contact, deliberation: @order.deliberation, description: @order.description, devolution: @order.devolution, execution_availability: @order.execution_availability, feedback: @order.feedback, hour: @order.hour, insertion_routing: @order.insertion_routing, link: @order.link, measure: @order.measure, medium: @order.medium, modality: @order.modality, number: @order.number, operational: @order.operational, operator: @order.operator, order_record: @order.order_record, os_date: @order.os_date, priority: @order.priority, ranking: @order.ranking, reporting_routing: @order.reporting_routing, request_date: @order.request_date, responsible: @order.responsible, route: @order.route, scope: @order.scope, sector: @order.sector, status: @order.status, temporal_lapse: @order.temporal_lapse, unity: @order.unity, vehicle: @order.vehicle } }
    end

    assert_redirected_to order_url(Order.last)
  end

  test "should show order" do
    get order_url(@order)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_url(@order)
    assert_response :success
  end

  test "should update order" do
    patch order_url(@order), params: { order: { address: @order.address, authorization: @order.authorization, called: @order.called, cause: @order.cause, contact: @order.contact, deliberation: @order.deliberation, description: @order.description, devolution: @order.devolution, execution_availability: @order.execution_availability, feedback: @order.feedback, hour: @order.hour, insertion_routing: @order.insertion_routing, link: @order.link, measure: @order.measure, medium: @order.medium, modality: @order.modality, number: @order.number, operational: @order.operational, operator: @order.operator, order_record: @order.order_record, os_date: @order.os_date, priority: @order.priority, ranking: @order.ranking, reporting_routing: @order.reporting_routing, request_date: @order.request_date, responsible: @order.responsible, route: @order.route, scope: @order.scope, sector: @order.sector, status: @order.status, temporal_lapse: @order.temporal_lapse, unity: @order.unity, vehicle: @order.vehicle } }
    assert_redirected_to order_url(@order)
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete order_url(@order)
    end

    assert_redirected_to orders_url
  end
end
