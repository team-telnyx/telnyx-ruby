# frozen_string_literal: true

module Telnyx
  module Models
    class ConferenceCreatedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::ConferenceCreated, nil]
      optional :data, -> { Telnyx::ConferenceCreated }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::ConferenceCreated]
    end
  end
end
