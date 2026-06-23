# typed: strong

module Telnyx
  module Models
    class VoiceSDKCallReportLogEntry < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::VoiceSDKCallReportLogEntry, Telnyx::Internal::AnyHash)
        end

      # Raw structured context attached to the log entry.
      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :context

      sig { params(context: T::Hash[Symbol, T.anything]).void }
      attr_writer :context

      # Log level emitted by the SDK.
      sig do
        returns(
          T.nilable(Telnyx::VoiceSDKCallReportLogEntry::Level::TaggedSymbol)
        )
      end
      attr_reader :level

      sig do
        params(level: Telnyx::VoiceSDKCallReportLogEntry::Level::OrSymbol).void
      end
      attr_writer :level

      # Log message.
      sig { returns(T.nilable(String)) }
      attr_reader :message

      sig { params(message: String).void }
      attr_writer :message

      # Time when the log entry was emitted.
      sig { returns(T.nilable(Time)) }
      attr_reader :timestamp

      sig { params(timestamp: Time).void }
      attr_writer :timestamp

      # A raw Voice SDK log entry. Additional SDK-specific fields may be present.
      sig do
        params(
          context: T::Hash[Symbol, T.anything],
          level: Telnyx::VoiceSDKCallReportLogEntry::Level::OrSymbol,
          message: String,
          timestamp: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # Raw structured context attached to the log entry.
        context: nil,
        # Log level emitted by the SDK.
        level: nil,
        # Log message.
        message: nil,
        # Time when the log entry was emitted.
        timestamp: nil
      )
      end

      sig do
        override.returns(
          {
            context: T::Hash[Symbol, T.anything],
            level: Telnyx::VoiceSDKCallReportLogEntry::Level::TaggedSymbol,
            message: String,
            timestamp: Time
          }
        )
      end
      def to_hash
      end

      # Log level emitted by the SDK.
      module Level
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::VoiceSDKCallReportLogEntry::Level)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DEBUG =
          T.let(:debug, Telnyx::VoiceSDKCallReportLogEntry::Level::TaggedSymbol)
        INFO =
          T.let(:info, Telnyx::VoiceSDKCallReportLogEntry::Level::TaggedSymbol)
        WARN =
          T.let(:warn, Telnyx::VoiceSDKCallReportLogEntry::Level::TaggedSymbol)
        ERROR =
          T.let(:error, Telnyx::VoiceSDKCallReportLogEntry::Level::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::VoiceSDKCallReportLogEntry::Level::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
