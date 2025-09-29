# typed: strong

module Telnyx
  module Models
    class Settings < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::Settings, Telnyx::Internal::AnyHash) }

      # The certificate fingerprint for the identity provider (IdP)
      sig { returns(String) }
      attr_accessor :idp_cert_fingerprint

      # The Entity ID for the identity provider (IdP).
      sig { returns(String) }
      attr_accessor :idp_entity_id

      # The SSO target url for the identity provider (IdP).
      sig { returns(String) }
      attr_accessor :idp_sso_target_url

      # The algorithm used to generate the identity provider's (IdP) certificate
      # fingerprint
      sig do
        returns(
          T.nilable(Telnyx::Settings::IdpCertFingerprintAlgorithm::OrSymbol)
        )
      end
      attr_reader :idp_cert_fingerprint_algorithm

      sig do
        params(
          idp_cert_fingerprint_algorithm:
            Telnyx::Settings::IdpCertFingerprintAlgorithm::OrSymbol
        ).void
      end
      attr_writer :idp_cert_fingerprint_algorithm

      # The settings associated with the authentication provider.
      sig do
        params(
          idp_cert_fingerprint: String,
          idp_entity_id: String,
          idp_sso_target_url: String,
          idp_cert_fingerprint_algorithm:
            Telnyx::Settings::IdpCertFingerprintAlgorithm::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The certificate fingerprint for the identity provider (IdP)
        idp_cert_fingerprint:,
        # The Entity ID for the identity provider (IdP).
        idp_entity_id:,
        # The SSO target url for the identity provider (IdP).
        idp_sso_target_url:,
        # The algorithm used to generate the identity provider's (IdP) certificate
        # fingerprint
        idp_cert_fingerprint_algorithm: nil
      )
      end

      sig do
        override.returns(
          {
            idp_cert_fingerprint: String,
            idp_entity_id: String,
            idp_sso_target_url: String,
            idp_cert_fingerprint_algorithm:
              Telnyx::Settings::IdpCertFingerprintAlgorithm::OrSymbol
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
            T.all(Symbol, Telnyx::Settings::IdpCertFingerprintAlgorithm)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SHA1 =
          T.let(
            :sha1,
            Telnyx::Settings::IdpCertFingerprintAlgorithm::TaggedSymbol
          )
        SHA256 =
          T.let(
            :sha256,
            Telnyx::Settings::IdpCertFingerprintAlgorithm::TaggedSymbol
          )
        SHA384 =
          T.let(
            :sha384,
            Telnyx::Settings::IdpCertFingerprintAlgorithm::TaggedSymbol
          )
        SHA512 =
          T.let(
            :sha512,
            Telnyx::Settings::IdpCertFingerprintAlgorithm::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::Settings::IdpCertFingerprintAlgorithm::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
