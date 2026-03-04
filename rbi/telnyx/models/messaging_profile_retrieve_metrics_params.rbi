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

      # The time frame for metrics.
      sig do
        returns(
          T.nilable(
            Telnyx::MessagingProfileRetrieveMetricsParams::TimeFrame::OrSymbol
          )
        )
      end
      attr_reader :time_frame

      sig do
        params(
          time_frame:
            Telnyx::MessagingProfileRetrieveMetricsParams::TimeFrame::OrSymbol
        ).void
      end
      attr_writer :time_frame

      sig do
        params(
          time_frame:
            Telnyx::MessagingProfileRetrieveMetricsParams::TimeFrame::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The time frame for metrics.
        time_frame: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            time_frame:
              Telnyx::MessagingProfileRetrieveMetricsParams::TimeFrame::OrSymbol,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The time frame for metrics.
      module TimeFrame
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::MessagingProfileRetrieveMetricsParams::TimeFrame
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TIME_FRAME_1H =
          T.let(
            :"1h",
            Telnyx::MessagingProfileRetrieveMetricsParams::TimeFrame::TaggedSymbol
          )
        TIME_FRAME_3H =
          T.let(
            :"3h",
            Telnyx::MessagingProfileRetrieveMetricsParams::TimeFrame::TaggedSymbol
          )
        TIME_FRAME_24H =
          T.let(
            :"24h",
            Telnyx::MessagingProfileRetrieveMetricsParams::TimeFrame::TaggedSymbol
          )
        TIME_FRAME_3D =
          T.let(
            :"3d",
            Telnyx::MessagingProfileRetrieveMetricsParams::TimeFrame::TaggedSymbol
          )
        TIME_FRAME_7D =
          T.let(
            :"7d",
            Telnyx::MessagingProfileRetrieveMetricsParams::TimeFrame::TaggedSymbol
          )
        TIME_FRAME_30D =
          T.let(
            :"30d",
            Telnyx::MessagingProfileRetrieveMetricsParams::TimeFrame::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::MessagingProfileRetrieveMetricsParams::TimeFrame::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
