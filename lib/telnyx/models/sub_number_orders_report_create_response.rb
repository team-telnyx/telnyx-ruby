# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SubNumberOrdersReport#create
    class SubNumberOrdersReportCreateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::SubNumberOrdersReportCreateResponse::Data, nil]
      optional :data, -> { Telnyx::Models::SubNumberOrdersReportCreateResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::SubNumberOrdersReportCreateResponse::Data]

      # @see Telnyx::Models::SubNumberOrdersReportCreateResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute filters
        #   The filters that were applied to generate this report
        #
        #   @return [Telnyx::Models::SubNumberOrdersReportCreateResponse::Data::Filters, nil]
        optional :filters, -> { Telnyx::Models::SubNumberOrdersReportCreateResponse::Data::Filters }

        # @!attribute status
        #   Indicates the completion level of the sub number orders report. The report must
        #   have a status of 'success' before it can be downloaded.
        #
        #   @return [Symbol, Telnyx::Models::SubNumberOrdersReportCreateResponse::Data::Status, nil]
        optional :status, enum: -> { Telnyx::Models::SubNumberOrdersReportCreateResponse::Data::Status }

        response_only do
          # @!attribute id
          #   Identifies the resource.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute created_at
          #   ISO 8601 formatted date indicating when the resource was created.
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute order_type
          #   The type of order report.
          #
          #   @return [String, nil]
          optional :order_type, String

          # @!attribute updated_at
          #   ISO 8601 formatted date indicating when the resource was updated.
          #
          #   @return [Time, nil]
          optional :updated_at, Time

          # @!attribute user_id
          #   The ID of the user who created the report.
          #
          #   @return [String, nil]
          optional :user_id, String
        end

        # @!method initialize(id: nil, created_at: nil, filters: nil, order_type: nil, status: nil, updated_at: nil, user_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::SubNumberOrdersReportCreateResponse::Data} for more details.
        #
        #   @param id [String] Identifies the resource.
        #
        #   @param created_at [Time] ISO 8601 formatted date indicating when the resource was created.
        #
        #   @param filters [Telnyx::Models::SubNumberOrdersReportCreateResponse::Data::Filters] The filters that were applied to generate this report
        #
        #   @param order_type [String] The type of order report.
        #
        #   @param status [Symbol, Telnyx::Models::SubNumberOrdersReportCreateResponse::Data::Status] Indicates the completion level of the sub number orders report. The report must
        #
        #   @param updated_at [Time] ISO 8601 formatted date indicating when the resource was updated.
        #
        #   @param user_id [String] The ID of the user who created the report.

        # @see Telnyx::Models::SubNumberOrdersReportCreateResponse::Data#filters
        class Filters < Telnyx::Internal::Type::BaseModel
          # @!attribute country_code
          #
          #   @return [String, nil]
          optional :country_code, String

          # @!attribute created_at_gt
          #
          #   @return [Time, nil]
          optional :created_at_gt, Time

          # @!attribute created_at_lt
          #
          #   @return [Time, nil]
          optional :created_at_lt, Time

          # @!attribute customer_reference
          #
          #   @return [String, nil]
          optional :customer_reference, String

          # @!attribute order_request_id
          #
          #   @return [String, nil]
          optional :order_request_id, String

          # @!attribute status
          #
          #   @return [String, nil]
          optional :status, String

          # @!method initialize(country_code: nil, created_at_gt: nil, created_at_lt: nil, customer_reference: nil, order_request_id: nil, status: nil)
          #   The filters that were applied to generate this report
          #
          #   @param country_code [String]
          #   @param created_at_gt [Time]
          #   @param created_at_lt [Time]
          #   @param customer_reference [String]
          #   @param order_request_id [String]
          #   @param status [String]
        end

        # Indicates the completion level of the sub number orders report. The report must
        # have a status of 'success' before it can be downloaded.
        #
        # @see Telnyx::Models::SubNumberOrdersReportCreateResponse::Data#status
        module Status
          extend Telnyx::Internal::Type::Enum

          PENDING = :pending
          SUCCESS = :success
          FAILED = :failed
          EXPIRED = :expired

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
