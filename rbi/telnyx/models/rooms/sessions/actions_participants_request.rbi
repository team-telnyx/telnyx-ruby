# typed: strong

module Telnyx
  module Models
    module Rooms
      module Sessions
        class ActionsParticipantsRequest < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Rooms::Sessions::ActionsParticipantsRequest,
                Telnyx::Internal::AnyHash
              )
            end

          # List of participant id to exclude from the action.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :exclude

          sig { params(exclude: T::Array[String]).void }
          attr_writer :exclude

          # Either a list of participant id to perform the action on, or the keyword "all"
          # to perform the action on all participant.
          sig do
            returns(
              T.nilable(
                T.any(
                  Telnyx::Rooms::Sessions::ActionsParticipantsRequest::Participants::AllParticipants::OrSymbol,
                  T::Array[String]
                )
              )
            )
          end
          attr_reader :participants

          sig do
            params(
              participants:
                T.any(
                  Telnyx::Rooms::Sessions::ActionsParticipantsRequest::Participants::AllParticipants::OrSymbol,
                  T::Array[String]
                )
            ).void
          end
          attr_writer :participants

          sig do
            params(
              exclude: T::Array[String],
              participants:
                T.any(
                  Telnyx::Rooms::Sessions::ActionsParticipantsRequest::Participants::AllParticipants::OrSymbol,
                  T::Array[String]
                )
            ).returns(T.attached_class)
          end
          def self.new(
            # List of participant id to exclude from the action.
            exclude: nil,
            # Either a list of participant id to perform the action on, or the keyword "all"
            # to perform the action on all participant.
            participants: nil
          )
          end

          sig do
            override.returns(
              {
                exclude: T::Array[String],
                participants:
                  T.any(
                    Telnyx::Rooms::Sessions::ActionsParticipantsRequest::Participants::AllParticipants::OrSymbol,
                    T::Array[String]
                  )
              }
            )
          end
          def to_hash
          end

          # Either a list of participant id to perform the action on, or the keyword "all"
          # to perform the action on all participant.
          module Participants
            extend Telnyx::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  Telnyx::Rooms::Sessions::ActionsParticipantsRequest::Participants::AllParticipants::TaggedSymbol,
                  T::Array[String]
                )
              end

            module AllParticipants
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Rooms::Sessions::ActionsParticipantsRequest::Participants::AllParticipants
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              ALL =
                T.let(
                  :all,
                  Telnyx::Rooms::Sessions::ActionsParticipantsRequest::Participants::AllParticipants::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Rooms::Sessions::ActionsParticipantsRequest::Participants::AllParticipants::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            sig do
              override.returns(
                T::Array[
                  Telnyx::Rooms::Sessions::ActionsParticipantsRequest::Participants::Variants
                ]
              )
            end
            def self.variants
            end

            StringArray =
              T.let(
                Telnyx::Internal::Type::ArrayOf[String],
                Telnyx::Internal::Type::Converter
              )
          end
        end
      end
    end
  end
end
