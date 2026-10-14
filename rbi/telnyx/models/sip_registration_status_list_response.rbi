# typed: strong

module Telnyx
  module Models
    class SipRegistrationStatusListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::SipRegistrationStatusListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # Identifier of the connection associated with the credential.
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
            Telnyx::Models::SipRegistrationStatusListResponse::CredentialType::TaggedSymbol
          )
        )
      end
      attr_reader :credential_type

      sig do
        params(
          credential_type:
            Telnyx::Models::SipRegistrationStatusListResponse::CredentialType::OrSymbol
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
      attr_accessor :last_registration_response

      # True if the endpoint is currently registered.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :registered

      sig { params(registered: T::Boolean).void }
      attr_writer :registered

      # Detailed registration information reported by the registrar. The populated
      # fields depend on `credential_type`: UAC external credentials report
      # `auth_retries`, `uptime`, `next_action_at`, `failures`, and `sip_uri_user_host`;
      # telephony credentials and SIP credential connections report `ua_ip`, `ua_port`,
      # `transport`, and `last_modified`. All types report `expires`, but its unit
      # differs by `credential_type` — see that field.
      sig do
        returns(
          T.nilable(
            Telnyx::Models::SipRegistrationStatusListResponse::SipRegistrationDetails
          )
        )
      end
      attr_reader :sip_registration_details

      sig do
        params(
          sip_registration_details:
            Telnyx::Models::SipRegistrationStatusListResponse::SipRegistrationDetails::OrHash
        ).void
      end
      attr_writer :sip_registration_details

      # Human-readable registration status derived from the registrar state.
      sig do
        returns(
          T.nilable(
            Telnyx::Models::SipRegistrationStatusListResponse::SipRegistrationStatus::TaggedSymbol
          )
        )
      end
      attr_reader :sip_registration_status

      sig do
        params(
          sip_registration_status:
            Telnyx::Models::SipRegistrationStatusListResponse::SipRegistrationStatus::OrSymbol
        ).void
      end
      attr_writer :sip_registration_status

      sig do
        params(
          connection_id: String,
          connection_name: String,
          credential_type:
            Telnyx::Models::SipRegistrationStatusListResponse::CredentialType::OrSymbol,
          credential_username: String,
          last_registration_response: T.nilable(String),
          registered: T::Boolean,
          sip_registration_details:
            Telnyx::Models::SipRegistrationStatusListResponse::SipRegistrationDetails::OrHash,
          sip_registration_status:
            Telnyx::Models::SipRegistrationStatusListResponse::SipRegistrationStatus::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifier of the connection associated with the credential.
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
        # Detailed registration information reported by the registrar. The populated
        # fields depend on `credential_type`: UAC external credentials report
        # `auth_retries`, `uptime`, `next_action_at`, `failures`, and `sip_uri_user_host`;
        # telephony credentials and SIP credential connections report `ua_ip`, `ua_port`,
        # `transport`, and `last_modified`. All types report `expires`, but its unit
        # differs by `credential_type` — see that field.
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
              Telnyx::Models::SipRegistrationStatusListResponse::CredentialType::TaggedSymbol,
            credential_username: String,
            last_registration_response: T.nilable(String),
            registered: T::Boolean,
            sip_registration_details:
              Telnyx::Models::SipRegistrationStatusListResponse::SipRegistrationDetails,
            sip_registration_status:
              Telnyx::Models::SipRegistrationStatusListResponse::SipRegistrationStatus::TaggedSymbol
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
              Telnyx::Models::SipRegistrationStatusListResponse::CredentialType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        UAC_EXTERNAL_CREDENTIAL =
          T.let(
            :uac_external_credential,
            Telnyx::Models::SipRegistrationStatusListResponse::CredentialType::TaggedSymbol
          )
        TELEPHONY_CREDENTIAL =
          T.let(
            :telephony_credential,
            Telnyx::Models::SipRegistrationStatusListResponse::CredentialType::TaggedSymbol
          )
        SIP_CREDENTIAL_CONNECTION =
          T.let(
            :sip_credential_connection,
            Telnyx::Models::SipRegistrationStatusListResponse::CredentialType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::Models::SipRegistrationStatusListResponse::CredentialType::TaggedSymbol
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
              Telnyx::Models::SipRegistrationStatusListResponse::SipRegistrationDetails,
              Telnyx::Internal::AnyHash
            )
          end

        # Number of authentication retries on the last attempt (uac_external_credential).
        sig { returns(T.nilable(Integer)) }
        attr_reader :auth_retries

        sig { params(auth_retries: Integer).void }
        attr_writer :auth_retries

        # When the current registration expires. The unit depends on `credential_type`:
        # for `uac_external_credential` this is a Unix timestamp (seconds since epoch) of
        # the next scheduled re-registration; for `telephony_credential` and
        # `sip_credential_connection` this is the registration lifetime in seconds as
        # negotiated with the registrar (the `Expires` value, defaulting to 3600 when the
        # endpoint sends none).
        sig { returns(T.nilable(Integer)) }
        attr_reader :expires

        sig { params(expires: Integer).void }
        attr_writer :expires

        # Count of consecutive registration failures (uac_external_credential).
        sig { returns(T.nilable(Integer)) }
        attr_reader :failures

        sig { params(failures: Integer).void }
        attr_writer :failures

        # Timestamp when the registration was last modified (telephony_credential and
        # sip_credential_connection).
        sig { returns(T.nilable(String)) }
        attr_reader :last_modified

        sig { params(last_modified: String).void }
        attr_writer :last_modified

        # Unix timestamp of the next scheduled registration action
        # (uac_external_credential).
        sig { returns(T.nilable(Integer)) }
        attr_reader :next_action_at

        sig { params(next_action_at: Integer).void }
        attr_writer :next_action_at

        # SIP URI user@host of the registered contact (uac_external_credential).
        sig { returns(T.nilable(String)) }
        attr_reader :sip_uri_user_host

        sig { params(sip_uri_user_host: String).void }
        attr_writer :sip_uri_user_host

        # Transport used for the registration, e.g. UDP/TCP/TLS (telephony_credential and
        # sip_credential_connection).
        sig { returns(T.nilable(String)) }
        attr_reader :transport

        sig { params(transport: String).void }
        attr_writer :transport

        # IP address of the registered user agent (telephony_credential and
        # sip_credential_connection).
        sig { returns(T.nilable(String)) }
        attr_reader :ua_ip

        sig { params(ua_ip: String).void }
        attr_writer :ua_ip

        # Port of the registered user agent (telephony_credential and
        # sip_credential_connection).
        sig { returns(T.nilable(Integer)) }
        attr_reader :ua_port

        sig { params(ua_port: Integer).void }
        attr_writer :ua_port

        # Registration uptime reported by the registrar (uac_external_credential).
        sig { returns(T.nilable(Integer)) }
        attr_reader :uptime

        sig { params(uptime: Integer).void }
        attr_writer :uptime

        # Detailed registration information reported by the registrar. The populated
        # fields depend on `credential_type`: UAC external credentials report
        # `auth_retries`, `uptime`, `next_action_at`, `failures`, and `sip_uri_user_host`;
        # telephony credentials and SIP credential connections report `ua_ip`, `ua_port`,
        # `transport`, and `last_modified`. All types report `expires`, but its unit
        # differs by `credential_type` — see that field.
        sig do
          params(
            auth_retries: Integer,
            expires: Integer,
            failures: Integer,
            last_modified: String,
            next_action_at: Integer,
            sip_uri_user_host: String,
            transport: String,
            ua_ip: String,
            ua_port: Integer,
            uptime: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Number of authentication retries on the last attempt (uac_external_credential).
          auth_retries: nil,
          # When the current registration expires. The unit depends on `credential_type`:
          # for `uac_external_credential` this is a Unix timestamp (seconds since epoch) of
          # the next scheduled re-registration; for `telephony_credential` and
          # `sip_credential_connection` this is the registration lifetime in seconds as
          # negotiated with the registrar (the `Expires` value, defaulting to 3600 when the
          # endpoint sends none).
          expires: nil,
          # Count of consecutive registration failures (uac_external_credential).
          failures: nil,
          # Timestamp when the registration was last modified (telephony_credential and
          # sip_credential_connection).
          last_modified: nil,
          # Unix timestamp of the next scheduled registration action
          # (uac_external_credential).
          next_action_at: nil,
          # SIP URI user@host of the registered contact (uac_external_credential).
          sip_uri_user_host: nil,
          # Transport used for the registration, e.g. UDP/TCP/TLS (telephony_credential and
          # sip_credential_connection).
          transport: nil,
          # IP address of the registered user agent (telephony_credential and
          # sip_credential_connection).
          ua_ip: nil,
          # Port of the registered user agent (telephony_credential and
          # sip_credential_connection).
          ua_port: nil,
          # Registration uptime reported by the registrar (uac_external_credential).
          uptime: nil
        )
        end

        sig do
          override.returns(
            {
              auth_retries: Integer,
              expires: Integer,
              failures: Integer,
              last_modified: String,
              next_action_at: Integer,
              sip_uri_user_host: String,
              transport: String,
              ua_ip: String,
              ua_port: Integer,
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
              Telnyx::Models::SipRegistrationStatusListResponse::SipRegistrationStatus
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        UNREGISTERING =
          T.let(
            :unregistering,
            Telnyx::Models::SipRegistrationStatusListResponse::SipRegistrationStatus::TaggedSymbol
          )
        CONNECTION_DISABLED =
          T.let(
            :connection_disabled,
            Telnyx::Models::SipRegistrationStatusListResponse::SipRegistrationStatus::TaggedSymbol
          )
        STANDBY =
          T.let(
            :standby,
            Telnyx::Models::SipRegistrationStatusListResponse::SipRegistrationStatus::TaggedSymbol
          )
        FAILED =
          T.let(
            :failed,
            Telnyx::Models::SipRegistrationStatusListResponse::SipRegistrationStatus::TaggedSymbol
          )
        TRYING =
          T.let(
            :trying,
            Telnyx::Models::SipRegistrationStatusListResponse::SipRegistrationStatus::TaggedSymbol
          )
        REGISTERED =
          T.let(
            :registered,
            Telnyx::Models::SipRegistrationStatusListResponse::SipRegistrationStatus::TaggedSymbol
          )
        UNKNOWN =
          T.let(
            :unknown,
            Telnyx::Models::SipRegistrationStatusListResponse::SipRegistrationStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::Models::SipRegistrationStatusListResponse::SipRegistrationStatus::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
