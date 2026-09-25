# typed: strong

module Telnyx
  module Models
    module MeetingSessions
      class ArtifactCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::MeetingSessions::ArtifactCreateParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # One of two shapes: a named type on its own, or `custom` with the prompt it
        # answers.
        sig do
          returns(
            T.any(
              Telnyx::MeetingSessions::ArtifactCreateParams::Body::NamedArtifact,
              Telnyx::MeetingSessions::ArtifactCreateParams::Body::CustomArtifact
            )
          )
        end
        attr_accessor :body

        sig do
          params(
            id: String,
            body:
              T.any(
                Telnyx::MeetingSessions::ArtifactCreateParams::Body::NamedArtifact::OrHash,
                Telnyx::MeetingSessions::ArtifactCreateParams::Body::CustomArtifact::OrHash
              ),
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # One of two shapes: a named type on its own, or `custom` with the prompt it
          # answers.
          body:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              body:
                T.any(
                  Telnyx::MeetingSessions::ArtifactCreateParams::Body::NamedArtifact,
                  Telnyx::MeetingSessions::ArtifactCreateParams::Body::CustomArtifact
                ),
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # One of two shapes: a named type on its own, or `custom` with the prompt it
        # answers.
        module Body
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Telnyx::MeetingSessions::ArtifactCreateParams::Body::NamedArtifact,
                Telnyx::MeetingSessions::ArtifactCreateParams::Body::CustomArtifact
              )
            end

          class NamedArtifact < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::MeetingSessions::ArtifactCreateParams::Body::NamedArtifact,
                  Telnyx::Internal::AnyHash
                )
              end

            # What to generate from the transcript. `custom` is answered from a `prompt` you
            # supply; the five named types need none.
            sig do
              returns(
                Telnyx::MeetingSessions::ArtifactCreateParams::Body::NamedArtifact::Type::OrSymbol
              )
            end
            attr_accessor :type

            sig do
              params(
                type:
                  Telnyx::MeetingSessions::ArtifactCreateParams::Body::NamedArtifact::Type::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              # What to generate from the transcript. `custom` is answered from a `prompt` you
              # supply; the five named types need none.
              type:
            )
            end

            sig do
              override.returns(
                {
                  type:
                    Telnyx::MeetingSessions::ArtifactCreateParams::Body::NamedArtifact::Type::OrSymbol
                }
              )
            end
            def to_hash
            end

            # What to generate from the transcript. `custom` is answered from a `prompt` you
            # supply; the five named types need none.
            module Type
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::MeetingSessions::ArtifactCreateParams::Body::NamedArtifact::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              SUMMARY =
                T.let(
                  :summary,
                  Telnyx::MeetingSessions::ArtifactCreateParams::Body::NamedArtifact::Type::TaggedSymbol
                )
              ACTION_ITEMS =
                T.let(
                  :action_items,
                  Telnyx::MeetingSessions::ArtifactCreateParams::Body::NamedArtifact::Type::TaggedSymbol
                )
              DECISIONS =
                T.let(
                  :decisions,
                  Telnyx::MeetingSessions::ArtifactCreateParams::Body::NamedArtifact::Type::TaggedSymbol
                )
              TOPICS =
                T.let(
                  :topics,
                  Telnyx::MeetingSessions::ArtifactCreateParams::Body::NamedArtifact::Type::TaggedSymbol
                )
              OPEN_QUESTIONS =
                T.let(
                  :open_questions,
                  Telnyx::MeetingSessions::ArtifactCreateParams::Body::NamedArtifact::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::MeetingSessions::ArtifactCreateParams::Body::NamedArtifact::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class CustomArtifact < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::MeetingSessions::ArtifactCreateParams::Body::CustomArtifact,
                  Telnyx::Internal::AnyHash
                )
              end

            # An open-ended request answered from the transcript. Required when `type` is
            # `custom`, and rejected with 400 on any named type. Trimmed before storage and
            # echoed back in artifact responses and the `artifact.completed` webhook.
            sig { returns(String) }
            attr_accessor :prompt

            # Answered from the `prompt` below rather than a fixed question.
            sig { returns(Symbol) }
            attr_accessor :type

            sig do
              params(prompt: String, type: Symbol).returns(T.attached_class)
            end
            def self.new(
              # An open-ended request answered from the transcript. Required when `type` is
              # `custom`, and rejected with 400 on any named type. Trimmed before storage and
              # echoed back in artifact responses and the `artifact.completed` webhook.
              prompt:,
              # Answered from the `prompt` below rather than a fixed question.
              type: :custom
            )
            end

            sig { override.returns({ prompt: String, type: Symbol }) }
            def to_hash
            end
          end

          sig do
            override.returns(
              T::Array[
                Telnyx::MeetingSessions::ArtifactCreateParams::Body::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
