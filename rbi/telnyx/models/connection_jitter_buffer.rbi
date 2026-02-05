# typed: strong

module Telnyx
  module Models
    class ConnectionJitterBuffer < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::ConnectionJitterBuffer, Telnyx::Internal::AnyHash)
        end

      # Enables Jitter Buffer for RTP streams of SIP Trunking calls. The feature is off
      # unless enabled.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :enable_jitter_buffer

      sig { params(enable_jitter_buffer: T::Boolean).void }
      attr_writer :enable_jitter_buffer

      # The maximum jitter buffer size in milliseconds. Must be between 40 and 400. Has
      # no effect if enable_jitter_buffer is not true.
      sig { returns(T.nilable(Integer)) }
      attr_reader :jitterbuffer_msec_max

      sig { params(jitterbuffer_msec_max: Integer).void }
      attr_writer :jitterbuffer_msec_max

      # The minimum jitter buffer size in milliseconds. Must be between 40 and 400. Has
      # no effect if enable_jitter_buffer is not true.
      sig { returns(T.nilable(Integer)) }
      attr_reader :jitterbuffer_msec_min

      sig { params(jitterbuffer_msec_min: Integer).void }
      attr_writer :jitterbuffer_msec_min

      # Configuration options for Jitter Buffer. Enables Jitter Buffer for RTP streams
      # of SIP Trunking calls. The feature is off unless enabled. You may define min and
      # max values in msec for customized buffering behaviors. Larger values add latency
      # but tolerate more jitter, while smaller values reduce latency but are more
      # sensitive to jitter and reordering.
      sig do
        params(
          enable_jitter_buffer: T::Boolean,
          jitterbuffer_msec_max: Integer,
          jitterbuffer_msec_min: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # Enables Jitter Buffer for RTP streams of SIP Trunking calls. The feature is off
        # unless enabled.
        enable_jitter_buffer: nil,
        # The maximum jitter buffer size in milliseconds. Must be between 40 and 400. Has
        # no effect if enable_jitter_buffer is not true.
        jitterbuffer_msec_max: nil,
        # The minimum jitter buffer size in milliseconds. Must be between 40 and 400. Has
        # no effect if enable_jitter_buffer is not true.
        jitterbuffer_msec_min: nil
      )
      end

      sig do
        override.returns(
          {
            enable_jitter_buffer: T::Boolean,
            jitterbuffer_msec_max: Integer,
            jitterbuffer_msec_min: Integer
          }
        )
      end
      def to_hash
      end
    end
  end
end
