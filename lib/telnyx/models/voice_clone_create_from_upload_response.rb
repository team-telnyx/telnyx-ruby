# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VoiceClones#create_from_upload
    class VoiceCloneCreateFromUploadResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #   A voice clone object.
      #
      #   @return [Telnyx::Models::VoiceCloneData, nil]
      optional :data, -> { Telnyx::VoiceCloneData }

      # @!method initialize(data: nil)
      #   Response envelope for a single voice clone.
      #
      #   @param data [Telnyx::Models::VoiceCloneData] A voice clone object.
    end
  end
end
