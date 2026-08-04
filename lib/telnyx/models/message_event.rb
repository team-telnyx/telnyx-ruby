# frozen_string_literal: true

module Telnyx
  module Models
    class MessageEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute occurred_at
      #
      #   @return [Time]
      required :occurred_at, Time

      # @!attribute type
      #
      #   @return [Symbol, Telnyx::Models::EmailEventType]
      required :type, enum: -> { Telnyx::EmailEventType }

      # @!attribute payload
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :payload, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

      # @!method initialize(occurred_at:, type:, payload: nil)
      #   @param occurred_at [Time]
      #   @param type [Symbol, Telnyx::Models::EmailEventType]
      #   @param payload [Hash{Symbol=>Object}]
    end
  end
end
