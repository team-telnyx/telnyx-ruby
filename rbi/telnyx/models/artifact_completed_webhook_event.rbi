# typed: strong

module Telnyx
  module Models
    class ArtifactCompletedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::ArtifactCompletedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      # Unique event id; deduplicate deliveries on it.
      sig { returns(String) }
      attr_accessor :id

      # Completed artifact, including its generated content.
      sig { returns(Telnyx::ArtifactCompletedWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(data: Telnyx::ArtifactCompletedWebhookEvent::Data::OrHash).void
      end
      attr_writer :data

      # Event type.
      sig do
        returns(Telnyx::ArtifactCompletedWebhookEvent::Event::TaggedSymbol)
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
          data: Telnyx::ArtifactCompletedWebhookEvent::Data::OrHash,
          event: Telnyx::ArtifactCompletedWebhookEvent::Event::OrSymbol,
          occurred_at: Time,
          version: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique event id; deduplicate deliveries on it.
        id:,
        # Completed artifact, including its generated content.
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
            data: Telnyx::ArtifactCompletedWebhookEvent::Data,
            event: Telnyx::ArtifactCompletedWebhookEvent::Event::TaggedSymbol,
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
              Telnyx::ArtifactCompletedWebhookEvent::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Id of the completed artifact.
        sig { returns(String) }
        attr_accessor :artifact_id

        # Generated artifact content.
        sig { returns(Telnyx::ArtifactCompletedWebhookEvent::Data::Content) }
        attr_reader :content

        sig do
          params(
            content:
              Telnyx::ArtifactCompletedWebhookEvent::Data::Content::OrHash
          ).void
        end
        attr_writer :content

        # Model that generated the artifact.
        sig do
          returns(Telnyx::ArtifactCompletedWebhookEvent::Data::ModelProvenance)
        end
        attr_reader :model_provenance

        sig do
          params(
            model_provenance:
              Telnyx::ArtifactCompletedWebhookEvent::Data::ModelProvenance::OrHash
          ).void
        end
        attr_writer :model_provenance

        # The meeting session this event belongs to.
        sig { returns(String) }
        attr_accessor :session_id

        # Type of the completed artifact.
        sig do
          returns(
            Telnyx::ArtifactCompletedWebhookEvent::Data::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        # Completed artifact, including its generated content.
        sig do
          params(
            artifact_id: String,
            content:
              Telnyx::ArtifactCompletedWebhookEvent::Data::Content::OrHash,
            model_provenance:
              Telnyx::ArtifactCompletedWebhookEvent::Data::ModelProvenance::OrHash,
            session_id: String,
            type: Telnyx::ArtifactCompletedWebhookEvent::Data::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Id of the completed artifact.
          artifact_id:,
          # Generated artifact content.
          content:,
          # Model that generated the artifact.
          model_provenance:,
          # The meeting session this event belongs to.
          session_id:,
          # Type of the completed artifact.
          type:
        )
        end

        sig do
          override.returns(
            {
              artifact_id: String,
              content: Telnyx::ArtifactCompletedWebhookEvent::Data::Content,
              model_provenance:
                Telnyx::ArtifactCompletedWebhookEvent::Data::ModelProvenance,
              session_id: String,
              type:
                Telnyx::ArtifactCompletedWebhookEvent::Data::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        class Content < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::ArtifactCompletedWebhookEvent::Data::Content,
                Telnyx::Internal::AnyHash
              )
            end

          # Generated artifact text.
          sig { returns(String) }
          attr_accessor :text

          # Generated artifact content.
          sig { params(text: String).returns(T.attached_class) }
          def self.new(
            # Generated artifact text.
            text:
          )
          end

          sig { override.returns({ text: String }) }
          def to_hash
          end
        end

        class ModelProvenance < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::ArtifactCompletedWebhookEvent::Data::ModelProvenance,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :model

          sig { returns(String) }
          attr_accessor :provider

          # Model that generated the artifact.
          sig do
            params(model: String, provider: String).returns(T.attached_class)
          end
          def self.new(model:, provider:)
          end

          sig { override.returns({ model: String, provider: String }) }
          def to_hash
          end
        end

        # Type of the completed artifact.
        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::ArtifactCompletedWebhookEvent::Data::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SUMMARY =
            T.let(
              :summary,
              Telnyx::ArtifactCompletedWebhookEvent::Data::Type::TaggedSymbol
            )
          ACTION_ITEMS =
            T.let(
              :action_items,
              Telnyx::ArtifactCompletedWebhookEvent::Data::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::ArtifactCompletedWebhookEvent::Data::Type::TaggedSymbol
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
            T.all(Symbol, Telnyx::ArtifactCompletedWebhookEvent::Event)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ARTIFACT_COMPLETED =
          T.let(
            :"artifact.completed",
            Telnyx::ArtifactCompletedWebhookEvent::Event::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::ArtifactCompletedWebhookEvent::Event::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
