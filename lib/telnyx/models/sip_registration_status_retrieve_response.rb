# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SipRegistrationStatus#retrieve
    class SipRegistrationStatusRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute b2bua_external
      #   Raw external-side registration block reported by the registrar.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :b2bua_external, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

      # @!attribute b2bua_internal
      #   Raw internal-side block reported by the registrar.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :b2bua_internal, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

      # @!attribute connection_id
      #   Identifier of the UAC connection.
      #
      #   @return [String, nil]
      optional :connection_id, String

      # @!attribute connection_name
      #   Human-readable connection name.
      #
      #   @return [String, nil]
      optional :connection_name, String

      # @!attribute credential_type
      #   The credential type that was looked up.
      #
      #   @return [Symbol, Telnyx::Models::SipRegistrationStatusRetrieveResponse::CredentialType, nil]
      optional :credential_type,
               enum: -> { Telnyx::Models::SipRegistrationStatusRetrieveResponse::CredentialType }

      # @!attribute external_state
      #   Registration state on the external (UAC / PBX) side, e.g. REGED.
      #
      #   @return [String, nil]
      optional :external_state, String

      # @!attribute external_uac_settings
      #   Outward-facing SIP settings used for registration. Password is redacted.
      #
      #   @return [Telnyx::Models::SipRegistrationStatusRetrieveResponse::ExternalUacSettings, nil]
      optional :external_uac_settings,
               -> { Telnyx::Models::SipRegistrationStatusRetrieveResponse::ExternalUacSettings }

      # @!attribute internal_uac_settings
      #   Internal routing target the connection delivers calls to.
      #
      #   @return [Telnyx::Models::SipRegistrationStatusRetrieveResponse::InternalUacSettings, nil]
      optional :internal_uac_settings,
               -> { Telnyx::Models::SipRegistrationStatusRetrieveResponse::InternalUacSettings }

      # @!attribute last_registration_response
      #   SIP response from the last registration attempt.
      #
      #   @return [String, nil]
      optional :last_registration_response, String

      # @!attribute pair_state
      #   Internal pairing state, e.g. ACTIVE or INACTIVE.
      #
      #   @return [String, nil]
      optional :pair_state, String

      # @!attribute registered
      #   True if the endpoint is currently registered.
      #
      #   @return [Boolean, nil]
      optional :registered, Telnyx::Internal::Type::Boolean

      # @!attribute user_id
      #   Owner of the connection.
      #
      #   @return [String, nil]
      optional :user_id, String

      # @!attribute username
      #   SIP username used for the registration.
      #
      #   @return [String, nil]
      optional :username, String

      # @!method initialize(b2bua_external: nil, b2bua_internal: nil, connection_id: nil, connection_name: nil, credential_type: nil, external_state: nil, external_uac_settings: nil, internal_uac_settings: nil, last_registration_response: nil, pair_state: nil, registered: nil, user_id: nil, username: nil)
      #   @param b2bua_external [Hash{Symbol=>Object}] Raw external-side registration block reported by the registrar.
      #
      #   @param b2bua_internal [Hash{Symbol=>Object}] Raw internal-side block reported by the registrar.
      #
      #   @param connection_id [String] Identifier of the UAC connection.
      #
      #   @param connection_name [String] Human-readable connection name.
      #
      #   @param credential_type [Symbol, Telnyx::Models::SipRegistrationStatusRetrieveResponse::CredentialType] The credential type that was looked up.
      #
      #   @param external_state [String] Registration state on the external (UAC / PBX) side, e.g. REGED.
      #
      #   @param external_uac_settings [Telnyx::Models::SipRegistrationStatusRetrieveResponse::ExternalUacSettings] Outward-facing SIP settings used for registration. Password is redacted.
      #
      #   @param internal_uac_settings [Telnyx::Models::SipRegistrationStatusRetrieveResponse::InternalUacSettings] Internal routing target the connection delivers calls to.
      #
      #   @param last_registration_response [String] SIP response from the last registration attempt.
      #
      #   @param pair_state [String] Internal pairing state, e.g. ACTIVE or INACTIVE.
      #
      #   @param registered [Boolean] True if the endpoint is currently registered.
      #
      #   @param user_id [String] Owner of the connection.
      #
      #   @param username [String] SIP username used for the registration.

      # The credential type that was looked up.
      #
      # @see Telnyx::Models::SipRegistrationStatusRetrieveResponse#credential_type
      module CredentialType
        extend Telnyx::Internal::Type::Enum

        UAC_EXTERNAL_CREDENTIAL = :uac_external_credential

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::SipRegistrationStatusRetrieveResponse#external_uac_settings
      class ExternalUacSettings < Telnyx::Internal::Type::BaseModel
        # @!attribute auth_username
        #
        #   @return [String, nil]
        optional :auth_username, String

        # @!attribute expiration_sec
        #
        #   @return [Integer, nil]
        optional :expiration_sec, Integer

        # @!attribute from_user
        #
        #   @return [String, nil]
        optional :from_user, String

        # @!attribute outbound_proxy
        #
        #   @return [String, nil]
        optional :outbound_proxy, String

        # @!attribute password
        #   Always redacted.
        #
        #   @return [String, nil]
        optional :password, String

        # @!attribute proxy
        #
        #   @return [String, nil]
        optional :proxy, String

        # @!attribute transport
        #
        #   @return [Symbol, Telnyx::Models::SipRegistrationStatusRetrieveResponse::ExternalUacSettings::Transport, nil]
        optional :transport,
                 enum: -> { Telnyx::Models::SipRegistrationStatusRetrieveResponse::ExternalUacSettings::Transport }

        # @!attribute username
        #
        #   @return [String, nil]
        optional :username, String

        # @!method initialize(auth_username: nil, expiration_sec: nil, from_user: nil, outbound_proxy: nil, password: nil, proxy: nil, transport: nil, username: nil)
        #   Outward-facing SIP settings used for registration. Password is redacted.
        #
        #   @param auth_username [String]
        #
        #   @param expiration_sec [Integer]
        #
        #   @param from_user [String]
        #
        #   @param outbound_proxy [String]
        #
        #   @param password [String] Always redacted.
        #
        #   @param proxy [String]
        #
        #   @param transport [Symbol, Telnyx::Models::SipRegistrationStatusRetrieveResponse::ExternalUacSettings::Transport]
        #
        #   @param username [String]

        # @see Telnyx::Models::SipRegistrationStatusRetrieveResponse::ExternalUacSettings#transport
        module Transport
          extend Telnyx::Internal::Type::Enum

          TCP = :TCP
          UDP = :UDP
          TLS = :TLS

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see Telnyx::Models::SipRegistrationStatusRetrieveResponse#internal_uac_settings
      class InternalUacSettings < Telnyx::Internal::Type::BaseModel
        # @!attribute destination_uri
        #
        #   @return [String, nil]
        optional :destination_uri, String

        # @!method initialize(destination_uri: nil)
        #   Internal routing target the connection delivers calls to.
        #
        #   @param destination_uri [String]
      end
    end
  end
end
