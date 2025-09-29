# frozen_string_literal: true

module Telnyx
  module Models
    module Rooms
      module Sessions
        class ActionsParticipantsRequest < Telnyx::Internal::Type::BaseModel
          # @!attribute exclude
          #   List of participant id to exclude from the action.
          #
          #   @return [Array<String>, nil]
          optional :exclude, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute participants
          #   Either a list of participant id to perform the action on, or the keyword "all"
          #   to perform the action on all participant.
          #
          #   @return [Symbol, Array<String>, Telnyx::Models::Rooms::Sessions::ActionsParticipantsRequest::Participants, nil]
          optional :participants, union: -> { Telnyx::Rooms::Sessions::ActionsParticipantsRequest::Participants }

          # @!method initialize(exclude: nil, participants: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Rooms::Sessions::ActionsParticipantsRequest} for more details.
          #
          #   @param exclude [Array<String>] List of participant id to exclude from the action.
          #
          #   @param participants [Symbol, Array<String>, Telnyx::Models::Rooms::Sessions::ActionsParticipantsRequest::Participants] Either a list of participant id to perform the action on, or the keyword "all" t

          # Either a list of participant id to perform the action on, or the keyword "all"
          # to perform the action on all participant.
          #
          # @see Telnyx::Models::Rooms::Sessions::ActionsParticipantsRequest#participants
          module Participants
            extend Telnyx::Internal::Type::Union

            variant const: -> { Telnyx::Models::Rooms::Sessions::ActionsParticipantsRequest::Participants::ALL }

            variant -> { Telnyx::Models::Rooms::Sessions::ActionsParticipantsRequest::Participants::StringArray }

            # @!method self.variants
            #   @return [Array(Symbol, Array<String>)]

            define_sorbet_constant!(:Variants) do
              T.type_alias do
                T.any(Telnyx::Rooms::Sessions::ActionsParticipantsRequest::Participants::TaggedSymbol, T::Array[String])
              end
            end

            # @!group

            ALL = :all

            # @!endgroup

            # @type [Telnyx::Internal::Type::Converter]
            StringArray = Telnyx::Internal::Type::ArrayOf[String]
          end
        end
      end
    end
  end
end
