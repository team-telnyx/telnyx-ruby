# frozen_string_literal: true

module Telnyx
  module Models
    class ConferenceRecordingSavedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::ConferenceRecordingSaved, nil]
      optional :data, -> { Telnyx::ConferenceRecordingSaved }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::ConferenceRecordingSaved]
    end
  end
end
