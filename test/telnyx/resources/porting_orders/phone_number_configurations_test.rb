# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::PortingOrders::PhoneNumberConfigurationsTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Mock server tests are disabled")

    response = @telnyx.porting_orders.phone_number_configurations.create

    assert_pattern do
      response => Telnyx::Models::PortingOrders::PhoneNumberConfigurationCreateResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::PortingOrders::PhoneNumberConfigurationCreateResponse::Data]) | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.porting_orders.phone_number_configurations.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::PortingOrders::PhoneNumberConfigurationListResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        created_at: Time | nil,
        porting_phone_number_id: String | nil,
        record_type: String | nil,
        updated_at: Time | nil,
        user_bundle_id: String | nil
      }
    end
  end
end
