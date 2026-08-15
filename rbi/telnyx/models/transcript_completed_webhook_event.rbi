# typed: strong

module Telnyx
  module Models
    class TranscriptCompletedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::TranscriptCompletedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      # Unique event id; deduplicate deliveries on it.
      sig { returns(String) }
      attr_accessor :id

      # Finalized transcript details.
      sig { returns(Telnyx::TranscriptCompletedWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(data: Telnyx::TranscriptCompletedWebhookEvent::Data::OrHash).void
      end
      attr_writer :data

      # Event type.
      sig do
        returns(Telnyx::TranscriptCompletedWebhookEvent::Event::TaggedSymbol)
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
          data: Telnyx::TranscriptCompletedWebhookEvent::Data::OrHash,
          event: Telnyx::TranscriptCompletedWebhookEvent::Event::OrSymbol,
          occurred_at: Time,
          version: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique event id; deduplicate deliveries on it.
        id:,
        # Finalized transcript details.
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
            data: Telnyx::TranscriptCompletedWebhookEvent::Data,
            event: Telnyx::TranscriptCompletedWebhookEvent::Event::TaggedSymbol,
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
              Telnyx::TranscriptCompletedWebhookEvent::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Session end time, or null when unavailable.
        sig { returns(T.nilable(Time)) }
        attr_accessor :ended_at

        # Last transcript segment sequence number, or null for an empty transcript.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :last_seq

        # Number of transcript segments observed during finalization.
        sig { returns(Integer) }
        attr_accessor :segment_count

        # The meeting session this event belongs to.
        sig { returns(String) }
        attr_accessor :session_id

        # Finalized transcript details.
        sig do
          params(
            ended_at: T.nilable(Time),
            last_seq: T.nilable(Integer),
            segment_count: Integer,
            session_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Session end time, or null when unavailable.
          ended_at:,
          # Last transcript segment sequence number, or null for an empty transcript.
          last_seq:,
          # Number of transcript segments observed during finalization.
          segment_count:,
          # The meeting session this event belongs to.
          session_id:
        )
        end

        sig do
          override.returns(
            {
              ended_at: T.nilable(Time),
              last_seq: T.nilable(Integer),
              segment_count: Integer,
              session_id: String
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
            T.all(Symbol, Telnyx::TranscriptCompletedWebhookEvent::Event)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRANSCRIPT_COMPLETED =
          T.let(
            :"transcript.completed",
            Telnyx::TranscriptCompletedWebhookEvent::Event::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::TranscriptCompletedWebhookEvent::Event::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
