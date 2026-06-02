# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SipRegistrationStatus#retrieve
    class SipRegistrationStatusRetrieveResponse < Telnyx::Internal::Type::BaseModel
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

      # @!attribute credential_username
      #   SIP username used for the registration.
      #
      #   @return [String, nil]
      optional :credential_username, String

      # @!attribute last_registration_response
      #   SIP response from the last registration attempt.
      #
      #   @return [String, nil]
      optional :last_registration_response, String

      # @!attribute registered
      #   True if the endpoint is currently registered.
      #
      #   @return [Boolean, nil]
      optional :registered, Telnyx::Internal::Type::Boolean

      # @!attribute sip_registration_details
      #   Detailed registration information reported by the registrar.
      #
      #   @return [Telnyx::Models::SipRegistrationStatusRetrieveResponse::SipRegistrationDetails, nil]
      optional :sip_registration_details,
               -> { Telnyx::Models::SipRegistrationStatusRetrieveResponse::SipRegistrationDetails }

      # @!attribute sip_registration_status
      #   Human-readable registration status derived from the registrar state.
      #
      #   @return [Symbol, Telnyx::Models::SipRegistrationStatusRetrieveResponse::SipRegistrationStatus, nil]
      optional :sip_registration_status,
               enum: -> { Telnyx::Models::SipRegistrationStatusRetrieveResponse::SipRegistrationStatus }

      # @!method initialize(connection_id: nil, connection_name: nil, credential_type: nil, credential_username: nil, last_registration_response: nil, registered: nil, sip_registration_details: nil, sip_registration_status: nil)
      #   @param connection_id [String] Identifier of the UAC connection.
      #
      #   @param connection_name [String] Human-readable connection name.
      #
      #   @param credential_type [Symbol, Telnyx::Models::SipRegistrationStatusRetrieveResponse::CredentialType] The credential type that was looked up.
      #
      #   @param credential_username [String] SIP username used for the registration.
      #
      #   @param last_registration_response [String] SIP response from the last registration attempt.
      #
      #   @param registered [Boolean] True if the endpoint is currently registered.
      #
      #   @param sip_registration_details [Telnyx::Models::SipRegistrationStatusRetrieveResponse::SipRegistrationDetails] Detailed registration information reported by the registrar.
      #
      #   @param sip_registration_status [Symbol, Telnyx::Models::SipRegistrationStatusRetrieveResponse::SipRegistrationStatus] Human-readable registration status derived from the registrar state.

      # The credential type that was looked up.
      #
      # @see Telnyx::Models::SipRegistrationStatusRetrieveResponse#credential_type
      module CredentialType
        extend Telnyx::Internal::Type::Enum

        UAC_EXTERNAL_CREDENTIAL = :uac_external_credential

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::SipRegistrationStatusRetrieveResponse#sip_registration_details
      class SipRegistrationDetails < Telnyx::Internal::Type::BaseModel
        # @!attribute auth_retries
        #   Number of authentication retries on the last attempt.
        #
        #   @return [Integer, nil]
        optional :auth_retries, Integer

        # @!attribute expires
        #   Unix timestamp when the current registration expires.
        #
        #   @return [Integer, nil]
        optional :expires, Integer

        # @!attribute failures
        #   Count of consecutive registration failures.
        #
        #   @return [Integer, nil]
        optional :failures, Integer

        # @!attribute next_action_at
        #   Unix timestamp of the next scheduled registration action.
        #
        #   @return [Integer, nil]
        optional :next_action_at, Integer

        # @!attribute sip_uri_user_host
        #   SIP URI user@host of the registered contact.
        #
        #   @return [String, nil]
        optional :sip_uri_user_host, String, api_name: :sipUriUserHost

        # @!attribute uptime
        #   Registration uptime reported by the registrar.
        #
        #   @return [Integer, nil]
        optional :uptime, Integer

        # @!method initialize(auth_retries: nil, expires: nil, failures: nil, next_action_at: nil, sip_uri_user_host: nil, uptime: nil)
        #   Detailed registration information reported by the registrar.
        #
        #   @param auth_retries [Integer] Number of authentication retries on the last attempt.
        #
        #   @param expires [Integer] Unix timestamp when the current registration expires.
        #
        #   @param failures [Integer] Count of consecutive registration failures.
        #
        #   @param next_action_at [Integer] Unix timestamp of the next scheduled registration action.
        #
        #   @param sip_uri_user_host [String] SIP URI user@host of the registered contact.
        #
        #   @param uptime [Integer] Registration uptime reported by the registrar.
      end

      # Human-readable registration status derived from the registrar state.
      #
      # @see Telnyx::Models::SipRegistrationStatusRetrieveResponse#sip_registration_status
      module SipRegistrationStatus
        extend Telnyx::Internal::Type::Enum

        UNREGISTERING = :unregistering
        CONNECTION_DISABLED = :connection_disabled
        STANDBY = :standby
        FAILED = :failed
        TRYING = :trying
        REGISTERED = :registered
        UNKNOWN = :unknown

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
