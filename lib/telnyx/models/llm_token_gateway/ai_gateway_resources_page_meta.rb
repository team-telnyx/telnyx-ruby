# frozen_string_literal: true

module Telnyx
  module Models
    module LlmTokenGateway
      class AIGatewayResourcesPageMeta < Telnyx::Internal::Type::BaseModel
        # @!attribute has_more
        #
        #   @return [Boolean]
        required :has_more, Telnyx::Internal::Type::Boolean

        # @!attribute page_number
        #
        #   @return [Integer]
        required :page_number, Integer

        # @!attribute page_size
        #
        #   @return [Integer]
        required :page_size, Integer

        # @!attribute snapshot
        #
        #   @return [String]
        required :snapshot, String

        # @!method initialize(has_more:, page_number:, page_size:, snapshot:)
        #   @param has_more [Boolean]
        #   @param page_number [Integer]
        #   @param page_size [Integer]
        #   @param snapshot [String]
      end
    end
  end
end
