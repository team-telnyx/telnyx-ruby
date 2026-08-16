# typed: strong

module Telnyx
  module Models
    module MeetingSessions
      class ActionSpeakParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::MeetingSessions::ActionSpeakParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        # Text for the bot to speak.
        sig { returns(String) }
        attr_accessor :text

        # If true, interrupt any currently playing audio to speak this text immediately.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :interrupt

        sig { params(interrupt: T::Boolean).void }
        attr_writer :interrupt

        # Voice identifier to use for this utterance. When supplied, it overrides the
        # session-default voice configured at creation; otherwise the speak action uses
        # that session default.
        sig { returns(T.nilable(String)) }
        attr_reader :voice

        sig { params(voice: String).void }
        attr_writer :voice

        sig do
          params(
            id: String,
            text: String,
            interrupt: T::Boolean,
            voice: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          # Text for the bot to speak.
          text:,
          # If true, interrupt any currently playing audio to speak this text immediately.
          interrupt: nil,
          # Voice identifier to use for this utterance. When supplied, it overrides the
          # session-default voice configured at creation; otherwise the speak action uses
          # that session default.
          voice: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              id: String,
              text: String,
              interrupt: T::Boolean,
              voice: String,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
