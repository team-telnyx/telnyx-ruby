# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::OutboundVoiceProfiles#list
    class OutboundVoiceProfileListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::OutboundVoiceProfile>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::OutboundVoiceProfile] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::OutboundVoiceProfile>]
      #   @param meta [Telnyx::Models::PaginationMeta]
    end
  end
end
