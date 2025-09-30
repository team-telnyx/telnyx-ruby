# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::ExternalConnections::PhoneNumbersTest < Telnyx::Test::ResourceTest
  def test_retrieve_required_params
    skip("Prism tests are disabled")

    response = @telnyx.external_connections.phone_numbers.retrieve("1234567889", id: "id")

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
    skip("Prism tests are disabled")

    response = @telnyx.external_connections.phone_numbers.update("1234567889", id: "id")

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
    skip("Prism tests are disabled")

    response = @telnyx.external_connections.phone_numbers.list("id")

    assert_pattern do
      response => Telnyx::Models::ExternalConnections::PhoneNumberListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::ExternalConnections::ExternalConnectionPhoneNumber]) | nil,
        meta: Telnyx::ExternalVoiceIntegrationsPaginationMeta | nil
      }
    end
  end
end
