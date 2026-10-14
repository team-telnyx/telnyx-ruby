# frozen_string_literal: true

module Telnyx
  module Models
    class NumberReputationNumberFlaggedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::NumberReputationNumberFlaggedWebhookEvent::Data]
      required :data, -> { Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::NumberReputationNumberFlaggedWebhookEvent::Meta]
      required :meta, -> { Telnyx::NumberReputationNumberFlaggedWebhookEvent::Meta }

      # @!method initialize(data:, meta:)
      #   @param data [Telnyx::Models::NumberReputationNumberFlaggedWebhookEvent::Data]
      #   @param meta [Telnyx::Models::NumberReputationNumberFlaggedWebhookEvent::Meta]

      # @see Telnyx::Models::NumberReputationNumberFlaggedWebhookEvent#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Identifies the event; the same id is reused if the event is redelivered.
        #
        #   @return [String]
        required :id, String

        # @!attribute event_type
        #
        #   @return [Symbol, Telnyx::Models::NumberReputationNumberFlaggedWebhookEvent::Data::EventType]
        required :event_type, enum: -> { Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data::EventType }

        # @!attribute occurred_at
        #
        #   @return [Time]
        required :occurred_at, Time

        # @!attribute payload
        #
        #   @return [Telnyx::Models::NumberReputationNumberFlaggedWebhookEvent::Data::Payload]
        required :payload, -> { Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data::Payload }

        # @!attribute record_type
        #
        #   @return [Symbol, Telnyx::Models::NumberReputationNumberFlaggedWebhookEvent::Data::RecordType]
        required :record_type, enum: -> { Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data::RecordType }

        # @!method initialize(id:, event_type:, occurred_at:, payload:, record_type:)
        #   @param id [String] Identifies the event; the same id is reused if the event is redelivered.
        #
        #   @param event_type [Symbol, Telnyx::Models::NumberReputationNumberFlaggedWebhookEvent::Data::EventType]
        #
        #   @param occurred_at [Time]
        #
        #   @param payload [Telnyx::Models::NumberReputationNumberFlaggedWebhookEvent::Data::Payload]
        #
        #   @param record_type [Symbol, Telnyx::Models::NumberReputationNumberFlaggedWebhookEvent::Data::RecordType]

        # @see Telnyx::Models::NumberReputationNumberFlaggedWebhookEvent::Data#event_type
        module EventType
          extend Telnyx::Internal::Type::Enum

          NUMBER_REPUTATION_NUMBER_FLAGGED = :"number_reputation.number.flagged"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::NumberReputationNumberFlaggedWebhookEvent::Data#payload
        class Payload < Telnyx::Internal::Type::BaseModel
          # @!attribute confirm_by
          #   Confirm ownership before this time or the number is removed (carrier change) or
          #   flagged (re-verification).
          #
          #   @return [Time]
          required :confirm_by, Time

          # @!attribute enterprise_id
          #
          #   @return [String]
          required :enterprise_id, String

          # @!attribute flag_reason
          #   `carrier_changed`: the number moved to a different carrier.
          #   `reverification_due`: the periodic ownership re-verification is due.
          #
          #   @return [Symbol, Telnyx::Models::NumberReputationNumberFlaggedWebhookEvent::Data::Payload::FlagReason]
          required :flag_reason,
                   enum: -> { Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data::Payload::FlagReason }

          # @!attribute ownership_status
          #
          #   @return [Symbol, Telnyx::Models::NumberReputationNumberFlaggedWebhookEvent::Data::Payload::OwnershipStatus]
          required :ownership_status,
                   enum: -> { Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data::Payload::OwnershipStatus }

          # @!attribute phone_number
          #
          #   @return [String]
          required :phone_number, String

          # @!attribute record_type
          #
          #   @return [Symbol, Telnyx::Models::NumberReputationNumberFlaggedWebhookEvent::Data::Payload::RecordType]
          required :record_type,
                   enum: -> { Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data::Payload::RecordType }

          # @!attribute source
          #   Where the phone number is hosted. `telnyx`: in your Telnyx inventory.
          #   `external`: a number you own that is hosted with another provider.
          #
          #   @return [Symbol, Telnyx::Models::Enterprises::Reputation::ReputationNumberSource]
          required :source, enum: -> { Telnyx::Enterprises::Reputation::ReputationNumberSource }

          # @!method initialize(confirm_by:, enterprise_id:, flag_reason:, ownership_status:, phone_number:, record_type:, source:)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::NumberReputationNumberFlaggedWebhookEvent::Data::Payload} for
          #   more details.
          #
          #   @param confirm_by [Time] Confirm ownership before this time or the number is removed (carrier change) or
          #
          #   @param enterprise_id [String]
          #
          #   @param flag_reason [Symbol, Telnyx::Models::NumberReputationNumberFlaggedWebhookEvent::Data::Payload::FlagReason] `carrier_changed`: the number moved to a different carrier. `reverification_due`
          #
          #   @param ownership_status [Symbol, Telnyx::Models::NumberReputationNumberFlaggedWebhookEvent::Data::Payload::OwnershipStatus]
          #
          #   @param phone_number [String]
          #
          #   @param record_type [Symbol, Telnyx::Models::NumberReputationNumberFlaggedWebhookEvent::Data::Payload::RecordType]
          #
          #   @param source [Symbol, Telnyx::Models::Enterprises::Reputation::ReputationNumberSource] Where the phone number is hosted. `telnyx`: in your Telnyx inventory. `external`

          # `carrier_changed`: the number moved to a different carrier.
          # `reverification_due`: the periodic ownership re-verification is due.
          #
          # @see Telnyx::Models::NumberReputationNumberFlaggedWebhookEvent::Data::Payload#flag_reason
          module FlagReason
            extend Telnyx::Internal::Type::Enum

            CARRIER_CHANGED = :carrier_changed
            REVERIFICATION_DUE = :reverification_due

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Telnyx::Models::NumberReputationNumberFlaggedWebhookEvent::Data::Payload#ownership_status
          module OwnershipStatus
            extend Telnyx::Internal::Type::Enum

            PENDING_CONFIRMATION = :pending_confirmation

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Telnyx::Models::NumberReputationNumberFlaggedWebhookEvent::Data::Payload#record_type
          module RecordType
            extend Telnyx::Internal::Type::Enum

            REPUTATION_PHONE_NUMBER = :reputation_phone_number

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Telnyx::Models::NumberReputationNumberFlaggedWebhookEvent::Data#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          EVENT = :event

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see Telnyx::Models::NumberReputationNumberFlaggedWebhookEvent#meta
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
