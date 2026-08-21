# typed: strong

module Telnyx
  module Models
    class EmailBlockRetrieveEventsResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::EmailBlockRetrieveEventsResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # Free-text (`user_id`/`org_id`/`api_key`/`dev_bypass`/`system`/`manual`).
      sig { returns(String) }
      attr_accessor :actor

      sig do
        returns(
          Telnyx::Models::EmailBlockRetrieveEventsResponse::EventType::TaggedSymbol
        )
      end
      attr_accessor :event_type

      sig { returns(Time) }
      attr_accessor :occurred_at

      # Free-text snapshot of the block's reason at event time.
      sig { returns(String) }
      attr_accessor :reason

      # View-only.
      sig do
        returns(
          Telnyx::Models::EmailBlockRetrieveEventsResponse::RecordType::TaggedSymbol
        )
      end
      attr_accessor :record_type

      # Free-text snapshot of the block's source at event time.
      sig { returns(String) }
      attr_accessor :source

      # `null` when the schema field is nil (the context usually sets it to `{}`).
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_accessor :meta

      sig do
        params(
          id: String,
          actor: String,
          event_type:
            Telnyx::Models::EmailBlockRetrieveEventsResponse::EventType::OrSymbol,
          occurred_at: Time,
          reason: String,
          record_type:
            Telnyx::Models::EmailBlockRetrieveEventsResponse::RecordType::OrSymbol,
          source: String,
          meta: T.nilable(T::Hash[Symbol, T.anything])
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Free-text (`user_id`/`org_id`/`api_key`/`dev_bypass`/`system`/`manual`).
        actor:,
        event_type:,
        occurred_at:,
        # Free-text snapshot of the block's reason at event time.
        reason:,
        # View-only.
        record_type:,
        # Free-text snapshot of the block's source at event time.
        source:,
        # `null` when the schema field is nil (the context usually sets it to `{}`).
        meta: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            actor: String,
            event_type:
              Telnyx::Models::EmailBlockRetrieveEventsResponse::EventType::TaggedSymbol,
            occurred_at: Time,
            reason: String,
            record_type:
              Telnyx::Models::EmailBlockRetrieveEventsResponse::RecordType::TaggedSymbol,
            source: String,
            meta: T.nilable(T::Hash[Symbol, T.anything])
          }
        )
      end
      def to_hash
      end

      module EventType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::Models::EmailBlockRetrieveEventsResponse::EventType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED =
          T.let(
            :created,
            Telnyx::Models::EmailBlockRetrieveEventsResponse::EventType::TaggedSymbol
          )
        REMOVED =
          T.let(
            :removed,
            Telnyx::Models::EmailBlockRetrieveEventsResponse::EventType::TaggedSymbol
          )
        EXPIRED =
          T.let(
            :expired,
            Telnyx::Models::EmailBlockRetrieveEventsResponse::EventType::TaggedSymbol
          )
        OVERRIDE_USED =
          T.let(
            :override_used,
            Telnyx::Models::EmailBlockRetrieveEventsResponse::EventType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::Models::EmailBlockRetrieveEventsResponse::EventType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # View-only.
      module RecordType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::Models::EmailBlockRetrieveEventsResponse::RecordType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EMAIL_BLOCK_EVENT =
          T.let(
            :email_block_event,
            Telnyx::Models::EmailBlockRetrieveEventsResponse::RecordType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::Models::EmailBlockRetrieveEventsResponse::RecordType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
