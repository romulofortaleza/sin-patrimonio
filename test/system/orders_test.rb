require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
  setup do
    @order = orders(:one)
  end

  test "visiting the index" do
    visit orders_url
    assert_selector "h1", text: "Orders"
  end

  test "creating a Order" do
    visit orders_url
    click_on "New Order"

    fill_in "Address", with: @order.address
    fill_in "Authorization", with: @order.authorization
    fill_in "Called", with: @order.called
    fill_in "Cause", with: @order.cause
    fill_in "Contact", with: @order.contact
    fill_in "Deliberation", with: @order.deliberation
    fill_in "Description", with: @order.description
    fill_in "Devolution", with: @order.devolution
    fill_in "Execution availability", with: @order.execution_availability
    fill_in "Feedback", with: @order.feedback
    fill_in "Hour", with: @order.hour
    fill_in "Insertion routing", with: @order.insertion_routing
    fill_in "Link", with: @order.link
    fill_in "Measure", with: @order.measure
    fill_in "Medium", with: @order.medium
    fill_in "Modality", with: @order.modality
    fill_in "Number", with: @order.number
    fill_in "Operational", with: @order.operational
    fill_in "Operator", with: @order.operator
    fill_in "Order record", with: @order.order_record
    fill_in "Os date", with: @order.os_date
    fill_in "Priority", with: @order.priority
    fill_in "Ranking", with: @order.ranking
    fill_in "Reporting routing", with: @order.reporting_routing
    fill_in "Request date", with: @order.request_date
    fill_in "Responsible", with: @order.responsible
    fill_in "Route", with: @order.route
    fill_in "Scope", with: @order.scope
    fill_in "Sector", with: @order.sector
    fill_in "Status", with: @order.status
    fill_in "Temporal lapse", with: @order.temporal_lapse
    fill_in "Unity", with: @order.unity
    fill_in "Vehicle", with: @order.vehicle
    click_on "Create Order"

    assert_text "Order was successfully created"
    click_on "Back"
  end

  test "updating a Order" do
    visit orders_url
    click_on "Edit", match: :first

    fill_in "Address", with: @order.address
    fill_in "Authorization", with: @order.authorization
    fill_in "Called", with: @order.called
    fill_in "Cause", with: @order.cause
    fill_in "Contact", with: @order.contact
    fill_in "Deliberation", with: @order.deliberation
    fill_in "Description", with: @order.description
    fill_in "Devolution", with: @order.devolution
    fill_in "Execution availability", with: @order.execution_availability
    fill_in "Feedback", with: @order.feedback
    fill_in "Hour", with: @order.hour
    fill_in "Insertion routing", with: @order.insertion_routing
    fill_in "Link", with: @order.link
    fill_in "Measure", with: @order.measure
    fill_in "Medium", with: @order.medium
    fill_in "Modality", with: @order.modality
    fill_in "Number", with: @order.number
    fill_in "Operational", with: @order.operational
    fill_in "Operator", with: @order.operator
    fill_in "Order record", with: @order.order_record
    fill_in "Os date", with: @order.os_date
    fill_in "Priority", with: @order.priority
    fill_in "Ranking", with: @order.ranking
    fill_in "Reporting routing", with: @order.reporting_routing
    fill_in "Request date", with: @order.request_date
    fill_in "Responsible", with: @order.responsible
    fill_in "Route", with: @order.route
    fill_in "Scope", with: @order.scope
    fill_in "Sector", with: @order.sector
    fill_in "Status", with: @order.status
    fill_in "Temporal lapse", with: @order.temporal_lapse
    fill_in "Unity", with: @order.unity
    fill_in "Vehicle", with: @order.vehicle
    click_on "Update Order"

    assert_text "Order was successfully updated"
    click_on "Back"
  end

  test "destroying a Order" do
    visit orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order was successfully destroyed"
  end
end
