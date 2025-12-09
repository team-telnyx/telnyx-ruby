# frozen_string_literal: true

module Telnyx
  module Models
    module Messaging
      module Rcs
        # @see Telnyx::Resources::Messaging::Rcs::Agents#list
        class AgentListResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Array<Telnyx::Models::RcsAgent>, nil]
          optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::RcsAgent] }

          # @!attribute meta
          #
          #   @return [Telnyx::Models::Messaging::Rcs::AgentListResponse::Meta, nil]
          optional :meta, -> { Telnyx::Models::Messaging::Rcs::AgentListResponse::Meta }

          # @!method initialize(data: nil, meta: nil)
          #   @param data [Array<Telnyx::Models::RcsAgent>]
          #   @param meta [Telnyx::Models::Messaging::Rcs::AgentListResponse::Meta]

          # @see Telnyx::Models::Messaging::Rcs::AgentListResponse#meta
          class Meta < Telnyx::Internal::Type::BaseModel
            # @!attribute page_number
            #
            #   @return [Integer]
            required :page_number, Integer

            # @!attribute page_size
            #
            #   @return [Integer]
            required :page_size, Integer

            # @!attribute total_pages
            #
            #   @return [Integer]
            required :total_pages, Integer

            # @!attribute total_results
            #
            #   @return [Integer]
            required :total_results, Integer

            # @!method initialize(page_number:, page_size:, total_pages:, total_results:)
            #   @param page_number [Integer]
            #   @param page_size [Integer]
            #   @param total_pages [Integer]
            #   @param total_results [Integer]
          end
        end
      end
    end
  end
end
