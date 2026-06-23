# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VoiceDesigns#rename
    class VoiceDesignRenameResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #   A summarized voice design object (without version-specific fields).
      #
      #   @return [Telnyx::Models::VoiceDesignSummaryData, nil]
      optional :data, -> { Telnyx::VoiceDesignSummaryData }

      # @!method initialize(data: nil)
      #   Response envelope for a voice design after a rename operation (no
      #   version-specific fields).
      #
      #   @param data [Telnyx::Models::VoiceDesignSummaryData] A summarized voice design object (without version-specific fields).
    end
  end
end
