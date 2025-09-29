# frozen_string_literal: true

module Telnyx
  module Models
    module ExternalConnections
      # @see Telnyx::Resources::ExternalConnections::Uploads#pending_count
      class UploadPendingCountResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::ExternalConnections::UploadPendingCountResponse::Data, nil]
        optional :data, -> { Telnyx::Models::ExternalConnections::UploadPendingCountResponse::Data }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::ExternalConnections::UploadPendingCountResponse::Data]

        # @see Telnyx::Models::ExternalConnections::UploadPendingCountResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute pending_numbers_count
          #   The count of phone numbers that are pending assignment to the external
          #   connection.
          #
          #   @return [Integer, nil]
          optional :pending_numbers_count, Integer

          # @!attribute pending_orders_count
          #   The count of number uploads that have not yet been uploaded to Microsoft.
          #
          #   @return [Integer, nil]
          optional :pending_orders_count, Integer

          # @!method initialize(pending_numbers_count: nil, pending_orders_count: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::ExternalConnections::UploadPendingCountResponse::Data} for more
          #   details.
          #
          #   @param pending_numbers_count [Integer] The count of phone numbers that are pending assignment to the external connectio
          #
          #   @param pending_orders_count [Integer] The count of number uploads that have not yet been uploaded to Microsoft.
        end
      end
    end
  end
end
