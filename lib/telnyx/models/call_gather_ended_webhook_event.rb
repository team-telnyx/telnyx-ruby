# frozen_string_literal: true

module Telnyx
  module Models
    class CallGatherEndedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallGatherEnded, nil]
      optional :data, -> { Telnyx::CallGatherEnded }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallGatherEnded]
    end
  end
end
