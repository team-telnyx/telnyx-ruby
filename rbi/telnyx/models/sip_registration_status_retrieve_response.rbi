# typed: strong

module Telnyx
  module Models
    class SipRegistrationStatusRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::SipRegistrationStatusRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # Identifier of the UAC connection.
      sig { returns(T.nilable(String)) }
      attr_reader :connection_id

      sig { params(connection_id: String).void }
      attr_writer :connection_id

      # Human-readable connection name.
      sig { returns(T.nilable(String)) }
      attr_reader :connection_name

      sig { params(connection_name: String).void }
      attr_writer :connection_name

      # The credential type that was looked up.
      sig do
        returns(
          T.nilable(
            Telnyx::Models::SipRegistrationStatusRetrieveResponse::CredentialType::TaggedSymbol
          )
        )
      end
      attr_reader :credential_type

      sig do
        params(
          credential_type:
            Telnyx::Models::SipRegistrationStatusRetrieveResponse::CredentialType::OrSymbol
        ).void
      end
      attr_writer :credential_type

      # SIP username used for the registration.
      sig { returns(T.nilable(String)) }
      attr_reader :credential_username

      sig { params(credential_username: String).void }
      attr_writer :credential_username

      # SIP response from the last registration attempt.
      sig { returns(T.nilable(String)) }
      attr_reader :last_registration_response

      sig { params(last_registration_response: String).void }
      attr_writer :last_registration_response

      # True if the endpoint is currently registered.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :registered

      sig { params(registered: T::Boolean).void }
      attr_writer :registered

      # Detailed registration information reported by the registrar.
      sig do
        returns(
          T.nilable(
            Telnyx::Models::SipRegistrationStatusRetrieveResponse::SipRegistrationDetails
          )
        )
      end
      attr_reader :sip_registration_details

      sig do
        params(
          sip_registration_details:
            Telnyx::Models::SipRegistrationStatusRetrieveResponse::SipRegistrationDetails::OrHash
        ).void
      end
      attr_writer :sip_registration_details

      # Human-readable registration status derived from the registrar state.
      sig do
        returns(
          T.nilable(
            Telnyx::Models::SipRegistrationStatusRetrieveResponse::SipRegistrationStatus::TaggedSymbol
          )
        )
      end
      attr_reader :sip_registration_status

      sig do
        params(
          sip_registration_status:
            Telnyx::Models::SipRegistrationStatusRetrieveResponse::SipRegistrationStatus::OrSymbol
        ).void
      end
      attr_writer :sip_registration_status

      sig do
        params(
          connection_id: String,
          connection_name: String,
          credential_type:
            Telnyx::Models::SipRegistrationStatusRetrieveResponse::CredentialType::OrSymbol,
          credential_username: String,
          last_registration_response: String,
          registered: T::Boolean,
          sip_registration_details:
            Telnyx::Models::SipRegistrationStatusRetrieveResponse::SipRegistrationDetails::OrHash,
          sip_registration_status:
            Telnyx::Models::SipRegistrationStatusRetrieveResponse::SipRegistrationStatus::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifier of the UAC connection.
        connection_id: nil,
        # Human-readable connection name.
        connection_name: nil,
        # The credential type that was looked up.
        credential_type: nil,
        # SIP username used for the registration.
        credential_username: nil,
        # SIP response from the last registration attempt.
        last_registration_response: nil,
        # True if the endpoint is currently registered.
        registered: nil,
        # Detailed registration information reported by the registrar.
        sip_registration_details: nil,
        # Human-readable registration status derived from the registrar state.
        sip_registration_status: nil
      )
      end

      sig do
        override.returns(
          {
            connection_id: String,
            connection_name: String,
            credential_type:
              Telnyx::Models::SipRegistrationStatusRetrieveResponse::CredentialType::TaggedSymbol,
            credential_username: String,
            last_registration_response: String,
            registered: T::Boolean,
            sip_registration_details:
              Telnyx::Models::SipRegistrationStatusRetrieveResponse::SipRegistrationDetails,
            sip_registration_status:
              Telnyx::Models::SipRegistrationStatusRetrieveResponse::SipRegistrationStatus::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # The credential type that was looked up.
      module CredentialType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::Models::SipRegistrationStatusRetrieveResponse::CredentialType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        UAC_EXTERNAL_CREDENTIAL =
          T.let(
            :uac_external_credential,
            Telnyx::Models::SipRegistrationStatusRetrieveResponse::CredentialType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::Models::SipRegistrationStatusRetrieveResponse::CredentialType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class SipRegistrationDetails < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::SipRegistrationStatusRetrieveResponse::SipRegistrationDetails,
              Telnyx::Internal::AnyHash
            )
          end

        # Number of authentication retries on the last attempt.
        sig { returns(T.nilable(Integer)) }
        attr_reader :auth_retries

        sig { params(auth_retries: Integer).void }
        attr_writer :auth_retries

        # Unix timestamp when the current registration expires.
        sig { returns(T.nilable(Integer)) }
        attr_reader :expires

        sig { params(expires: Integer).void }
        attr_writer :expires

        # Count of consecutive registration failures.
        sig { returns(T.nilable(Integer)) }
        attr_reader :failures

        sig { params(failures: Integer).void }
        attr_writer :failures

        # Unix timestamp of the next scheduled registration action.
        sig { returns(T.nilable(Integer)) }
        attr_reader :next_action_at

        sig { params(next_action_at: Integer).void }
        attr_writer :next_action_at

        # SIP URI user@host of the registered contact.
        sig { returns(T.nilable(String)) }
        attr_reader :sip_uri_user_host

        sig { params(sip_uri_user_host: String).void }
        attr_writer :sip_uri_user_host

        # Registration uptime reported by the registrar.
        sig { returns(T.nilable(Integer)) }
        attr_reader :uptime

        sig { params(uptime: Integer).void }
        attr_writer :uptime

        # Detailed registration information reported by the registrar.
        sig do
          params(
            auth_retries: Integer,
            expires: Integer,
            failures: Integer,
            next_action_at: Integer,
            sip_uri_user_host: String,
            uptime: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Number of authentication retries on the last attempt.
          auth_retries: nil,
          # Unix timestamp when the current registration expires.
          expires: nil,
          # Count of consecutive registration failures.
          failures: nil,
          # Unix timestamp of the next scheduled registration action.
          next_action_at: nil,
          # SIP URI user@host of the registered contact.
          sip_uri_user_host: nil,
          # Registration uptime reported by the registrar.
          uptime: nil
        )
        end

        sig do
          override.returns(
            {
              auth_retries: Integer,
              expires: Integer,
              failures: Integer,
              next_action_at: Integer,
              sip_uri_user_host: String,
              uptime: Integer
            }
          )
        end
        def to_hash
        end
      end

      # Human-readable registration status derived from the registrar state.
      module SipRegistrationStatus
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::Models::SipRegistrationStatusRetrieveResponse::SipRegistrationStatus
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        UNREGISTERING =
          T.let(
            :unregistering,
            Telnyx::Models::SipRegistrationStatusRetrieveResponse::SipRegistrationStatus::TaggedSymbol
          )
        CONNECTION_DISABLED =
          T.let(
            :connection_disabled,
            Telnyx::Models::SipRegistrationStatusRetrieveResponse::SipRegistrationStatus::TaggedSymbol
          )
        STANDBY =
          T.let(
            :standby,
            Telnyx::Models::SipRegistrationStatusRetrieveResponse::SipRegistrationStatus::TaggedSymbol
          )
        FAILED =
          T.let(
            :failed,
            Telnyx::Models::SipRegistrationStatusRetrieveResponse::SipRegistrationStatus::TaggedSymbol
          )
        TRYING =
          T.let(
            :trying,
            Telnyx::Models::SipRegistrationStatusRetrieveResponse::SipRegistrationStatus::TaggedSymbol
          )
        REGISTERED =
          T.let(
            :registered,
            Telnyx::Models::SipRegistrationStatusRetrieveResponse::SipRegistrationStatus::TaggedSymbol
          )
        UNKNOWN =
          T.let(
            :unknown,
            Telnyx::Models::SipRegistrationStatusRetrieveResponse::SipRegistrationStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::Models::SipRegistrationStatusRetrieveResponse::SipRegistrationStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
