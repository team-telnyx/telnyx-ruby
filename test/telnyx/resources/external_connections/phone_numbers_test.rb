# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::ExternalConnections::PhoneNumbersTest < Telnyx::Test::ResourceTest
  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.external_connections.phone_numbers.retrieve("1234567889", id: "1293384261075731499")

    assert_pattern do
      response => Telnyx::Models::ExternalConnections::PhoneNumberRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::ExternalConnections::ExternalConnectionPhoneNumber | nil
      }
    end
  end

  def test_update_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.external_connections.phone_numbers.update("1234567889", id: "1293384261075731499")

    assert_pattern do
      response => Telnyx::Models::ExternalConnections::PhoneNumberUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::ExternalConnections::ExternalConnectionPhoneNumber | nil
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.external_connections.phone_numbers.list("1293384261075731499")

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::ExternalConnections::ExternalConnectionPhoneNumber
    end

    assert_pattern do
      row => {
        acquired_capabilities: ^(Telnyx::Internal::Type::ArrayOf[enum: Telnyx::ExternalConnections::ExternalConnectionPhoneNumber::AcquiredCapability]) | nil,
        civic_address_id: String | nil,
        displayed_country_code: String | nil,
        location_id: String | nil,
        number_id: String | nil,
        telephone_number: String | nil,
        ticket_id: String | nil
      }
    end
  end
end
