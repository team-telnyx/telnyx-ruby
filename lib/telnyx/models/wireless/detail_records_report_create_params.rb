# frozen_string_literal: true

module Telnyx
  module Models
    module Wireless
      # @see Telnyx::Resources::Wireless::DetailRecordsReports#create
      class DetailRecordsReportCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute end_time
        #   ISO 8601 formatted date-time indicating the end time.
        #
        #   @return [String, nil]
        optional :end_time, String

        # @!attribute start_time
        #   ISO 8601 formatted date-time indicating the start time.
        #
        #   @return [String, nil]
        optional :start_time, String

        # @!method initialize(end_time: nil, start_time: nil, request_options: {})
        #   @param end_time [String] ISO 8601 formatted date-time indicating the end time.
        #
        #   @param start_time [String] ISO 8601 formatted date-time indicating the start time.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
