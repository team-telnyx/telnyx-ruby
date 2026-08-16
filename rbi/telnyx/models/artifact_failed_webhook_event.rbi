# typed: strong

module Telnyx
  module Models
    class ArtifactFailedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::ArtifactFailedWebhookEvent, Telnyx::Internal::AnyHash)
        end

      # Unique event id; deduplicate deliveries on it.
      sig { returns(String) }
      attr_accessor :id

      # Failed artifact reference and reason.
      sig { returns(Telnyx::ArtifactFailedWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(data: Telnyx::ArtifactFailedWebhookEvent::Data::OrHash).void
      end
      attr_writer :data

      # Event type.
      sig { returns(Telnyx::ArtifactFailedWebhookEvent::Event::TaggedSymbol) }
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
          data: Telnyx::ArtifactFailedWebhookEvent::Data::OrHash,
          event: Telnyx::ArtifactFailedWebhookEvent::Event::OrSymbol,
          occurred_at: Time,
          version: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique event id; deduplicate deliveries on it.
        id:,
        # Failed artifact reference and reason.
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
            data: Telnyx::ArtifactFailedWebhookEvent::Data,
            event: Telnyx::ArtifactFailedWebhookEvent::Event::TaggedSymbol,
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
              Telnyx::ArtifactFailedWebhookEvent::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Id of the failed artifact.
        sig { returns(String) }
        attr_accessor :artifact_id

        # The meeting session this event belongs to.
        sig { returns(String) }
        attr_accessor :session_id

        # Type of the failed artifact.
        sig do
          returns(Telnyx::ArtifactFailedWebhookEvent::Data::Type::TaggedSymbol)
        end
        attr_accessor :type

        # Failed artifact reference and reason.
        sig do
          params(
            artifact_id: String,
            session_id: String,
            type: Telnyx::ArtifactFailedWebhookEvent::Data::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Id of the failed artifact.
          artifact_id:,
          # The meeting session this event belongs to.
          session_id:,
          # Type of the failed artifact.
          type:
        )
        end

        sig do
          override.returns(
            {
              artifact_id: String,
              session_id: String,
              type: Telnyx::ArtifactFailedWebhookEvent::Data::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # Type of the failed artifact.
        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::ArtifactFailedWebhookEvent::Data::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SUMMARY =
            T.let(
              :summary,
              Telnyx::ArtifactFailedWebhookEvent::Data::Type::TaggedSymbol
            )
          ACTION_ITEMS =
            T.let(
              :action_items,
              Telnyx::ArtifactFailedWebhookEvent::Data::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::ArtifactFailedWebhookEvent::Data::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # Event type.
      module Event
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::ArtifactFailedWebhookEvent::Event)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ARTIFACT_FAILED =
          T.let(
            :"artifact.failed",
            Telnyx::ArtifactFailedWebhookEvent::Event::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::ArtifactFailedWebhookEvent::Event::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
