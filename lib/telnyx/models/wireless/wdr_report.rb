# frozen_string_literal: true

module Telnyx
  module Models
    module Wireless
      class WdrReport < Telnyx::Internal::Type::BaseModel
        # @!attribute end_time
        #   ISO 8601 formatted date-time indicating the end time.
        #
        #   @return [String, nil]
        optional :end_time, String

        # @!attribute report_url
        #   The URL where the report content, when generated, will be published to.
        #
        #   @return [String, nil]
        optional :report_url, String

        # @!attribute start_time
        #   ISO 8601 formatted date-time indicating the start time.
        #
        #   @return [String, nil]
        optional :start_time, String

        # @!attribute status
        #   Indicates the status of the report, which is updated asynchronously.
        #
        #   @return [Symbol, Telnyx::Models::Wireless::WdrReport::Status, nil]
        optional :status, enum: -> { Telnyx::Wireless::WdrReport::Status }

        response_only do
          # @!attribute id
          #   Identifies the resource.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute created_at
          #   ISO 8601 formatted date-time indicating when the resource was created.
          #
          #   @return [String, nil]
          optional :created_at, String

          # @!attribute record_type
          #
          #   @return [String, nil]
          optional :record_type, String

          # @!attribute updated_at
          #   ISO 8601 formatted date-time indicating when the resource was updated.
          #
          #   @return [String, nil]
          optional :updated_at, String
        end

        # @!method initialize(id: nil, created_at: nil, end_time: nil, record_type: nil, report_url: nil, start_time: nil, status: nil, updated_at: nil)
        #   @param id [String] Identifies the resource.
        #
        #   @param created_at [String] ISO 8601 formatted date-time indicating when the resource was created.
        #
        #   @param end_time [String] ISO 8601 formatted date-time indicating the end time.
        #
        #   @param record_type [String]
        #
        #   @param report_url [String] The URL where the report content, when generated, will be published to.
        #
        #   @param start_time [String] ISO 8601 formatted date-time indicating the start time.
        #
        #   @param status [Symbol, Telnyx::Models::Wireless::WdrReport::Status] Indicates the status of the report, which is updated asynchronously.
        #
        #   @param updated_at [String] ISO 8601 formatted date-time indicating when the resource was updated.

        # Indicates the status of the report, which is updated asynchronously.
        #
        # @see Telnyx::Models::Wireless::WdrReport#status
        module Status
          extend Telnyx::Internal::Type::Enum

          PENDING = :pending
          COMPLETE = :complete
          FAILED = :failed
          DELETED = :deleted

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
