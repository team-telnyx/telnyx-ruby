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
          #
          #   @return [Integer]
          required :page_number, Integer

          # @!attribute page_size
          #   Request this many records per page. This value is automatically clamped if the
          #   provided value is too large.
          #
          #   @return [Integer]
          required :page_size, Integer

          # @!method initialize(id:, page_number:, page_size:, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::MessagingTollfree::Verification::RequestRetrieveStatusHistoryParams}
          #   for more details.
          #
          #   @param id [String]
          #
          #   @param page_number [Integer]
          #
          #   @param page_size [Integer] Request this many records per page. This value is automatically clamped if the p
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
