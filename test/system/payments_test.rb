require "application_system_test_case"

class PaymentsTest < ApplicationSystemTestCase
  setup do
    @payment = payments(:one)
  end

  test "visiting the index" do
    visit payments_url
    assert_selector "h1", text: "Payments"
  end

  test "creating a Payment" do
    visit payments_url
    click_on "New Payment"

    fill_in "Amount", with: @payment.amount
    fill_in "Description", with: @payment.description
    fill_in "Payer city", with: @payment.payer_city
    fill_in "Payer name", with: @payment.payer_name
    fill_in "Payer phone", with: @payment.payer_phone
    click_on "Create Payment"

    assert_text "Payment was successfully created"
    click_on "Back"
  end

  test "updating a Payment" do
    visit payments_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @payment.amount
    fill_in "Description", with: @payment.description
    fill_in "Payer city", with: @payment.payer_city
    fill_in "Payer name", with: @payment.payer_name
    fill_in "Payer phone", with: @payment.payer_phone
    click_on "Update Payment"

    assert_text "Payment was successfully updated"
    click_on "Back"
  end

  test "destroying a Payment" do
    visit payments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Payment was successfully destroyed"
  end
end
