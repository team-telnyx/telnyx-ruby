# typed: strong

module Telnyx
  module Models
    class MessagingProfileRetrieveMetricsParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::MessagingProfileRetrieveMetricsParams,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # The time frame for metrics.
      sig { returns(T.nilable(Telnyx::MessagingMetricsTimeFrame::OrSymbol)) }
      attr_reader :time_frame

      sig do
        params(time_frame: Telnyx::MessagingMetricsTimeFrame::OrSymbol).void
      end
      attr_writer :time_frame

      sig do
        params(
          id: String,
          time_frame: Telnyx::MessagingMetricsTimeFrame::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The time frame for metrics.
        time_frame: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            id: String,
            time_frame: Telnyx::MessagingMetricsTimeFrame::OrSymbol,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
