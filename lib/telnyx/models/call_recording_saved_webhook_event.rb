# frozen_string_literal: true

module Telnyx
  module Models
    class CallRecordingSavedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallRecordingSaved, nil]
      optional :data, -> { Telnyx::CallRecordingSaved }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallRecordingSaved]
    end
  end
end
