# typed: strong

module Telnyx
  module Models
    module Wireless
      class DetailRecordsReportCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Wireless::DetailRecordsReportCreateParams,
              Telnyx::Internal::AnyHash
            )
          end

        # ISO 8601 formatted date-time indicating the end time.
        sig { returns(T.nilable(String)) }
        attr_reader :end_time

        sig { params(end_time: String).void }
        attr_writer :end_time

        # ISO 8601 formatted date-time indicating the start time.
        sig { returns(T.nilable(String)) }
        attr_reader :start_time

        sig { params(start_time: String).void }
        attr_writer :start_time

        sig do
          params(
            end_time: String,
            start_time: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # ISO 8601 formatted date-time indicating the end time.
          end_time: nil,
          # ISO 8601 formatted date-time indicating the start time.
          start_time: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              end_time: String,
              start_time: String,
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
