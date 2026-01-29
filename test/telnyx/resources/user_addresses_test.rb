# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::UserAddressesTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.user_addresses.create(
        business_name: "Toy-O'Kon",
        country_code: "US",
        first_name: "Alfred",
        last_name: "Foster",
        locality: "Austin",
        street_address: "600 Congress Avenue"
      )

    assert_pattern do
      response => Telnyx::Models::UserAddressCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::UserAddress | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.user_addresses.retrieve("id")

    assert_pattern do
      response => Telnyx::Models::UserAddressRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::UserAddress | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.user_addresses.list

    assert_pattern do
      response => Telnyx::Internal::DefaultPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::UserAddress
    end

    assert_pattern do
      row => {
        id: String | nil,
        administrative_area: String | nil,
        borough: String | nil,
        business_name: String | nil,
        country_code: String | nil,
        created_at: String | nil,
        customer_reference: String | nil,
        extended_address: String | nil,
        first_name: String | nil,
        last_name: String | nil,
        locality: String | nil,
        neighborhood: String | nil,
        phone_number: String | nil,
        postal_code: String | nil,
        record_type: String | nil,
        street_address: String | nil,
        updated_at: String | nil
      }
    end
  end
end
