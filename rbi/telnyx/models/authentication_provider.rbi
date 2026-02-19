# typed: strong

module Telnyx
  module Models
    class AuthenticationProvider < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::AuthenticationProvider, Telnyx::Internal::AnyHash)
        end

      # Uniquely identifies the authentication provider.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # ISO 8601 formatted date indicating when the authentication provider was
      # activated.
      sig { returns(T.nilable(Time)) }
      attr_reader :activated_at

      sig { params(activated_at: Time).void }
      attr_writer :activated_at

      # The active status of the authentication provider
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :active

      sig { params(active: T::Boolean).void }
      attr_writer :active

      # ISO 8601 formatted date indicating when the resource was created.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # The name associated with the authentication provider.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # The id from the Organization the authentication provider belongs to.
      sig { returns(T.nilable(String)) }
      attr_reader :organization_id

      sig { params(organization_id: String).void }
      attr_writer :organization_id

      # Identifies the type of the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      # The settings associated with the authentication provider.
      sig { returns(T.nilable(Telnyx::AuthenticationProvider::Settings)) }
      attr_reader :settings

      sig do
        params(settings: Telnyx::AuthenticationProvider::Settings::OrHash).void
      end
      attr_writer :settings

      # The short name associated with the authentication provider. This must be unique
      # and URL-friendly, as it's going to be part of the login URL.
      sig { returns(T.nilable(String)) }
      attr_reader :short_name

      sig { params(short_name: String).void }
      attr_writer :short_name

      # ISO 8601 formatted date indicating when the resource was updated.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      sig do
        params(
          id: String,
          activated_at: Time,
          active: T::Boolean,
          created_at: Time,
          name: String,
          organization_id: String,
          record_type: String,
          settings: Telnyx::AuthenticationProvider::Settings::OrHash,
          short_name: String,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # Uniquely identifies the authentication provider.
        id: nil,
        # ISO 8601 formatted date indicating when the authentication provider was
        # activated.
        activated_at: nil,
        # The active status of the authentication provider
        active: nil,
        # ISO 8601 formatted date indicating when the resource was created.
        created_at: nil,
        # The name associated with the authentication provider.
        name: nil,
        # The id from the Organization the authentication provider belongs to.
        organization_id: nil,
        # Identifies the type of the resource.
        record_type: nil,
        # The settings associated with the authentication provider.
        settings: nil,
        # The short name associated with the authentication provider. This must be unique
        # and URL-friendly, as it's going to be part of the login URL.
        short_name: nil,
        # ISO 8601 formatted date indicating when the resource was updated.
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            activated_at: Time,
            active: T::Boolean,
            created_at: Time,
            name: String,
            organization_id: String,
            record_type: String,
            settings: Telnyx::AuthenticationProvider::Settings,
            short_name: String,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      class Settings < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AuthenticationProvider::Settings,
              Telnyx::Internal::AnyHash
            )
          end

        # The Assertion Consumer Service URL for the service provider (Telnyx).
        sig { returns(T.nilable(String)) }
        attr_reader :assertion_consumer_service_url

        sig { params(assertion_consumer_service_url: String).void }
        attr_writer :assertion_consumer_service_url

        # Mapping of SAML attribute names used by the identity provider (IdP).
        sig { returns(T.nilable(T.anything)) }
        attr_reader :idp_attribute_names

        sig { params(idp_attribute_names: T.anything).void }
        attr_writer :idp_attribute_names

        # The certificate fingerprint for the identity provider (IdP)
        sig { returns(T.nilable(String)) }
        attr_reader :idp_cert_fingerprint

        sig { params(idp_cert_fingerprint: String).void }
        attr_writer :idp_cert_fingerprint

        # The algorithm used to generate the identity provider's (IdP) certificate
        # fingerprint
        sig do
          returns(
            T.nilable(
              Telnyx::AuthenticationProvider::Settings::IdpCertFingerprintAlgorithm::TaggedSymbol
            )
          )
        end
        attr_reader :idp_cert_fingerprint_algorithm

        sig do
          params(
            idp_cert_fingerprint_algorithm:
              Telnyx::AuthenticationProvider::Settings::IdpCertFingerprintAlgorithm::OrSymbol
          ).void
        end
        attr_writer :idp_cert_fingerprint_algorithm

        # The full X.509 certificate for the identity provider (IdP).
        sig { returns(T.nilable(String)) }
        attr_reader :idp_certificate

        sig { params(idp_certificate: String).void }
        attr_writer :idp_certificate

        # The Entity ID for the identity provider (IdP).
        sig { returns(T.nilable(String)) }
        attr_reader :idp_entity_id

        sig { params(idp_entity_id: String).void }
        attr_writer :idp_entity_id

        # The Single Logout (SLO) target URL for the identity provider (IdP).
        sig { returns(T.nilable(String)) }
        attr_reader :idp_slo_target_url

        sig { params(idp_slo_target_url: String).void }
        attr_writer :idp_slo_target_url

        # The SSO target url for the identity provider (IdP).
        sig { returns(T.nilable(String)) }
        attr_reader :idp_sso_target_url

        sig { params(idp_sso_target_url: String).void }
        attr_writer :idp_sso_target_url

        # The name identifier format associated with the authentication provider. This
        # must be the same for both the Identity Provider (IdP) and the service provider
        # (Telnyx).
        sig { returns(T.nilable(String)) }
        attr_reader :name_identifier_format

        sig { params(name_identifier_format: String).void }
        attr_writer :name_identifier_format

        # Whether group provisioning is enabled for this authentication provider.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :provision_groups

        sig { params(provision_groups: T::Boolean).void }
        attr_writer :provision_groups

        # The Entity ID for the service provider (Telnyx).
        sig { returns(T.nilable(String)) }
        attr_reader :service_provider_entity_id

        sig { params(service_provider_entity_id: String).void }
        attr_writer :service_provider_entity_id

        # The login URL for the service provider (Telnyx). Users navigate to this URL to
        # initiate SSO login.
        sig { returns(T.nilable(String)) }
        attr_reader :service_provider_login_url

        sig { params(service_provider_login_url: String).void }
        attr_writer :service_provider_login_url

        # The settings associated with the authentication provider.
        sig do
          params(
            assertion_consumer_service_url: String,
            idp_attribute_names: T.anything,
            idp_cert_fingerprint: String,
            idp_cert_fingerprint_algorithm:
              Telnyx::AuthenticationProvider::Settings::IdpCertFingerprintAlgorithm::OrSymbol,
            idp_certificate: String,
            idp_entity_id: String,
            idp_slo_target_url: String,
            idp_sso_target_url: String,
            name_identifier_format: String,
            provision_groups: T::Boolean,
            service_provider_entity_id: String,
            service_provider_login_url: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The Assertion Consumer Service URL for the service provider (Telnyx).
          assertion_consumer_service_url: nil,
          # Mapping of SAML attribute names used by the identity provider (IdP).
          idp_attribute_names: nil,
          # The certificate fingerprint for the identity provider (IdP)
          idp_cert_fingerprint: nil,
          # The algorithm used to generate the identity provider's (IdP) certificate
          # fingerprint
          idp_cert_fingerprint_algorithm: nil,
          # The full X.509 certificate for the identity provider (IdP).
          idp_certificate: nil,
          # The Entity ID for the identity provider (IdP).
          idp_entity_id: nil,
          # The Single Logout (SLO) target URL for the identity provider (IdP).
          idp_slo_target_url: nil,
          # The SSO target url for the identity provider (IdP).
          idp_sso_target_url: nil,
          # The name identifier format associated with the authentication provider. This
          # must be the same for both the Identity Provider (IdP) and the service provider
          # (Telnyx).
          name_identifier_format: nil,
          # Whether group provisioning is enabled for this authentication provider.
          provision_groups: nil,
          # The Entity ID for the service provider (Telnyx).
          service_provider_entity_id: nil,
          # The login URL for the service provider (Telnyx). Users navigate to this URL to
          # initiate SSO login.
          service_provider_login_url: nil
        )
        end

        sig do
          override.returns(
            {
              assertion_consumer_service_url: String,
              idp_attribute_names: T.anything,
              idp_cert_fingerprint: String,
              idp_cert_fingerprint_algorithm:
                Telnyx::AuthenticationProvider::Settings::IdpCertFingerprintAlgorithm::TaggedSymbol,
              idp_certificate: String,
              idp_entity_id: String,
              idp_slo_target_url: String,
              idp_sso_target_url: String,
              name_identifier_format: String,
              provision_groups: T::Boolean,
              service_provider_entity_id: String,
              service_provider_login_url: String
            }
          )
        end
        def to_hash
        end

        # The algorithm used to generate the identity provider's (IdP) certificate
        # fingerprint
        module IdpCertFingerprintAlgorithm
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::AuthenticationProvider::Settings::IdpCertFingerprintAlgorithm
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SHA1 =
            T.let(
              :sha1,
              Telnyx::AuthenticationProvider::Settings::IdpCertFingerprintAlgorithm::TaggedSymbol
            )
          SHA256 =
            T.let(
              :sha256,
              Telnyx::AuthenticationProvider::Settings::IdpCertFingerprintAlgorithm::TaggedSymbol
            )
          SHA384 =
            T.let(
              :sha384,
              Telnyx::AuthenticationProvider::Settings::IdpCertFingerprintAlgorithm::TaggedSymbol
            )
          SHA512 =
            T.let(
              :sha512,
              Telnyx::AuthenticationProvider::Settings::IdpCertFingerprintAlgorithm::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::AuthenticationProvider::Settings::IdpCertFingerprintAlgorithm::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
