# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VirtualCrossConnects#list
    class VirtualCrossConnectListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::VirtualCrossConnectListResponse::Data>, nil]
      optional :data,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::VirtualCrossConnectListResponse::Data] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::VirtualCrossConnectListResponse::Data>]
      #   @param meta [Telnyx::Models::PaginationMeta]
    end
  end
end
