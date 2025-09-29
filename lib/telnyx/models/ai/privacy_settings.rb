# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class PrivacySettings < Telnyx::Internal::Type::BaseModel
        # @!attribute data_retention
        #   If true, conversation history and insights will be stored. If false, they will
        #   not be stored. This in‑tool toggle governs solely the retention of conversation
        #   history and insights via the AI assistant. It has no effect on any separate
        #   recording, transcription, or storage configuration that you have set at the
        #   account, number, or application level. All such external settings remain in
        #   force regardless of your selection here.
        #
        #   @return [Boolean, nil]
        optional :data_retention, Telnyx::Internal::Type::Boolean

        # @!method initialize(data_retention: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::PrivacySettings} for more details.
        #
        #   @param data_retention [Boolean] If true, conversation history and insights will be stored. If false, they will n
      end
    end
  end
end
