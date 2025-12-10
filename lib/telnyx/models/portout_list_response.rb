# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Portouts#list
    class PortoutListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::PortoutDetails>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::PortoutDetails] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::Metadata, nil]
      optional :meta, -> { Telnyx::Metadata }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::PortoutDetails>]
      #   @param meta [Telnyx::Models::Metadata]
    end
  end
end
