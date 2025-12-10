# frozen_string_literal: true

module Telnyx
  module Models
    class AuthenticationProvider < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Uniquely identifies the authentication provider.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute active
      #   The active status of the authentication provider
      #
      #   @return [Boolean, nil]
      optional :active, Telnyx::Internal::Type::Boolean

      # @!attribute created_at
      #   ISO 8601 formatted date indicating when the resource was created.
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!attribute name
      #   The name associated with the authentication provider.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute organization_id
      #   The id from the Organization the authentication provider belongs to.
      #
      #   @return [String, nil]
      optional :organization_id, String

      # @!attribute record_type
      #   Identifies the type of the resource.
      #
      #   @return [String, nil]
      optional :record_type, String

      # @!attribute settings
      #   The settings associated with the authentication provider.
      #
      #   @return [Telnyx::Models::AuthenticationProvider::Settings, nil]
      optional :settings, -> { Telnyx::AuthenticationProvider::Settings }

      # @!attribute short_name
      #   The short name associated with the authentication provider. This must be unique
      #   and URL-friendly, as it's going to be part of the login URL.
      #
      #   @return [String, nil]
      optional :short_name, String

      # @!attribute updated_at
      #   ISO 8601 formatted date indicating when the resource was updated.
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!method initialize(id: nil, active: nil, created_at: nil, name: nil, organization_id: nil, record_type: nil, settings: nil, short_name: nil, updated_at: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::AuthenticationProvider} for more details.
      #
      #   @param id [String] Uniquely identifies the authentication provider.
      #
      #   @param active [Boolean] The active status of the authentication provider
      #
      #   @param created_at [Time] ISO 8601 formatted date indicating when the resource was created.
      #
      #   @param name [String] The name associated with the authentication provider.
      #
      #   @param organization_id [String] The id from the Organization the authentication provider belongs to.
      #
      #   @param record_type [String] Identifies the type of the resource.
      #
      #   @param settings [Telnyx::Models::AuthenticationProvider::Settings] The settings associated with the authentication provider.
      #
      #   @param short_name [String] The short name associated with the authentication provider. This must be unique
      #
      #   @param updated_at [Time] ISO 8601 formatted date indicating when the resource was updated.

      # @see Telnyx::Models::AuthenticationProvider#settings
      class Settings < Telnyx::Internal::Type::BaseModel
        # @!attribute assertion_consumer_service_url
        #   The Assertion Consumer Service URL for the service provider (Telnyx).
        #
        #   @return [String, nil]
        optional :assertion_consumer_service_url, String

        # @!attribute idp_cert_fingerprint
        #   The certificate fingerprint for the identity provider (IdP)
        #
        #   @return [String, nil]
        optional :idp_cert_fingerprint, String

        # @!attribute idp_cert_fingerprint_algorithm
        #   The algorithm used to generate the identity provider's (IdP) certificate
        #   fingerprint
        #
        #   @return [Symbol, Telnyx::Models::AuthenticationProvider::Settings::IdpCertFingerprintAlgorithm, nil]
        optional :idp_cert_fingerprint_algorithm,
                 enum: -> { Telnyx::AuthenticationProvider::Settings::IdpCertFingerprintAlgorithm }

        # @!attribute idp_entity_id
        #   The Entity ID for the identity provider (IdP).
        #
        #   @return [String, nil]
        optional :idp_entity_id, String

        # @!attribute idp_sso_target_url
        #   The SSO target url for the identity provider (IdP).
        #
        #   @return [String, nil]
        optional :idp_sso_target_url, String

        # @!attribute name_identifier_format
        #   The name identifier format associated with the authentication provider. This
        #   must be the same for both the Identity Provider (IdP) and the service provider
        #   (Telnyx).
        #
        #   @return [String, nil]
        optional :name_identifier_format, String

        # @!attribute service_provider_entity_id
        #   The Entity ID for the service provider (Telnyx).
        #
        #   @return [String, nil]
        optional :service_provider_entity_id, String

        # @!method initialize(assertion_consumer_service_url: nil, idp_cert_fingerprint: nil, idp_cert_fingerprint_algorithm: nil, idp_entity_id: nil, idp_sso_target_url: nil, name_identifier_format: nil, service_provider_entity_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AuthenticationProvider::Settings} for more details.
        #
        #   The settings associated with the authentication provider.
        #
        #   @param assertion_consumer_service_url [String] The Assertion Consumer Service URL for the service provider (Telnyx).
        #
        #   @param idp_cert_fingerprint [String] The certificate fingerprint for the identity provider (IdP)
        #
        #   @param idp_cert_fingerprint_algorithm [Symbol, Telnyx::Models::AuthenticationProvider::Settings::IdpCertFingerprintAlgorithm] The algorithm used to generate the identity provider's (IdP) certificate fingerp
        #
        #   @param idp_entity_id [String] The Entity ID for the identity provider (IdP).
        #
        #   @param idp_sso_target_url [String] The SSO target url for the identity provider (IdP).
        #
        #   @param name_identifier_format [String] The name identifier format associated with the authentication provider. This mus
        #
        #   @param service_provider_entity_id [String] The Entity ID for the service provider (Telnyx).

        # The algorithm used to generate the identity provider's (IdP) certificate
        # fingerprint
        #
        # @see Telnyx::Models::AuthenticationProvider::Settings#idp_cert_fingerprint_algorithm
        module IdpCertFingerprintAlgorithm
          extend Telnyx::Internal::Type::Enum

          SHA1 = :sha1
          SHA256 = :sha256
          SHA384 = :sha384
          SHA512 = :sha512

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
