# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailMessages#batch
    class EmailMessageBatchResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::EmailInboxes::EmailMessage>]
      required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::EmailInboxes::EmailMessage] }

      # @!attribute errors
      #
      #   @return [Array<Telnyx::Models::EmailMessageBatchResponse::Error>]
      required :errors, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::EmailMessageBatchResponse::Error] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::EmailMessageBatchResponse::Meta]
      required :meta, -> { Telnyx::Models::EmailMessageBatchResponse::Meta }

      # @!method initialize(data:, errors:, meta:)
      #   @param data [Array<Telnyx::Models::EmailInboxes::EmailMessage>]
      #   @param errors [Array<Telnyx::Models::EmailMessageBatchResponse::Error>]
      #   @param meta [Telnyx::Models::EmailMessageBatchResponse::Meta]

      class Error < Telnyx::Internal::Type::BaseModel
        # @!attribute code
        #   Batch item errors use `message` (not `detail`) for the human-readable text.
        #
        #   @return [Symbol, Telnyx::Models::EmailMessageBatchResponse::Error::Code]
        required :code, enum: -> { Telnyx::Models::EmailMessageBatchResponse::Error::Code }

        # @!attribute index
        #   Zero-based index of the failed message in the request array.
        #
        #   @return [Integer]
        required :index, Integer

        # @!attribute message
        #
        #   @return [String]
        required :message, String

        # @!method initialize(code:, index:, message:)
        #   @param code [Symbol, Telnyx::Models::EmailMessageBatchResponse::Error::Code] Batch item errors use `message` (not `detail`) for the human-readable text.
        #
        #   @param index [Integer] Zero-based index of the failed message in the request array.
        #
        #   @param message [String]

        # Batch item errors use `message` (not `detail`) for the human-readable text.
        #
        # @see Telnyx::Models::EmailMessageBatchResponse::Error#code
        module Code
          extend Telnyx::Internal::Type::Enum

          BAD_REQUEST = :bad_request
          NOT_FOUND = :not_found
          FORBIDDEN = :forbidden
          SERVICE_UNAVAILABLE = :service_unavailable
          VALIDATION_ERROR = :validation_error
          RECIPIENT_SUPPRESSED = :recipient_suppressed
          REPUTATION_SUSPENDED = :reputation_suspended

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see Telnyx::Models::EmailMessageBatchResponse#meta
      class Meta < Telnyx::Internal::Type::BaseModel
        # @!attribute failed
        #
        #   @return [Integer]
        required :failed, Integer

        # @!attribute succeeded
        #
        #   @return [Integer]
        required :succeeded, Integer

        # @!attribute total
        #
        #   @return [Integer]
        required :total, Integer

        # @!method initialize(failed:, succeeded:, total:)
        #   @param failed [Integer]
        #   @param succeeded [Integer]
        #   @param total [Integer]
      end
    end
  end
end
