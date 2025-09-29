# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::CallControlApplications#list
    class CallControlApplicationListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::CallControlApplication>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::CallControlApplication] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::CallControlApplication>]
      #   @param meta [Telnyx::Models::PaginationMeta]
    end
  end
end
