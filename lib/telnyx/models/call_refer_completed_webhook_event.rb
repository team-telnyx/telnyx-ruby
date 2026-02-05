# frozen_string_literal: true

module Telnyx
  module Models
    class CallReferCompletedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallReferCompleted, nil]
      optional :data, -> { Telnyx::CallReferCompleted }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallReferCompleted]
    end
  end
end
