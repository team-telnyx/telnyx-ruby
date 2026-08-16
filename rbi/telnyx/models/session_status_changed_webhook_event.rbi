# typed: strong

module Telnyx
  module Models
    class SessionStatusChangedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::SessionStatusChangedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      # Unique event id; deduplicate deliveries on it.
      sig { returns(String) }
      attr_accessor :id

      # Status transition details.
      sig { returns(Telnyx::SessionStatusChangedWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(
          data: Telnyx::SessionStatusChangedWebhookEvent::Data::OrHash
        ).void
      end
      attr_writer :data

      # Event type.
      sig do
        returns(Telnyx::SessionStatusChangedWebhookEvent::Event::TaggedSymbol)
      end
      attr_accessor :event

      # When the event occurred.
      sig { returns(Time) }
      attr_accessor :occurred_at

      # Envelope version.
      sig { returns(String) }
      attr_accessor :version

      sig do
        params(
          id: String,
          data: Telnyx::SessionStatusChangedWebhookEvent::Data::OrHash,
          event: Telnyx::SessionStatusChangedWebhookEvent::Event::OrSymbol,
          occurred_at: Time,
          version: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique event id; deduplicate deliveries on it.
        id:,
        # Status transition details.
        data:,
        # Event type.
        event:,
        # When the event occurred.
        occurred_at:,
        # Envelope version.
        version:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            data: Telnyx::SessionStatusChangedWebhookEvent::Data,
            event:
              Telnyx::SessionStatusChangedWebhookEvent::Event::TaggedSymbol,
            occurred_at: Time,
            version: String
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::SessionStatusChangedWebhookEvent::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Whether the session is recording at this lifecycle edge.
        sig { returns(T::Boolean) }
        attr_accessor :recording

        # The meeting session this event belongs to.
        sig { returns(String) }
        attr_accessor :session_id

        # The new session status.
        sig { returns(String) }
        attr_accessor :status

        # Additional detail about the status (for example `timeout_exceeded_everyone_left`
        # or `cancelled`), or null.
        sig { returns(T.nilable(String)) }
        attr_accessor :status_detail

        # Status transition details.
        sig do
          params(
            recording: T::Boolean,
            session_id: String,
            status: String,
            status_detail: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Whether the session is recording at this lifecycle edge.
          recording:,
          # The meeting session this event belongs to.
          session_id:,
          # The new session status.
          status:,
          # Additional detail about the status (for example `timeout_exceeded_everyone_left`
          # or `cancelled`), or null.
          status_detail:
        )
        end

        sig do
          override.returns(
            {
              recording: T::Boolean,
              session_id: String,
              status: String,
              status_detail: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

      # Event type.
      module Event
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::SessionStatusChangedWebhookEvent::Event)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SESSION_STATUS_CHANGED =
          T.let(
            :"session.status_changed",
            Telnyx::SessionStatusChangedWebhookEvent::Event::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::SessionStatusChangedWebhookEvent::Event::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
