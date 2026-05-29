# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SipRegistrationStatus#retrieve
    class SipRegistrationStatusRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute connection_id
      #   Identifier of the connection or credential to look up.
      #
      #   @return [String]
      required :connection_id, String

      # @!attribute credential_type
      #   The kind of credential to look up.
      #
      #   @return [Symbol, Telnyx::Models::SipRegistrationStatusRetrieveParams::CredentialType]
      required :credential_type, enum: -> { Telnyx::SipRegistrationStatusRetrieveParams::CredentialType }

      # @!attribute user_id
      #   Owner of the connection. Used to authorize the lookup.
      #
      #   @return [String]
      required :user_id, String

      # @!method initialize(connection_id:, credential_type:, user_id:, request_options: {})
      #   @param connection_id [String] Identifier of the connection or credential to look up.
      #
      #   @param credential_type [Symbol, Telnyx::Models::SipRegistrationStatusRetrieveParams::CredentialType] The kind of credential to look up.
      #
      #   @param user_id [String] Owner of the connection. Used to authorize the lookup.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # The kind of credential to look up.
      module CredentialType
        extend Telnyx::Internal::Type::Enum

        UAC_EXTERNAL_CREDENTIAL = :uac_external_credential
        TELEPHONY_CREDENTIAL = :telephony_credential
        SIP_CREDENTIAL_CONNECTION = :sip_credential_connection

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
