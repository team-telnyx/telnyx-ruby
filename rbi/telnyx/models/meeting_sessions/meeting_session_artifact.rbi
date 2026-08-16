# typed: strong

module Telnyx
  module Models
    MeetingSessionArtifact = MeetingSessions::MeetingSessionArtifact

    module MeetingSessions
      class MeetingSessionArtifact < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::MeetingSessions::MeetingSessionArtifact,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(
            T.nilable(Telnyx::MeetingSessions::MeetingSessionArtifact::Content)
          )
        end
        attr_reader :content

        sig do
          params(
            content:
              T.nilable(
                Telnyx::MeetingSessions::MeetingSessionArtifact::Content::OrHash
              )
          ).void
        end
        attr_writer :content

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(String)) }
        attr_accessor :failure_reason

        sig do
          returns(
            T.nilable(
              Telnyx::MeetingSessions::MeetingSessionArtifact::ModelProvenance
            )
          )
        end
        attr_reader :model_provenance

        sig do
          params(
            model_provenance:
              T.nilable(
                Telnyx::MeetingSessions::MeetingSessionArtifact::ModelProvenance::OrHash
              )
          ).void
        end
        attr_writer :model_provenance

        sig { returns(String) }
        attr_accessor :session_id

        sig do
          returns(
            Telnyx::MeetingSessions::MeetingSessionArtifact::Status::TaggedSymbol
          )
        end
        attr_accessor :status

        sig do
          returns(
            Telnyx::MeetingSessions::MeetingSessionArtifact::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        sig { returns(Time) }
        attr_accessor :updated_at

        sig do
          params(
            id: String,
            content:
              T.nilable(
                Telnyx::MeetingSessions::MeetingSessionArtifact::Content::OrHash
              ),
            created_at: Time,
            failure_reason: T.nilable(String),
            model_provenance:
              T.nilable(
                Telnyx::MeetingSessions::MeetingSessionArtifact::ModelProvenance::OrHash
              ),
            session_id: String,
            status:
              Telnyx::MeetingSessions::MeetingSessionArtifact::Status::OrSymbol,
            type:
              Telnyx::MeetingSessions::MeetingSessionArtifact::Type::OrSymbol,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          content:,
          created_at:,
          failure_reason:,
          model_provenance:,
          session_id:,
          status:,
          type:,
          updated_at:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              content:
                T.nilable(
                  Telnyx::MeetingSessions::MeetingSessionArtifact::Content
                ),
              created_at: Time,
              failure_reason: T.nilable(String),
              model_provenance:
                T.nilable(
                  Telnyx::MeetingSessions::MeetingSessionArtifact::ModelProvenance
                ),
              session_id: String,
              status:
                Telnyx::MeetingSessions::MeetingSessionArtifact::Status::TaggedSymbol,
              type:
                Telnyx::MeetingSessions::MeetingSessionArtifact::Type::TaggedSymbol,
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        class Content < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::MeetingSessions::MeetingSessionArtifact::Content,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :text

          sig { params(text: String).returns(T.attached_class) }
          def self.new(text:)
          end

          sig { override.returns({ text: String }) }
          def to_hash
          end
        end

        class ModelProvenance < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::MeetingSessions::MeetingSessionArtifact::ModelProvenance,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :model

          sig { returns(String) }
          attr_accessor :provider

          sig do
            params(model: String, provider: String).returns(T.attached_class)
          end
          def self.new(model:, provider:)
          end

          sig { override.returns({ model: String, provider: String }) }
          def to_hash
          end
        end

        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::MeetingSessions::MeetingSessionArtifact::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              Telnyx::MeetingSessions::MeetingSessionArtifact::Status::TaggedSymbol
            )
          COMPLETED =
            T.let(
              :completed,
              Telnyx::MeetingSessions::MeetingSessionArtifact::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              Telnyx::MeetingSessions::MeetingSessionArtifact::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::MeetingSessions::MeetingSessionArtifact::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::MeetingSessions::MeetingSessionArtifact::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SUMMARY =
            T.let(
              :summary,
              Telnyx::MeetingSessions::MeetingSessionArtifact::Type::TaggedSymbol
            )
          ACTION_ITEMS =
            T.let(
              :action_items,
              Telnyx::MeetingSessions::MeetingSessionArtifact::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::MeetingSessions::MeetingSessionArtifact::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
