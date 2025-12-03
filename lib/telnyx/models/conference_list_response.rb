# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Conferences#list
    class ConferenceListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::Conference>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Conference] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::Conference>]
      #   @param meta [Telnyx::Models::PaginationMeta]
    end
  end
end
