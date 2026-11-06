# frozen_string_literal: true

module Telnyx
  module Models
    class MeetingSessionLeavePolicy < Telnyx::Internal::Type::BaseModel
      # @!attribute alone_seconds
      #   Seconds alone after another participant has attended and left. Does not start
      #   just because the bot arrives first.
      #
      #   @return [Integer, nil]
      optional :alone_seconds, Integer

      # @!attribute bot_name_keywords
      #   Case-insensitive names or phrases identifying other bots to exclude when
      #   deciding whether this bot is alone. Matching splits names on spaces, hyphens and
      #   underscores. Null or an empty array disables filtering.
      #
      #   @return [Array<String>, nil]
      optional :bot_name_keywords, Telnyx::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute host_wait_seconds
      #   Seconds to wait for the host to start the meeting.
      #
      #   @return [Integer, nil]
      optional :host_wait_seconds, Integer

      # @!attribute lobby_wait_seconds
      #   Seconds to wait for lobby admission.
      #
      #   @return [Integer, nil]
      optional :lobby_wait_seconds, Integer

      # @!attribute max_duration_seconds
      #   Maximum seconds after joining. Null means no per-join duration limit; service
      #   safety limits still apply.
      #
      #   @return [Integer, nil]
      optional :max_duration_seconds, Integer, nil?: true

      # @!attribute silence_grace_seconds
      #   Seconds after joining before silence detection starts a fresh inactivity timer.
      #
      #   @return [Integer, nil]
      optional :silence_grace_seconds, Integer

      # @!attribute silence_seconds
      #   Continuous audio inactivity before departure after the silence grace period.
      #
      #   @return [Integer, nil]
      optional :silence_seconds, Integer

      # @!method initialize(alone_seconds: nil, bot_name_keywords: nil, host_wait_seconds: nil, lobby_wait_seconds: nil, max_duration_seconds: nil, silence_grace_seconds: nil, silence_seconds: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::MeetingSessionLeavePolicy} for more details.
      #
      #   Automatic departure settings for Google Meet and Teams. Omitted fields use the
      #   default behavior. Set at creation; cannot be changed later. Zoom ignores this
      #   policy.
      #
      #   @param alone_seconds [Integer] Seconds alone after another participant has attended and left. Does not start ju
      #
      #   @param bot_name_keywords [Array<String>, nil] Case-insensitive names or phrases identifying other bots to exclude when decidin
      #
      #   @param host_wait_seconds [Integer] Seconds to wait for the host to start the meeting.
      #
      #   @param lobby_wait_seconds [Integer] Seconds to wait for lobby admission.
      #
      #   @param max_duration_seconds [Integer, nil] Maximum seconds after joining. Null means no per-join duration limit; service sa
      #
      #   @param silence_grace_seconds [Integer] Seconds after joining before silence detection starts a fresh inactivity timer.
      #
      #   @param silence_seconds [Integer] Continuous audio inactivity before departure after the silence grace period.
    end
  end
end
