# frozen_string_literal: true

module Telnyx
  module Models
    class NumberReputationNumberRemovedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::NumberReputationNumberRemovedWebhookEvent::Data]
      required :data, -> { Telnyx::NumberReputationNumberRemovedWebhookEvent::Data }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::NumberReputationNumberRemovedWebhookEvent::Meta]
      required :meta, -> { Telnyx::NumberReputationNumberRemovedWebhookEvent::Meta }

      # @!method initialize(data:, meta:)
      #   @param data [Telnyx::Models::NumberReputationNumberRemovedWebhookEvent::Data]
      #   @param meta [Telnyx::Models::NumberReputationNumberRemovedWebhookEvent::Meta]

      # @see Telnyx::Models::NumberReputationNumberRemovedWebhookEvent#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Identifies the event; the same id is reused if the event is redelivered.
        #
        #   @return [String]
        required :id, String

        # @!attribute event_type
        #
        #   @return [Symbol, Telnyx::Models::NumberReputationNumberRemovedWebhookEvent::Data::EventType]
        required :event_type, enum: -> { Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::EventType }

        # @!attribute occurred_at
        #
        #   @return [Time]
        required :occurred_at, Time

        # @!attribute payload
        #
        #   @return [Telnyx::Models::NumberReputationNumberRemovedWebhookEvent::Data::Payload]
        required :payload, -> { Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::Payload }

        # @!attribute record_type
        #
        #   @return [Symbol, Telnyx::Models::NumberReputationNumberRemovedWebhookEvent::Data::RecordType]
        required :record_type, enum: -> { Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::RecordType }

        # @!method initialize(id:, event_type:, occurred_at:, payload:, record_type:)
        #   @param id [String] Identifies the event; the same id is reused if the event is redelivered.
        #
        #   @param event_type [Symbol, Telnyx::Models::NumberReputationNumberRemovedWebhookEvent::Data::EventType]
        #
        #   @param occurred_at [Time]
        #
        #   @param payload [Telnyx::Models::NumberReputationNumberRemovedWebhookEvent::Data::Payload]
        #
        #   @param record_type [Symbol, Telnyx::Models::NumberReputationNumberRemovedWebhookEvent::Data::RecordType]

        # @see Telnyx::Models::NumberReputationNumberRemovedWebhookEvent::Data#event_type
        module EventType
          extend Telnyx::Internal::Type::Enum

          NUMBER_REPUTATION_NUMBER_REMOVED = :"number_reputation.number.removed"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::NumberReputationNumberRemovedWebhookEvent::Data#payload
        class Payload < Telnyx::Internal::Type::BaseModel
          # @!attribute enterprise_id
          #
          #   @return [String]
          required :enterprise_id, String

          # @!attribute ownership_status
          #
          #   @return [Symbol, Telnyx::Models::NumberReputationNumberRemovedWebhookEvent::Data::Payload::OwnershipStatus]
          required :ownership_status,
                   enum: -> { Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::Payload::OwnershipStatus }

          # @!attribute phone_number
          #
          #   @return [String]
          required :phone_number, String

          # @!attribute record_type
          #
          #   @return [Symbol, Telnyx::Models::NumberReputationNumberRemovedWebhookEvent::Data::Payload::RecordType]
          required :record_type,
                   enum: -> { Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::Payload::RecordType }

          # @!attribute removal_reason
          #   `ported_away`: you confirmed you no longer own it after a carrier change.
          #   `unconfirmed_ownership`: the confirmation deadline passed. `reassigned`: the
          #   number was reported as permanently disconnected. `customer_reported`: you
          #   reported that you no longer own it. Removing a number yourself with `DELETE`
          #   sends no event.
          #
          #   @return [Symbol, Telnyx::Models::NumberReputationNumberRemovedWebhookEvent::Data::Payload::RemovalReason]
          required :removal_reason,
                   enum: -> { Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::Payload::RemovalReason }

          # @!attribute removed_at
          #
          #   @return [Time]
          required :removed_at, Time

          # @!attribute source
          #   Where the phone number is hosted. `telnyx`: in your Telnyx inventory.
          #   `external`: a number you own that is hosted with another provider.
          #
          #   @return [Symbol, Telnyx::Models::Enterprises::Reputation::ReputationNumberSource]
          required :source, enum: -> { Telnyx::Enterprises::Reputation::ReputationNumberSource }

          # @!method initialize(enterprise_id:, ownership_status:, phone_number:, record_type:, removal_reason:, removed_at:, source:)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::NumberReputationNumberRemovedWebhookEvent::Data::Payload} for
          #   more details.
          #
          #   @param enterprise_id [String]
          #
          #   @param ownership_status [Symbol, Telnyx::Models::NumberReputationNumberRemovedWebhookEvent::Data::Payload::OwnershipStatus]
          #
          #   @param phone_number [String]
          #
          #   @param record_type [Symbol, Telnyx::Models::NumberReputationNumberRemovedWebhookEvent::Data::Payload::RecordType]
          #
          #   @param removal_reason [Symbol, Telnyx::Models::NumberReputationNumberRemovedWebhookEvent::Data::Payload::RemovalReason] `ported_away`: you confirmed you no longer own it after a carrier change. `uncon
          #
          #   @param removed_at [Time]
          #
          #   @param source [Symbol, Telnyx::Models::Enterprises::Reputation::ReputationNumberSource] Where the phone number is hosted. `telnyx`: in your Telnyx inventory. `external`

          # @see Telnyx::Models::NumberReputationNumberRemovedWebhookEvent::Data::Payload#ownership_status
          module OwnershipStatus
            extend Telnyx::Internal::Type::Enum

            REMOVED = :removed

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Telnyx::Models::NumberReputationNumberRemovedWebhookEvent::Data::Payload#record_type
          module RecordType
            extend Telnyx::Internal::Type::Enum

            REPUTATION_PHONE_NUMBER = :reputation_phone_number

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # `ported_away`: you confirmed you no longer own it after a carrier change.
          # `unconfirmed_ownership`: the confirmation deadline passed. `reassigned`: the
          # number was reported as permanently disconnected. `customer_reported`: you
          # reported that you no longer own it. Removing a number yourself with `DELETE`
          # sends no event.
          #
          # @see Telnyx::Models::NumberReputationNumberRemovedWebhookEvent::Data::Payload#removal_reason
          module RemovalReason
            extend Telnyx::Internal::Type::Enum

            PORTED_AWAY = :ported_away
            UNCONFIRMED_OWNERSHIP = :unconfirmed_ownership
            REASSIGNED = :reassigned
            CUSTOMER_REPORTED = :customer_reported

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Telnyx::Models::NumberReputationNumberRemovedWebhookEvent::Data#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          EVENT = :event

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see Telnyx::Models::NumberReputationNumberRemovedWebhookEvent#meta
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
