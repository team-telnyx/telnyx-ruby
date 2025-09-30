# frozen_string_literal: true

module Telnyx
  module Models
    module ExternalConnections
      class Upload < Telnyx::Internal::Type::BaseModel
        # @!attribute available_usages
        #
        #   @return [Array<Symbol, Telnyx::Models::ExternalConnections::Upload::AvailableUsage>, nil]
        optional :available_usages,
                 -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::ExternalConnections::Upload::AvailableUsage] }

        # @!attribute error_code
        #   A code returned by Microsoft Teams if there is an error with the upload process.
        #
        #   @return [String, nil]
        optional :error_code, String

        # @!attribute error_message
        #   A message set if there is an error with the upload process.
        #
        #   @return [String, nil]
        optional :error_message, String

        # @!attribute location_id
        #
        #   @return [String, nil]
        optional :location_id, String

        # @!attribute status
        #   Represents the status of the upload on Microsoft Teams.
        #
        #   @return [Symbol, Telnyx::Models::ExternalConnections::Upload::Status, nil]
        optional :status, enum: -> { Telnyx::ExternalConnections::Upload::Status }

        # @!attribute tenant_id
        #
        #   @return [String, nil]
        optional :tenant_id, String

        # @!attribute ticket_id
        #   Uniquely identifies the resource.
        #
        #   @return [String, nil]
        optional :ticket_id, String

        # @!attribute tn_upload_entries
        #
        #   @return [Array<Telnyx::Models::ExternalConnections::TnUploadEntry>, nil]
        optional :tn_upload_entries,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::ExternalConnections::TnUploadEntry] }

        # @!method initialize(available_usages: nil, error_code: nil, error_message: nil, location_id: nil, status: nil, tenant_id: nil, ticket_id: nil, tn_upload_entries: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::ExternalConnections::Upload} for more details.
        #
        #   @param available_usages [Array<Symbol, Telnyx::Models::ExternalConnections::Upload::AvailableUsage>]
        #
        #   @param error_code [String] A code returned by Microsoft Teams if there is an error with the upload process.
        #
        #   @param error_message [String] A message set if there is an error with the upload process.
        #
        #   @param location_id [String]
        #
        #   @param status [Symbol, Telnyx::Models::ExternalConnections::Upload::Status] Represents the status of the upload on Microsoft Teams.
        #
        #   @param tenant_id [String]
        #
        #   @param ticket_id [String] Uniquely identifies the resource.
        #
        #   @param tn_upload_entries [Array<Telnyx::Models::ExternalConnections::TnUploadEntry>]

        # Available usages for the numbers in the upload on Microsoft Teams.
        module AvailableUsage
          extend Telnyx::Internal::Type::Enum

          CALLING_USER_ASSIGNMENT = :calling_user_assignment
          FIRST_PARTY_APP_ASSIGNMENT = :first_party_app_assignment

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Represents the status of the upload on Microsoft Teams.
        #
        # @see Telnyx::Models::ExternalConnections::Upload#status
        module Status
          extend Telnyx::Internal::Type::Enum

          PENDING_UPLOAD = :pending_upload
          PENDING = :pending
          IN_PROGRESS = :in_progress
          PARTIAL_SUCCESS = :partial_success
          SUCCESS = :success
          ERROR = :error

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
