# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::SipRegistrationStatusTest < Telnyx::Test::ResourceTest
  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.sip_registration_status.retrieve(
        connection_id: "connection_id",
        credential_type: :uac_external_credential
      )

    assert_pattern do
      response => Telnyx::Models::SipRegistrationStatusRetrieveResponse
    end

    assert_pattern do
      response => {
        connection_id: String | nil,
        connection_name: String | nil,
        credential_type: Telnyx::Models::SipRegistrationStatusRetrieveResponse::CredentialType | nil,
        credential_username: String | nil,
        last_registration_response: String | nil,
        registered: Telnyx::Internal::Type::Boolean | nil,
        sip_registration_details: Telnyx::Models::SipRegistrationStatusRetrieveResponse::SipRegistrationDetails | nil,
        sip_registration_status: Telnyx::Models::SipRegistrationStatusRetrieveResponse::SipRegistrationStatus | nil
      }
    end
  end
end
