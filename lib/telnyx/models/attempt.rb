# frozen_string_literal: true

module Telnyx
  module Models
    class Attempt < Telnyx::Internal::Type::BaseModel
      # @!attribute errors
      #   Webhook delivery error codes.
      #
      #   @return [Array<Integer>, nil]
      optional :errors, Telnyx::Internal::Type::ArrayOf[Integer]

      # @!attribute finished_at
      #   ISO 8601 timestamp indicating when the attempt has finished.
      #
      #   @return [Time, nil]
      optional :finished_at, Time

      # @!attribute http
      #   HTTP request and response information.
      #
      #   @return [Telnyx::Models::HTTP, nil]
      optional :http, -> { Telnyx::HTTP }

      # @!attribute started_at
      #   ISO 8601 timestamp indicating when the attempt was initiated.
      #
      #   @return [Time, nil]
      optional :started_at, Time

      # @!attribute status
      #
      #   @return [Symbol, Telnyx::Models::Attempt::Status, nil]
      optional :status, enum: -> { Telnyx::Attempt::Status }

      # @!method initialize(errors: nil, finished_at: nil, http: nil, started_at: nil, status: nil)
      #   Webhook delivery attempt details.
      #
      #   @param errors [Array<Integer>] Webhook delivery error codes.
      #
      #   @param finished_at [Time] ISO 8601 timestamp indicating when the attempt has finished.
      #
      #   @param http [Telnyx::Models::HTTP] HTTP request and response information.
      #
      #   @param started_at [Time] ISO 8601 timestamp indicating when the attempt was initiated.
      #
      #   @param status [Symbol, Telnyx::Models::Attempt::Status]

      # @see Telnyx::Models::Attempt#status
      module Status
        extend Telnyx::Internal::Type::Enum

        DELIVERED = :delivered
        FAILED = :failed

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
