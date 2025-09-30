# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::FaxApplications#list
    class FaxApplicationListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::FaxApplication>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::FaxApplication] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::FaxApplication>]
      #   @param meta [Telnyx::Models::PaginationMeta]
    end
  end
end
