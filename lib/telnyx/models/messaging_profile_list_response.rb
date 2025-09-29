# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MessagingProfiles#list
    class MessagingProfileListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::MessagingProfile>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::MessagingProfile] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::MessagingProfile>]
      #   @param meta [Telnyx::Models::PaginationMeta]
    end
  end
end
