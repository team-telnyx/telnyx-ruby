# frozen_string_literal: true

module Telnyx
  module Models
    class Settings < Telnyx::Internal::Type::BaseModel
      # @!attribute idp_cert_fingerprint
      #   The certificate fingerprint for the identity provider (IdP)
      #
      #   @return [String]
      required :idp_cert_fingerprint, String

      # @!attribute idp_entity_id
      #   The Entity ID for the identity provider (IdP).
      #
      #   @return [String]
      required :idp_entity_id, String

      # @!attribute idp_sso_target_url
      #   The SSO target url for the identity provider (IdP).
      #
      #   @return [String]
      required :idp_sso_target_url, String

      # @!attribute idp_cert_fingerprint_algorithm
      #   The algorithm used to generate the identity provider's (IdP) certificate
      #   fingerprint
      #
      #   @return [Symbol, Telnyx::Models::Settings::IdpCertFingerprintAlgorithm, nil]
      optional :idp_cert_fingerprint_algorithm, enum: -> { Telnyx::Settings::IdpCertFingerprintAlgorithm }

      # @!method initialize(idp_cert_fingerprint:, idp_entity_id:, idp_sso_target_url:, idp_cert_fingerprint_algorithm: nil)
      #   Some parameter documentations has been truncated, see {Telnyx::Models::Settings}
      #   for more details.
      #
      #   The settings associated with the authentication provider.
      #
      #   @param idp_cert_fingerprint [String] The certificate fingerprint for the identity provider (IdP)
      #
      #   @param idp_entity_id [String] The Entity ID for the identity provider (IdP).
      #
      #   @param idp_sso_target_url [String] The SSO target url for the identity provider (IdP).
      #
      #   @param idp_cert_fingerprint_algorithm [Symbol, Telnyx::Models::Settings::IdpCertFingerprintAlgorithm] The algorithm used to generate the identity provider's (IdP) certificate fingerp

      # The algorithm used to generate the identity provider's (IdP) certificate
      # fingerprint
      #
      # @see Telnyx::Models::Settings#idp_cert_fingerprint_algorithm
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
