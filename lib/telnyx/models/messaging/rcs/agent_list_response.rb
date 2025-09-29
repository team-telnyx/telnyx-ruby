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
          #   @return [Telnyx::Models::PaginationMeta, nil]
          optional :meta, -> { Telnyx::PaginationMeta }

          # @!method initialize(data: nil, meta: nil)
          #   @param data [Array<Telnyx::Models::RcsAgent>]
          #   @param meta [Telnyx::Models::PaginationMeta]
        end
      end
    end
  end
end
