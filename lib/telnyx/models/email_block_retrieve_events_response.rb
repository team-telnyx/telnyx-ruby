# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailBlocks#retrieve_events
    class EmailBlockRetrieveEventsResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute actor
      #   Free-text (`user_id`/`org_id`/`api_key`/`dev_bypass`/`system`/`manual`).
      #
      #   @return [String]
      required :actor, String

      # @!attribute event_type
      #
      #   @return [Symbol, Telnyx::Models::EmailBlockRetrieveEventsResponse::EventType]
      required :event_type, enum: -> { Telnyx::Models::EmailBlockRetrieveEventsResponse::EventType }

      # @!attribute occurred_at
      #
      #   @return [Time]
      required :occurred_at, Time

      # @!attribute reason
      #   Free-text snapshot of the block's reason at event time.
      #
      #   @return [String]
      required :reason, String

      # @!attribute record_type
      #   View-only.
      #
      #   @return [Symbol, Telnyx::Models::EmailBlockRetrieveEventsResponse::RecordType]
      required :record_type, enum: -> { Telnyx::Models::EmailBlockRetrieveEventsResponse::RecordType }

      # @!attribute source
      #   Free-text snapshot of the block's source at event time.
      #
      #   @return [String]
      required :source, String

      # @!attribute meta
      #   `null` when the schema field is nil (the context usually sets it to `{}`).
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :meta, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown], nil?: true

      # @!method initialize(id:, actor:, event_type:, occurred_at:, reason:, record_type:, source:, meta: nil)
      #   @param id [String]
      #
      #   @param actor [String] Free-text (`user_id`/`org_id`/`api_key`/`dev_bypass`/`system`/`manual`).
      #
      #   @param event_type [Symbol, Telnyx::Models::EmailBlockRetrieveEventsResponse::EventType]
      #
      #   @param occurred_at [Time]
      #
      #   @param reason [String] Free-text snapshot of the block's reason at event time.
      #
      #   @param record_type [Symbol, Telnyx::Models::EmailBlockRetrieveEventsResponse::RecordType] View-only.
      #
      #   @param source [String] Free-text snapshot of the block's source at event time.
      #
      #   @param meta [Hash{Symbol=>Object}, nil] `null` when the schema field is nil (the context usually sets it to `{}`).

      # @see Telnyx::Models::EmailBlockRetrieveEventsResponse#event_type
      module EventType
        extend Telnyx::Internal::Type::Enum

        CREATED = :created
        REMOVED = :removed
        EXPIRED = :expired
        OVERRIDE_USED = :override_used

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # View-only.
      #
      # @see Telnyx::Models::EmailBlockRetrieveEventsResponse#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        EMAIL_BLOCK_EVENT = :email_block_event

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
