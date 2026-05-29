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

      # Identifier of the connection or credential to look up.
      sig { returns(String) }
      attr_accessor :connection_id

      # The kind of credential to look up.
      sig do
        returns(
          Telnyx::SipRegistrationStatusRetrieveParams::CredentialType::OrSymbol
        )
      end
      attr_accessor :credential_type

      # Owner of the connection. Used to authorize the lookup.
      sig { returns(String) }
      attr_accessor :user_id

      sig do
        params(
          connection_id: String,
          credential_type:
            Telnyx::SipRegistrationStatusRetrieveParams::CredentialType::OrSymbol,
          user_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifier of the connection or credential to look up.
        connection_id:,
        # The kind of credential to look up.
        credential_type:,
        # Owner of the connection. Used to authorize the lookup.
        user_id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            connection_id: String,
            credential_type:
              Telnyx::SipRegistrationStatusRetrieveParams::CredentialType::OrSymbol,
            user_id: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The kind of credential to look up.
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
        SIP_CREDENTIAL_CONNECTION =
          T.let(
            :sip_credential_connection,
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
