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
          #   @return [Symbol, Telnyx::Models::Rooms::Sessions::ActionsParticipantsRequest::Participants::AllParticipants, Array<String>, nil]
          optional :participants, union: -> { Telnyx::Rooms::Sessions::ActionsParticipantsRequest::Participants }

          # @!method initialize(exclude: nil, participants: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Rooms::Sessions::ActionsParticipantsRequest} for more details.
          #
          #   @param exclude [Array<String>] List of participant id to exclude from the action.
          #
          #   @param participants [Symbol, Telnyx::Models::Rooms::Sessions::ActionsParticipantsRequest::Participants::AllParticipants, Array<String>] Either a list of participant id to perform the action on, or the keyword "all" t

          # Either a list of participant id to perform the action on, or the keyword "all"
          # to perform the action on all participant.
          #
          # @see Telnyx::Models::Rooms::Sessions::ActionsParticipantsRequest#participants
          module Participants
            extend Telnyx::Internal::Type::Union

            variant enum: -> { Telnyx::Rooms::Sessions::ActionsParticipantsRequest::Participants::AllParticipants }

            variant -> { Telnyx::Models::Rooms::Sessions::ActionsParticipantsRequest::Participants::StringArray }

            module AllParticipants
              extend Telnyx::Internal::Type::Enum

              ALL = :all

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # @!method self.variants
            #   @return [Array(Symbol, Telnyx::Models::Rooms::Sessions::ActionsParticipantsRequest::Participants::AllParticipants, Array<String>)]

            # @type [Telnyx::Internal::Type::Converter]
            StringArray = Telnyx::Internal::Type::ArrayOf[String]
          end
        end
      end
    end
  end
end
