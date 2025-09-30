# frozen_string_literal: true

module Telnyx
  module Models
    module ExternalConnections
      # @see Telnyx::Resources::ExternalConnections::Uploads#create
      class UploadCreateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute success
        #   Describes wether or not the operation was successful
        #
        #   @return [Boolean, nil]
        optional :success, Telnyx::Internal::Type::Boolean

        # @!attribute ticket_id
        #   Ticket id of the upload request
        #
        #   @return [String, nil]
        optional :ticket_id, String

        # @!method initialize(success: nil, ticket_id: nil)
        #   @param success [Boolean] Describes wether or not the operation was successful
        #
        #   @param ticket_id [String] Ticket id of the upload request
      end
    end
  end
end
