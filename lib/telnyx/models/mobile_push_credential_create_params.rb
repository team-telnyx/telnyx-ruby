# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MobilePushCredentials#create
    class MobilePushCredentialCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute create_mobile_push_credential_request
      #
      #   @return [Telnyx::Models::MobilePushCredentialCreateParams::CreateMobilePushCredentialRequest::Ios, Telnyx::Models::MobilePushCredentialCreateParams::CreateMobilePushCredentialRequest::Android]
      required :create_mobile_push_credential_request,
               union: -> { Telnyx::MobilePushCredentialCreateParams::CreateMobilePushCredentialRequest },
               api_name: :createMobilePushCredentialRequest

      # @!method initialize(create_mobile_push_credential_request:, request_options: {})
      #   @param create_mobile_push_credential_request [Telnyx::Models::MobilePushCredentialCreateParams::CreateMobilePushCredentialRequest::Ios, Telnyx::Models::MobilePushCredentialCreateParams::CreateMobilePushCredentialRequest::Android]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      module CreateMobilePushCredentialRequest
        extend Telnyx::Internal::Type::Union

        discriminator :type

        variant :ios, -> { Telnyx::MobilePushCredentialCreateParams::CreateMobilePushCredentialRequest::Ios }

        variant :android,
                -> { Telnyx::MobilePushCredentialCreateParams::CreateMobilePushCredentialRequest::Android }

        class Ios < Telnyx::Internal::Type::BaseModel
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
          #   Type of mobile push credential. Should be <code>ios</code> here
          #
          #   @return [Symbol, :ios]
          required :type, const: :ios

          # @!method initialize(alias_:, certificate:, private_key:, type: :ios)
          #   @param alias_ [String] Alias to uniquely identify the credential
          #
          #   @param certificate [String] Certificate as received from APNs
          #
          #   @param private_key [String] Corresponding private key to the certificate as received from APNs
          #
          #   @param type [Symbol, :ios] Type of mobile push credential. Should be <code>ios</code> here
        end

        class Android < Telnyx::Internal::Type::BaseModel
          # @!attribute alias_
          #   Alias to uniquely identify the credential
          #
          #   @return [String]
          required :alias_, String, api_name: :alias

          # @!attribute project_account_json_file
          #   Private key file in JSON format
          #
          #   @return [Hash{Symbol=>Object}]
          required :project_account_json_file, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

          # @!attribute type
          #   Type of mobile push credential. Should be <code>android</code> here
          #
          #   @return [Symbol, :android]
          required :type, const: :android

          # @!method initialize(alias_:, project_account_json_file:, type: :android)
          #   @param alias_ [String] Alias to uniquely identify the credential
          #
          #   @param project_account_json_file [Hash{Symbol=>Object}] Private key file in JSON format
          #
          #   @param type [Symbol, :android] Type of mobile push credential. Should be <code>android</code> here
        end

        # @!method self.variants
        #   @return [Array(Telnyx::Models::MobilePushCredentialCreateParams::CreateMobilePushCredentialRequest::Ios, Telnyx::Models::MobilePushCredentialCreateParams::CreateMobilePushCredentialRequest::Android)]
      end
    end
  end
end
