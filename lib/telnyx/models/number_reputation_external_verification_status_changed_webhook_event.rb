# frozen_string_literal: true

module Telnyx
  module Models
    class NumberReputationExternalVerificationStatusChangedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data]
      required :data, -> { Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::NumberReputationExternalVerificationStatusChangedWebhookEvent::Meta]
      required :meta, -> { Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Meta }

      # @!method initialize(data:, meta:)
      #   @param data [Telnyx::Models::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data]
      #   @param meta [Telnyx::Models::NumberReputationExternalVerificationStatusChangedWebhookEvent::Meta]

      # @see Telnyx::Models::NumberReputationExternalVerificationStatusChangedWebhookEvent#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Identifies the event; the same id is reused if the event is redelivered.
        #
        #   @return [String]
        required :id, String

        # @!attribute event_type
        #
        #   @return [Symbol, Telnyx::Models::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::EventType]
        required :event_type,
                 enum: -> { Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::EventType }

        # @!attribute occurred_at
        #
        #   @return [Time]
        required :occurred_at, Time

        # @!attribute payload
        #
        #   @return [Telnyx::Models::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::Payload]
        required :payload,
                 -> { Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::Payload }

        # @!attribute record_type
        #
        #   @return [Symbol, Telnyx::Models::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::RecordType]
        required :record_type,
                 enum: -> { Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::RecordType }

        # @!method initialize(id:, event_type:, occurred_at:, payload:, record_type:)
        #   @param id [String] Identifies the event; the same id is reused if the event is redelivered.
        #
        #   @param event_type [Symbol, Telnyx::Models::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::EventType]
        #
        #   @param occurred_at [Time]
        #
        #   @param payload [Telnyx::Models::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::Payload]
        #
        #   @param record_type [Symbol, Telnyx::Models::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::RecordType]

        # @see Telnyx::Models::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data#event_type
        module EventType
          extend Telnyx::Internal::Type::Enum

          NUMBER_REPUTATION_EXTERNAL_VERIFICATION_STATUS_CHANGED =
            :"number_reputation.external_verification.status_changed"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data#payload
        class Payload < Telnyx::Internal::Type::BaseModel
          # @!attribute enterprise_id
          #
          #   @return [String]
          required :enterprise_id, String

          # @!attribute record_type
          #
          #   @return [Symbol, Telnyx::Models::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::Payload::RecordType]
          required :record_type,
                   enum: -> { Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::Payload::RecordType }

          # @!attribute reviewed_at
          #   When the review decision was made. Always set: this event is only sent after a
          #   review.
          #
          #   @return [Time]
          required :reviewed_at, Time

          # @!attribute status
          #   The review outcome. `pending` is never delivered: the event is sent only once
          #   the proof is reviewed.
          #
          #   @return [Symbol, Telnyx::Models::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::Payload::Status]
          required :status,
                   enum: -> { Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::Payload::Status }

          # @!attribute rejection_reason
          #   Set only when `status` is `rejected`.
          #
          #   @return [String, nil]
          optional :rejection_reason, String, nil?: true

          # @!method initialize(enterprise_id:, record_type:, reviewed_at:, status:, rejection_reason: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::Payload}
          #   for more details.
          #
          #   @param enterprise_id [String]
          #
          #   @param record_type [Symbol, Telnyx::Models::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::Payload::RecordType]
          #
          #   @param reviewed_at [Time] When the review decision was made. Always set: this event is only sent after a r
          #
          #   @param status [Symbol, Telnyx::Models::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::Payload::Status] The review outcome. `pending` is never delivered: the event is sent only once th
          #
          #   @param rejection_reason [String, nil] Set only when `status` is `rejected`.

          # @see Telnyx::Models::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::Payload#record_type
          module RecordType
            extend Telnyx::Internal::Type::Enum

            REPUTATION_EXTERNAL_VERIFICATION = :reputation_external_verification

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # The review outcome. `pending` is never delivered: the event is sent only once
          # the proof is reviewed.
          #
          # @see Telnyx::Models::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::Payload#status
          module Status
            extend Telnyx::Internal::Type::Enum

            APPROVED = :approved
            REJECTED = :rejected

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Telnyx::Models::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          EVENT = :event

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see Telnyx::Models::NumberReputationExternalVerificationStatusChangedWebhookEvent#meta
      class Meta < Telnyx::Internal::Type::BaseModel
        # @!attribute attempt
        #
        #   @return [Integer]
        required :attempt, Integer

        # @!attribute delivered_to
        #
        #   @return [String]
        required :delivered_to, String

        # @!method initialize(attempt:, delivered_to:)
        #   @param attempt [Integer]
        #   @param delivered_to [String]
      end
    end
  end
end
