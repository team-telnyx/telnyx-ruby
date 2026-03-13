# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VoiceDesigns#create
    class VoiceDesignCreateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #   A voice design object with full version detail.
      #
      #   @return [Telnyx::Models::VoiceDesignData, nil]
      optional :data, -> { Telnyx::VoiceDesignData }

      # @!method initialize(data: nil)
      #   Response envelope for a single voice design with full version detail.
      #
      #   @param data [Telnyx::Models::VoiceDesignData] A voice design object with full version detail.
    end
  end
end
