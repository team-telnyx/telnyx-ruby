# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Networks#list_interfaces
    class NetworkListInterfacesResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::NetworkListInterfacesResponse::Data>, nil]
      optional :data,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::NetworkListInterfacesResponse::Data] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::NetworkListInterfacesResponse::Data>]
      #   @param meta [Telnyx::Models::PaginationMeta]
    end
  end
end
