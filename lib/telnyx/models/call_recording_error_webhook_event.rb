# frozen_string_literal: true

module Telnyx
  module Models
    class CallRecordingErrorWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallRecordingError, nil]
      optional :data, -> { Telnyx::CallRecordingError }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallRecordingError]
    end
  end
end
