# frozen_string_literal: true

module Telnyx
  module Models
    module MeetingSessions
      # @see Telnyx::Resources::MeetingSessions::Actions#speak
      class ActionSpeakParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute text
        #   Text for the bot to speak.
        #
        #   @return [String]
        required :text, String

        # @!attribute interrupt
        #   If true, interrupt any currently playing audio to speak this text immediately.
        #
        #   @return [Boolean, nil]
        optional :interrupt, Telnyx::Internal::Type::Boolean

        # @!attribute voice
        #   Voice identifier to use for this utterance. When supplied, it overrides the
        #   session-default voice configured at creation; otherwise the speak action uses
        #   that session default.
        #
        #   @return [String, nil]
        optional :voice, String

        # @!method initialize(id:, text:, interrupt: nil, voice: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::MeetingSessions::ActionSpeakParams} for more details.
        #
        #   @param id [String]
        #
        #   @param text [String] Text for the bot to speak.
        #
        #   @param interrupt [Boolean] If true, interrupt any currently playing audio to speak this text immediately.
        #
        #   @param voice [String] Voice identifier to use for this utterance. When supplied, it overrides the sess
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
