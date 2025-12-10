# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::IPs#list
    class IPListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::IP>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::IP] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::ConnectionsPaginationMeta, nil]
      optional :meta, -> { Telnyx::ConnectionsPaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::IP>]
      #   @param meta [Telnyx::Models::ConnectionsPaginationMeta]
    end
  end
end
