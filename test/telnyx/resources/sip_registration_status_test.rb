# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::SipRegistrationStatusTest < Telnyx::Test::ResourceTest
  def test_retrieve_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.sip_registration_status.retrieve(
        connection_id: "connection_id",
        credential_type: :uac_external_credential,
        user_id: "user_id"
      )

    assert_pattern do
      response => Telnyx::Models::SipRegistrationStatusRetrieveResponse
    end

    assert_pattern do
      response => {
        b2bua_external: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]) | nil,
        b2bua_internal: ^(Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]) | nil,
        connection_id: String | nil,
        connection_name: String | nil,
        credential_type: Telnyx::Models::SipRegistrationStatusRetrieveResponse::CredentialType | nil,
        external_state: String | nil,
        external_uac_settings: Telnyx::Models::SipRegistrationStatusRetrieveResponse::ExternalUacSettings | nil,
        internal_uac_settings: Telnyx::Models::SipRegistrationStatusRetrieveResponse::InternalUacSettings | nil,
        last_registration_response: String | nil,
        pair_state: String | nil,
        registered: Telnyx::Internal::Type::Boolean | nil,
        user_id: String | nil,
        username: String | nil
      }
    end
  end
end
