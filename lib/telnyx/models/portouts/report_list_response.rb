# frozen_string_literal: true

module Telnyx
  module Models
    module Portouts
      # @see Telnyx::Resources::Portouts::Reports#list
      class ReportListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::Portouts::PortoutReport>, nil]
        optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Portouts::PortoutReport] }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::PaginationMeta, nil]
        optional :meta, -> { Telnyx::PaginationMeta }

        # @!method initialize(data: nil, meta: nil)
        #   @param data [Array<Telnyx::Models::Portouts::PortoutReport>]
        #   @param meta [Telnyx::Models::PaginationMeta]
      end
    end
  end
end
