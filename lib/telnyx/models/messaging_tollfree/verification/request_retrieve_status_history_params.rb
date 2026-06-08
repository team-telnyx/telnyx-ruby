# frozen_string_literal: true

module Telnyx
  module Models
    module MessagingTollfree
      module Verification
        # @see Telnyx::Resources::MessagingTollfree::Verification::Requests#retrieve_status_history
        class RequestRetrieveStatusHistoryParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute page_number
          #   Page number to retrieve (1-based).
          #
          #   @return [Integer]
          required :page_number, Integer

          # @!attribute page_size
          #   Number of items to return per page.
          #
          #   @return [Integer]
          required :page_size, Integer

          # @!method initialize(id:, page_number:, page_size:, request_options: {})
          #   @param id [String]
          #
          #   @param page_number [Integer] Page number to retrieve (1-based).
          #
          #   @param page_size [Integer] Number of items to return per page.
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
