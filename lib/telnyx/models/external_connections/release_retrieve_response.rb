# frozen_string_literal: true

module Telnyx
  module Models
    module ExternalConnections
      # @see Telnyx::Resources::ExternalConnections::Releases#retrieve
      class ReleaseRetrieveResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::ExternalConnections::ReleaseRetrieveResponse::Data, nil]
        optional :data, -> { Telnyx::Models::ExternalConnections::ReleaseRetrieveResponse::Data }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::ExternalConnections::ReleaseRetrieveResponse::Data]

        # @see Telnyx::Models::ExternalConnections::ReleaseRetrieveResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute created_at
          #   ISO 8601 formatted date indicating when the resource was created.
          #
          #   @return [String, nil]
          optional :created_at, String

          # @!attribute error_message
          #   A message set if there is an error with the upload process.
          #
          #   @return [String, nil]
          optional :error_message, String

          # @!attribute status
          #   Represents the status of the release on Microsoft Teams.
          #
          #   @return [Symbol, Telnyx::Models::ExternalConnections::ReleaseRetrieveResponse::Data::Status, nil]
          optional :status, enum: -> { Telnyx::Models::ExternalConnections::ReleaseRetrieveResponse::Data::Status }

          # @!attribute telephone_numbers
          #
          #   @return [Array<Telnyx::Models::ExternalConnections::ReleaseRetrieveResponse::Data::TelephoneNumber>, nil]
          optional :telephone_numbers,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::ExternalConnections::ReleaseRetrieveResponse::Data::TelephoneNumber] }

          # @!attribute tenant_id
          #
          #   @return [String, nil]
          optional :tenant_id, String

          # @!attribute ticket_id
          #   Uniquely identifies the resource.
          #
          #   @return [String, nil]
          optional :ticket_id, String

          # @!method initialize(created_at: nil, error_message: nil, status: nil, telephone_numbers: nil, tenant_id: nil, ticket_id: nil)
          #   @param created_at [String] ISO 8601 formatted date indicating when the resource was created.
          #
          #   @param error_message [String] A message set if there is an error with the upload process.
          #
          #   @param status [Symbol, Telnyx::Models::ExternalConnections::ReleaseRetrieveResponse::Data::Status] Represents the status of the release on Microsoft Teams.
          #
          #   @param telephone_numbers [Array<Telnyx::Models::ExternalConnections::ReleaseRetrieveResponse::Data::TelephoneNumber>]
          #
          #   @param tenant_id [String]
          #
          #   @param ticket_id [String] Uniquely identifies the resource.

          # Represents the status of the release on Microsoft Teams.
          #
          # @see Telnyx::Models::ExternalConnections::ReleaseRetrieveResponse::Data#status
          module Status
            extend Telnyx::Internal::Type::Enum

            PENDING_UPLOAD = :pending_upload
            PENDING = :pending
            IN_PROGRESS = :in_progress
            COMPLETE = :complete
            FAILED = :failed
            EXPIRED = :expired
            UNKNOWN = :unknown

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          class TelephoneNumber < Telnyx::Internal::Type::BaseModel
            # @!attribute number_id
            #   Phone number ID from the Telnyx API.
            #
            #   @return [String, nil]
            optional :number_id, String

            # @!attribute phone_number
            #   Phone number in E164 format.
            #
            #   @return [String, nil]
            optional :phone_number, String

            # @!method initialize(number_id: nil, phone_number: nil)
            #   @param number_id [String] Phone number ID from the Telnyx API.
            #
            #   @param phone_number [String] Phone number in E164 format.
          end
        end
      end
    end
  end
end
