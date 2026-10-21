# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::TtsIntegrations#retrieve_conformance_runs
    class TtsIntegrationRetrieveConformanceRunsResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::TtsIntegrations::CommunityTtsConformanceRun>]
      required :data,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::TtsIntegrations::CommunityTtsConformanceRun] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::CommunityTtsEngineListMeta]
      required :meta, -> { Telnyx::CommunityTtsEngineListMeta }

      # @!method initialize(data:, meta:)
      #   @param data [Array<Telnyx::Models::TtsIntegrations::CommunityTtsConformanceRun>]
      #   @param meta [Telnyx::Models::CommunityTtsEngineListMeta]
    end
  end
end
