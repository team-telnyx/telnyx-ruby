# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::SipRegistrationStatusTest < Telnyx::Test::ResourceTest
  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.sip_registration_status.list(credential_type: :uac_external_credential)

    assert_pattern do
      response => Telnyx::Models::SipRegistrationStatusListResponse
    end

    assert_pattern do
      response => {
        connection_id: String | nil,
        connection_name: String | nil,
        credential_type: Telnyx::Models::SipRegistrationStatusListResponse::CredentialType | nil,
        credential_username: String | nil,
        last_registration_response: String | nil,
        registered: Telnyx::Internal::Type::Boolean | nil,
        sip_registration_details: Telnyx::Models::SipRegistrationStatusListResponse::SipRegistrationDetails | nil,
        sip_registration_status: Telnyx::Models::SipRegistrationStatusListResponse::SipRegistrationStatus | nil
      }
    end
  end
end
