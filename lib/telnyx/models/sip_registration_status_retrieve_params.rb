# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SipRegistrationStatus#retrieve
    class SipRegistrationStatusRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute connection_id
      #   Identifier of the UAC connection to look up.
      #
      #   @return [String]
      required :connection_id, String

      # @!attribute credential_type
      #   The kind of credential to look up. Only `uac_external_credential` is supported
      #   today.
      #
      #   @return [Symbol, Telnyx::Models::SipRegistrationStatusRetrieveParams::CredentialType]
      required :credential_type, enum: -> { Telnyx::SipRegistrationStatusRetrieveParams::CredentialType }

      # @!method initialize(connection_id:, credential_type:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::SipRegistrationStatusRetrieveParams} for more details.
      #
      #   @param connection_id [String] Identifier of the UAC connection to look up.
      #
      #   @param credential_type [Symbol, Telnyx::Models::SipRegistrationStatusRetrieveParams::CredentialType] The kind of credential to look up. Only `uac_external_credential` is supported t
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # The kind of credential to look up. Only `uac_external_credential` is supported
      # today.
      module CredentialType
        extend Telnyx::Internal::Type::Enum

        UAC_EXTERNAL_CREDENTIAL = :uac_external_credential

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
