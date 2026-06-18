# frozen_string_literal: true

module Telnyx
  module Models
    class VoiceSDKCallReportLogEntry < Telnyx::Internal::Type::BaseModel
      # @!attribute context
      #   Raw structured context attached to the log entry.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :context, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

      # @!attribute level
      #   Log level emitted by the SDK.
      #
      #   @return [Symbol, Telnyx::Models::VoiceSDKCallReportLogEntry::Level, nil]
      optional :level, enum: -> { Telnyx::VoiceSDKCallReportLogEntry::Level }

      # @!attribute message
      #   Log message.
      #
      #   @return [String, nil]
      optional :message, String

      # @!attribute timestamp
      #   Time when the log entry was emitted.
      #
      #   @return [Time, nil]
      optional :timestamp, Time

      # @!method initialize(context: nil, level: nil, message: nil, timestamp: nil)
      #   A raw Voice SDK log entry. Additional SDK-specific fields may be present.
      #
      #   @param context [Hash{Symbol=>Object}] Raw structured context attached to the log entry.
      #
      #   @param level [Symbol, Telnyx::Models::VoiceSDKCallReportLogEntry::Level] Log level emitted by the SDK.
      #
      #   @param message [String] Log message.
      #
      #   @param timestamp [Time] Time when the log entry was emitted.

      # Log level emitted by the SDK.
      #
      # @see Telnyx::Models::VoiceSDKCallReportLogEntry#level
      module Level
        extend Telnyx::Internal::Type::Enum

        DEBUG = :debug
        INFO = :info
        WARN = :warn
        ERROR = :error

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
