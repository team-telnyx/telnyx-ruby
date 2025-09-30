# frozen_string_literal: true

module Telnyx
  module Models
    module CredentialConnections
      # @see Telnyx::Resources::CredentialConnections::Actions#check_registration_status
      class ActionCheckRegistrationStatusResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::CredentialConnections::ActionCheckRegistrationStatusResponse::Data, nil]
        optional :data, -> { Telnyx::Models::CredentialConnections::ActionCheckRegistrationStatusResponse::Data }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::CredentialConnections::ActionCheckRegistrationStatusResponse::Data]

        # @see Telnyx::Models::CredentialConnections::ActionCheckRegistrationStatusResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute ip_address
          #   The ip used during the SIP connection
          #
          #   @return [String, nil]
          optional :ip_address, String

          # @!attribute last_registration
          #   ISO 8601 formatted date indicating when the resource was last updated.
          #
          #   @return [String, nil]
          optional :last_registration, String

          # @!attribute port
          #   The port of the SIP connection
          #
          #   @return [Integer, nil]
          optional :port, Integer

          # @!attribute record_type
          #   Identifies the type of the resource.
          #
          #   @return [String, nil]
          optional :record_type, String

          # @!attribute sip_username
          #   The user name of the SIP connection
          #
          #   @return [String, nil]
          optional :sip_username, String

          # @!attribute status
          #   The current registration status of your SIP connection
          #
          #   @return [Symbol, Telnyx::Models::CredentialConnections::ActionCheckRegistrationStatusResponse::Data::Status, nil]
          optional :status,
                   enum: -> { Telnyx::Models::CredentialConnections::ActionCheckRegistrationStatusResponse::Data::Status }

          # @!attribute transport
          #   The protocol of the SIP connection
          #
          #   @return [String, nil]
          optional :transport, String

          # @!attribute user_agent
          #   The user agent of the SIP connection
          #
          #   @return [String, nil]
          optional :user_agent, String

          # @!method initialize(ip_address: nil, last_registration: nil, port: nil, record_type: nil, sip_username: nil, status: nil, transport: nil, user_agent: nil)
          #   @param ip_address [String] The ip used during the SIP connection
          #
          #   @param last_registration [String] ISO 8601 formatted date indicating when the resource was last updated.
          #
          #   @param port [Integer] The port of the SIP connection
          #
          #   @param record_type [String] Identifies the type of the resource.
          #
          #   @param sip_username [String] The user name of the SIP connection
          #
          #   @param status [Symbol, Telnyx::Models::CredentialConnections::ActionCheckRegistrationStatusResponse::Data::Status] The current registration status of your SIP connection
          #
          #   @param transport [String] The protocol of the SIP connection
          #
          #   @param user_agent [String] The user agent of the SIP connection

          # The current registration status of your SIP connection
          #
          # @see Telnyx::Models::CredentialConnections::ActionCheckRegistrationStatusResponse::Data#status
          module Status
            extend Telnyx::Internal::Type::Enum

            NOT_APPLICABLE = :"Not Applicable"
            NOT_REGISTERED = :"Not Registered"
            FAILED = :Failed
            EXPIRED = :Expired
            REGISTERED = :Registered
            UNREGISTERED = :Unregistered

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
