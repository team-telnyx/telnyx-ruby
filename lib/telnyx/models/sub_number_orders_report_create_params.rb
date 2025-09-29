# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SubNumberOrdersReport#create
    class SubNumberOrdersReportCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute country_code
      #   Filter by country code
      #
      #   @return [String, nil]
      optional :country_code, String

      # @!attribute created_at_gt
      #   Filter for orders created after this date
      #
      #   @return [Time, nil]
      optional :created_at_gt, Time

      # @!attribute created_at_lt
      #   Filter for orders created before this date
      #
      #   @return [Time, nil]
      optional :created_at_lt, Time

      # @!attribute customer_reference
      #   Filter by customer reference
      #
      #   @return [String, nil]
      optional :customer_reference, String

      # @!attribute order_request_id
      #   Filter by specific order request ID
      #
      #   @return [String, nil]
      optional :order_request_id, String

      # @!attribute status
      #   Filter by order status
      #
      #   @return [Symbol, Telnyx::Models::SubNumberOrdersReportCreateParams::Status, nil]
      optional :status, enum: -> { Telnyx::SubNumberOrdersReportCreateParams::Status }

      # @!method initialize(country_code: nil, created_at_gt: nil, created_at_lt: nil, customer_reference: nil, order_request_id: nil, status: nil, request_options: {})
      #   @param country_code [String] Filter by country code
      #
      #   @param created_at_gt [Time] Filter for orders created after this date
      #
      #   @param created_at_lt [Time] Filter for orders created before this date
      #
      #   @param customer_reference [String] Filter by customer reference
      #
      #   @param order_request_id [String] Filter by specific order request ID
      #
      #   @param status [Symbol, Telnyx::Models::SubNumberOrdersReportCreateParams::Status] Filter by order status
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Filter by order status
      module Status
        extend Telnyx::Internal::Type::Enum

        PENDING = :pending
        SUCCESS = :success
        FAILURE = :failure

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
