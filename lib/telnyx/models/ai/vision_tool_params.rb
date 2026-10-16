# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class VisionToolParams < Telnyx::Internal::Type::BaseModel
        # @!attribute max_frame_age_secs
        #   Frames received longer ago than this many seconds are not shown to the
        #   assistant, so it never describes a frozen or disconnected camera as live.
        #
        #   @return [Integer, nil]
        optional :max_frame_age_secs, Integer

        # @!method initialize(max_frame_age_secs: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::VisionToolParams} for more details.
        #
        #   @param max_frame_age_secs [Integer] Frames received longer ago than this many seconds are not shown to the assistant
      end
    end
  end
end
