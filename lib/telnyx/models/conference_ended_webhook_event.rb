# frozen_string_literal: true

module Telnyx
  module Models
    class ConferenceEndedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::ConferenceEnded, nil]
      optional :data, -> { Telnyx::ConferenceEnded }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::ConferenceEnded]
    end
  end
end
