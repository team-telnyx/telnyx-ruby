# frozen_string_literal: true

module Telnyx
  module Models
    class ConnectionJitterBuffer < Telnyx::Internal::Type::BaseModel
      # @!attribute enable_jitter_buffer
      #   Enables Jitter Buffer for RTP streams of SIP Trunking calls. The feature is off
      #   unless enabled.
      #
      #   @return [Boolean, nil]
      optional :enable_jitter_buffer, Telnyx::Internal::Type::Boolean

      # @!attribute jitterbuffer_msec_max
      #   The maximum jitter buffer size in milliseconds. Must be between 40 and 400. Has
      #   no effect if enable_jitter_buffer is not true.
      #
      #   @return [Integer, nil]
      optional :jitterbuffer_msec_max, Integer

      # @!attribute jitterbuffer_msec_min
      #   The minimum jitter buffer size in milliseconds. Must be between 40 and 400. Has
      #   no effect if enable_jitter_buffer is not true.
      #
      #   @return [Integer, nil]
      optional :jitterbuffer_msec_min, Integer

      # @!method initialize(enable_jitter_buffer: nil, jitterbuffer_msec_max: nil, jitterbuffer_msec_min: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::ConnectionJitterBuffer} for more details.
      #
      #   Configuration options for Jitter Buffer. Enables Jitter Buffer for RTP streams
      #   of SIP Trunking calls. The feature is off unless enabled. You may define min and
      #   max values in msec for customized buffering behaviors. Larger values add latency
      #   but tolerate more jitter, while smaller values reduce latency but are more
      #   sensitive to jitter and reordering.
      #
      #   @param enable_jitter_buffer [Boolean] Enables Jitter Buffer for RTP streams of SIP Trunking calls. The feature is off
      #
      #   @param jitterbuffer_msec_max [Integer] The maximum jitter buffer size in milliseconds. Must be between 40 and 400. Has
      #
      #   @param jitterbuffer_msec_min [Integer] The minimum jitter buffer size in milliseconds. Must be between 40 and 400. Has
    end
  end
end
