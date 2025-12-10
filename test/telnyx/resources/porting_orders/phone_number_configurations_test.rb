# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::PortingOrders::PhoneNumberConfigurationsTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

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
    skip("Prism tests are disabled")

    response = @telnyx.porting_orders.phone_number_configurations.list

    assert_pattern do
      response => Telnyx::Models::PortingOrders::PhoneNumberConfigurationListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::PortingOrders::PhoneNumberConfigurationListResponse::Data]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end
end
