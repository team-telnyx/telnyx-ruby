# frozen_string_literal: true

module Telnyx
  module Models
    module Porting
      # @see Telnyx::Resources::Porting::Reports#list
      class ReportListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::Porting::PortingReport>, nil]
        optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Porting::PortingReport] }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::PaginationMeta, nil]
        optional :meta, -> { Telnyx::PaginationMeta }

        # @!method initialize(data: nil, meta: nil)
        #   @param data [Array<Telnyx::Models::Porting::PortingReport>]
        #   @param meta [Telnyx::Models::PaginationMeta]
      end
    end
  end
end
