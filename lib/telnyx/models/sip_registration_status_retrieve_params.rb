# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SipRegistrationStatus#retrieve
    class SipRegistrationStatusRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute credential_type
      #   The kind of credential to look up. `uac_external_credential` is keyed by
      #   `connection_id`; `telephony_credential` is keyed by `username`.
      #
      #   @return [Symbol, Telnyx::Models::SipRegistrationStatusRetrieveParams::CredentialType]
      required :credential_type, enum: -> { Telnyx::SipRegistrationStatusRetrieveParams::CredentialType }

      # @!attribute connection_id
      #   Identifier of the UAC connection to look up. Required when `credential_type` is
      #   `uac_external_credential`.
      #
      #   @return [String, nil]
      optional :connection_id, String

      # @!attribute username
      #   SIP username of the telephony credential to look up. Required when
      #   `credential_type` is `telephony_credential`.
      #
      #   @return [String, nil]
      optional :username, String

      # @!method initialize(credential_type:, connection_id: nil, username: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::SipRegistrationStatusRetrieveParams} for more details.
      #
      #   @param credential_type [Symbol, Telnyx::Models::SipRegistrationStatusRetrieveParams::CredentialType] The kind of credential to look up. `uac_external_credential` is keyed by `connec
      #
      #   @param connection_id [String] Identifier of the UAC connection to look up. Required when `credential_type` is
      #
      #   @param username [String] SIP username of the telephony credential to look up. Required when `credential_t
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # The kind of credential to look up. `uac_external_credential` is keyed by
      # `connection_id`; `telephony_credential` is keyed by `username`.
      module CredentialType
        extend Telnyx::Internal::Type::Enum

        UAC_EXTERNAL_CREDENTIAL = :uac_external_credential
        TELEPHONY_CREDENTIAL = :telephony_credential

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
