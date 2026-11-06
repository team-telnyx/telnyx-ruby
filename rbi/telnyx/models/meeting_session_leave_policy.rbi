# typed: strong

module Telnyx
  module Models
    class MeetingSessionLeavePolicy < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::MeetingSessionLeavePolicy, Telnyx::Internal::AnyHash)
        end

      # Seconds alone after another participant has attended and left. Does not start
      # just because the bot arrives first.
      sig { returns(T.nilable(Integer)) }
      attr_reader :alone_seconds

      sig { params(alone_seconds: Integer).void }
      attr_writer :alone_seconds

      # Case-insensitive names or phrases identifying other bots to exclude when
      # deciding whether this bot is alone. Matching splits names on spaces, hyphens and
      # underscores. Null or an empty array disables filtering.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :bot_name_keywords

      # Seconds to wait for the host to start the meeting.
      sig { returns(T.nilable(Integer)) }
      attr_reader :host_wait_seconds

      sig { params(host_wait_seconds: Integer).void }
      attr_writer :host_wait_seconds

      # Seconds to wait for lobby admission.
      sig { returns(T.nilable(Integer)) }
      attr_reader :lobby_wait_seconds

      sig { params(lobby_wait_seconds: Integer).void }
      attr_writer :lobby_wait_seconds

      # Maximum seconds after joining. Null means no per-join duration limit; service
      # safety limits still apply.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :max_duration_seconds

      # Seconds after joining before silence detection starts a fresh inactivity timer.
      sig { returns(T.nilable(Integer)) }
      attr_reader :silence_grace_seconds

      sig { params(silence_grace_seconds: Integer).void }
      attr_writer :silence_grace_seconds

      # Continuous audio inactivity before departure after the silence grace period.
      sig { returns(T.nilable(Integer)) }
      attr_reader :silence_seconds

      sig { params(silence_seconds: Integer).void }
      attr_writer :silence_seconds

      # Automatic departure settings for Google Meet and Teams. Omitted fields use the
      # default behavior. Set at creation; cannot be changed later. Zoom ignores this
      # policy.
      sig do
        params(
          alone_seconds: Integer,
          bot_name_keywords: T.nilable(T::Array[String]),
          host_wait_seconds: Integer,
          lobby_wait_seconds: Integer,
          max_duration_seconds: T.nilable(Integer),
          silence_grace_seconds: Integer,
          silence_seconds: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # Seconds alone after another participant has attended and left. Does not start
        # just because the bot arrives first.
        alone_seconds: nil,
        # Case-insensitive names or phrases identifying other bots to exclude when
        # deciding whether this bot is alone. Matching splits names on spaces, hyphens and
        # underscores. Null or an empty array disables filtering.
        bot_name_keywords: nil,
        # Seconds to wait for the host to start the meeting.
        host_wait_seconds: nil,
        # Seconds to wait for lobby admission.
        lobby_wait_seconds: nil,
        # Maximum seconds after joining. Null means no per-join duration limit; service
        # safety limits still apply.
        max_duration_seconds: nil,
        # Seconds after joining before silence detection starts a fresh inactivity timer.
        silence_grace_seconds: nil,
        # Continuous audio inactivity before departure after the silence grace period.
        silence_seconds: nil
      )
      end

      sig do
        override.returns(
          {
            alone_seconds: Integer,
            bot_name_keywords: T.nilable(T::Array[String]),
            host_wait_seconds: Integer,
            lobby_wait_seconds: Integer,
            max_duration_seconds: T.nilable(Integer),
            silence_grace_seconds: Integer,
            silence_seconds: Integer
          }
        )
      end
      def to_hash
      end
    end
  end
end
