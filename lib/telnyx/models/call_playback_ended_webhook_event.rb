# frozen_string_literal: true

module Telnyx
  module Models
    class CallPlaybackEndedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallPlaybackEnded, nil]
      optional :data, -> { Telnyx::CallPlaybackEnded }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallPlaybackEnded]
    end
  end
end
