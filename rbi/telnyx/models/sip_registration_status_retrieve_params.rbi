# typed: strong

module Telnyx
  module Models
    class SipRegistrationStatusRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::SipRegistrationStatusRetrieveParams,
            Telnyx::Internal::AnyHash
          )
        end

      # The kind of credential to look up. `uac_external_credential` is keyed by
      # `connection_id`; `telephony_credential` is keyed by `username`.
      sig do
        returns(
          Telnyx::SipRegistrationStatusRetrieveParams::CredentialType::OrSymbol
        )
      end
      attr_accessor :credential_type

      # Identifier of the UAC connection to look up. Required when `credential_type` is
      # `uac_external_credential`.
      sig { returns(T.nilable(String)) }
      attr_reader :connection_id

      sig { params(connection_id: String).void }
      attr_writer :connection_id

      # SIP username of the telephony credential to look up. Required when
      # `credential_type` is `telephony_credential`.
      sig { returns(T.nilable(String)) }
      attr_reader :username

      sig { params(username: String).void }
      attr_writer :username

      sig do
        params(
          credential_type:
            Telnyx::SipRegistrationStatusRetrieveParams::CredentialType::OrSymbol,
          connection_id: String,
          username: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The kind of credential to look up. `uac_external_credential` is keyed by
        # `connection_id`; `telephony_credential` is keyed by `username`.
        credential_type:,
        # Identifier of the UAC connection to look up. Required when `credential_type` is
        # `uac_external_credential`.
        connection_id: nil,
        # SIP username of the telephony credential to look up. Required when
        # `credential_type` is `telephony_credential`.
        username: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            credential_type:
              Telnyx::SipRegistrationStatusRetrieveParams::CredentialType::OrSymbol,
            connection_id: String,
            username: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The kind of credential to look up. `uac_external_credential` is keyed by
      # `connection_id`; `telephony_credential` is keyed by `username`.
      module CredentialType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::SipRegistrationStatusRetrieveParams::CredentialType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        UAC_EXTERNAL_CREDENTIAL =
          T.let(
            :uac_external_credential,
            Telnyx::SipRegistrationStatusRetrieveParams::CredentialType::TaggedSymbol
          )
        TELEPHONY_CREDENTIAL =
          T.let(
            :telephony_credential,
            Telnyx::SipRegistrationStatusRetrieveParams::CredentialType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::SipRegistrationStatusRetrieveParams::CredentialType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
