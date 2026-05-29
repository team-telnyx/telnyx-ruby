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

      # Identifier of the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :connection_id

      sig { params(connection_id: String).void }
      attr_writer :connection_id

      # Human-readable connection name.
      sig { returns(T.nilable(String)) }
      attr_reader :connection_name

      sig { params(connection_name: String).void }
      attr_writer :connection_name

      # Outward-facing SIP settings used for registration. Password is redacted.
      sig do
        returns(
          T.nilable(
            Telnyx::Models::SipRegistrationStatusRetrieveResponse::ExternalUacSettings
          )
        )
      end
      attr_reader :external_uac_settings

      sig do
        params(
          external_uac_settings:
            Telnyx::Models::SipRegistrationStatusRetrieveResponse::ExternalUacSettings::OrHash
        ).void
      end
      attr_writer :external_uac_settings

      # Internal routing target the connection delivers calls to.
      sig do
        returns(
          T.nilable(
            Telnyx::Models::SipRegistrationStatusRetrieveResponse::InternalUacSettings
          )
        )
      end
      attr_reader :internal_uac_settings

      sig do
        params(
          internal_uac_settings:
            Telnyx::Models::SipRegistrationStatusRetrieveResponse::InternalUacSettings::OrHash
        ).void
      end
      attr_writer :internal_uac_settings

      # SIP response from the last registration attempt.
      sig { returns(T.nilable(String)) }
      attr_reader :last_registration_response

      sig { params(last_registration_response: String).void }
      attr_writer :last_registration_response

      # Internal pairing state, e.g. ACTIVE or INACTIVE.
      sig { returns(T.nilable(String)) }
      attr_reader :pair_state

      sig { params(pair_state: String).void }
      attr_writer :pair_state

      # True if the endpoint is currently registered.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :registered

      sig { params(registered: T::Boolean).void }
      attr_writer :registered

      # Owner of the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :user_id

      sig { params(user_id: String).void }
      attr_writer :user_id

      # SIP username used for the registration.
      sig { returns(T.nilable(String)) }
      attr_reader :username

      sig { params(username: String).void }
      attr_writer :username

      sig do
        params(
          connection_id: String,
          connection_name: String,
          external_uac_settings:
            Telnyx::Models::SipRegistrationStatusRetrieveResponse::ExternalUacSettings::OrHash,
          internal_uac_settings:
            Telnyx::Models::SipRegistrationStatusRetrieveResponse::InternalUacSettings::OrHash,
          last_registration_response: String,
          pair_state: String,
          registered: T::Boolean,
          user_id: String,
          username: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifier of the resource.
        connection_id: nil,
        # Human-readable connection name.
        connection_name: nil,
        # Outward-facing SIP settings used for registration. Password is redacted.
        external_uac_settings: nil,
        # Internal routing target the connection delivers calls to.
        internal_uac_settings: nil,
        # SIP response from the last registration attempt.
        last_registration_response: nil,
        # Internal pairing state, e.g. ACTIVE or INACTIVE.
        pair_state: nil,
        # True if the endpoint is currently registered.
        registered: nil,
        # Owner of the resource.
        user_id: nil,
        # SIP username used for the registration.
        username: nil
      )
      end

      sig do
        override.returns(
          {
            connection_id: String,
            connection_name: String,
            external_uac_settings:
              Telnyx::Models::SipRegistrationStatusRetrieveResponse::ExternalUacSettings,
            internal_uac_settings:
              Telnyx::Models::SipRegistrationStatusRetrieveResponse::InternalUacSettings,
            last_registration_response: String,
            pair_state: String,
            registered: T::Boolean,
            user_id: String,
            username: String
          }
        )
      end
      def to_hash
      end

      class ExternalUacSettings < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::SipRegistrationStatusRetrieveResponse::ExternalUacSettings,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :auth_username

        sig { params(auth_username: String).void }
        attr_writer :auth_username

        sig { returns(T.nilable(Integer)) }
        attr_reader :expiration_sec

        sig { params(expiration_sec: Integer).void }
        attr_writer :expiration_sec

        sig { returns(T.nilable(String)) }
        attr_reader :from_user

        sig { params(from_user: String).void }
        attr_writer :from_user

        sig { returns(T.nilable(String)) }
        attr_reader :outbound_proxy

        sig { params(outbound_proxy: String).void }
        attr_writer :outbound_proxy

        sig { returns(T.nilable(String)) }
        attr_reader :password

        sig { params(password: String).void }
        attr_writer :password

        sig { returns(T.nilable(String)) }
        attr_reader :proxy

        sig { params(proxy: String).void }
        attr_writer :proxy

        sig do
          returns(
            T.nilable(
              Telnyx::Models::SipRegistrationStatusRetrieveResponse::ExternalUacSettings::Transport::TaggedSymbol
            )
          )
        end
        attr_reader :transport

        sig do
          params(
            transport:
              Telnyx::Models::SipRegistrationStatusRetrieveResponse::ExternalUacSettings::Transport::OrSymbol
          ).void
        end
        attr_writer :transport

        sig { returns(T.nilable(String)) }
        attr_reader :username

        sig { params(username: String).void }
        attr_writer :username

        # Outward-facing SIP settings used for registration. Password is redacted.
        sig do
          params(
            auth_username: String,
            expiration_sec: Integer,
            from_user: String,
            outbound_proxy: String,
            password: String,
            proxy: String,
            transport:
              Telnyx::Models::SipRegistrationStatusRetrieveResponse::ExternalUacSettings::Transport::OrSymbol,
            username: String
          ).returns(T.attached_class)
        end
        def self.new(
          auth_username: nil,
          expiration_sec: nil,
          from_user: nil,
          outbound_proxy: nil,
          password: nil,
          proxy: nil,
          transport: nil,
          username: nil
        )
        end

        sig do
          override.returns(
            {
              auth_username: String,
              expiration_sec: Integer,
              from_user: String,
              outbound_proxy: String,
              password: String,
              proxy: String,
              transport:
                Telnyx::Models::SipRegistrationStatusRetrieveResponse::ExternalUacSettings::Transport::TaggedSymbol,
              username: String
            }
          )
        end
        def to_hash
        end

        module Transport
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::SipRegistrationStatusRetrieveResponse::ExternalUacSettings::Transport
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TCP =
            T.let(
              :TCP,
              Telnyx::Models::SipRegistrationStatusRetrieveResponse::ExternalUacSettings::Transport::TaggedSymbol
            )
          UDP =
            T.let(
              :UDP,
              Telnyx::Models::SipRegistrationStatusRetrieveResponse::ExternalUacSettings::Transport::TaggedSymbol
            )
          TLS =
            T.let(
              :TLS,
              Telnyx::Models::SipRegistrationStatusRetrieveResponse::ExternalUacSettings::Transport::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::SipRegistrationStatusRetrieveResponse::ExternalUacSettings::Transport::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class InternalUacSettings < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::SipRegistrationStatusRetrieveResponse::InternalUacSettings,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :destination_uri

        sig { params(destination_uri: String).void }
        attr_writer :destination_uri

        # Internal routing target the connection delivers calls to.
        sig { params(destination_uri: String).returns(T.attached_class) }
        def self.new(destination_uri: nil)
        end

        sig { override.returns({ destination_uri: String }) }
        def to_hash
        end
      end
    end
  end
end
