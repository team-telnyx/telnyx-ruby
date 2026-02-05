# frozen_string_literal: true

module Telnyx
  module Models
    class CallAnsweredWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallAnswered, nil]
      optional :data, -> { Telnyx::CallAnswered }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallAnswered]
    end
  end
end
