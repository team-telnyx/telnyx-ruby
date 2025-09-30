# frozen_string_literal: true

module Telnyx
  module Models
    module MessagingProfiles
      # @see Telnyx::Resources::MessagingProfiles::AutorespConfigs#list
      class AutorespConfigListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::MessagingProfiles::AutoRespConfig>]
        required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::MessagingProfiles::AutoRespConfig] }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::PaginationMeta]
        required :meta, -> { Telnyx::PaginationMeta }

        # @!method initialize(data:, meta:)
        #   List of Auto-Response Settings
        #
        #   @param data [Array<Telnyx::Models::MessagingProfiles::AutoRespConfig>]
        #   @param meta [Telnyx::Models::PaginationMeta]
      end
    end
  end
end
