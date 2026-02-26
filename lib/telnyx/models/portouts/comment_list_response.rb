# frozen_string_literal: true

module Telnyx
  module Models
    module Portouts
      # @see Telnyx::Resources::Portouts::Comments#list
      class CommentListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::Portouts::PortoutComment>, nil]
        optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Portouts::PortoutComment] }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::Metadata, nil]
        optional :meta, -> { Telnyx::Metadata }

        # @!method initialize(data: nil, meta: nil)
        #   @param data [Array<Telnyx::Models::Portouts::PortoutComment>]
        #   @param meta [Telnyx::Models::Metadata]
      end
    end
  end
end
