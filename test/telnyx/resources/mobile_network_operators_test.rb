# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::MobileNetworkOperatorsTest < Telnyx::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.mobile_network_operators.list

    assert_pattern do
      response => Telnyx::Internal::DefaultPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::MobileNetworkOperatorListResponse
    end

    assert_pattern do
      row => {
        id: String | nil,
        country_code: String | nil,
        mcc: String | nil,
        mnc: String | nil,
        name: String | nil,
        network_preferences_enabled: Telnyx::Internal::Type::Boolean | nil,
        record_type: String | nil,
        tadig: String | nil
      }
    end
  end
end
