# frozen_string_literal: true

module Telnyx
  module Models
    class CallPlaybackStartedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallPlaybackStarted, nil]
      optional :data, -> { Telnyx::CallPlaybackStarted }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallPlaybackStarted]
    end
  end
end
