# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::TtsIntegrations#list
    class TtsIntegrationListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::CommunityTtsEngine>]
      required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::CommunityTtsEngine] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::CommunityTtsEngineListMeta]
      required :meta, -> { Telnyx::CommunityTtsEngineListMeta }

      # @!method initialize(data:, meta:)
      #   @param data [Array<Telnyx::Models::CommunityTtsEngine>]
      #   @param meta [Telnyx::Models::CommunityTtsEngineListMeta]
    end
  end
end
