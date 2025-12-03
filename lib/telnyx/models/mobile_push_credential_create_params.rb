# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MobilePushCredentials#create
    class MobilePushCredentialCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute alias_
      #   Alias to uniquely identify the credential
      #
      #   @return [String]
      required :alias_, String, api_name: :alias

      # @!attribute certificate
      #   Certificate as received from APNs
      #
      #   @return [String]
      required :certificate, String

      # @!attribute private_key
      #   Corresponding private key to the certificate as received from APNs
      #
      #   @return [String]
      required :private_key, String

      # @!attribute type
      #   Type of mobile push credential. Should be <code>android</code> here
      #
      #   @return [Symbol, Telnyx::Models::MobilePushCredentialCreateParams::Type]
      required :type, enum: -> { Telnyx::MobilePushCredentialCreateParams::Type }

      # @!attribute project_account_json_file
      #   Private key file in JSON format
      #
      #   @return [Hash{Symbol=>Object}]
      required :project_account_json_file, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

      # @!method initialize(alias_:, certificate:, private_key:, type:, project_account_json_file:, request_options: {})
      #   @param alias_ [String] Alias to uniquely identify the credential
      #
      #   @param certificate [String] Certificate as received from APNs
      #
      #   @param private_key [String] Corresponding private key to the certificate as received from APNs
      #
      #   @param type [Symbol, Telnyx::Models::MobilePushCredentialCreateParams::Type] Type of mobile push credential. Should be <code>android</code> here
      #
      #   @param project_account_json_file [Hash{Symbol=>Object}] Private key file in JSON format
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Type of mobile push credential. Should be <code>android</code> here
      module Type
        extend Telnyx::Internal::Type::Enum

        ANDROID = :android

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
