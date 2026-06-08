# frozen_string_literal: true

module Telnyx
  module Models
    module MessagingTollfree
      module Verification
        # @see Telnyx::Resources::MessagingTollfree::Verification::Requests#list
        class RequestListParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute page
          #   Page number to retrieve (1-based).
          #
          #   @return [Integer]
          required :page, Integer

          # @!attribute page_size
          #   Request this many records per page
          #
          #           This value is automatically clamped if the provided value is too large.
          #
          #   @return [Integer]
          required :page_size, Integer

          # @!attribute business_name
          #   Filter verification requests by business name
          #
          #   @return [String, nil]
          optional :business_name, String

          # @!attribute date_end
          #   End of the date range filter (inclusive, ISO 8601).
          #
          #   @return [Time, nil]
          optional :date_end, Time

          # @!attribute date_start
          #   Start of the date range filter (inclusive, ISO 8601).
          #
          #   @return [Time, nil]
          optional :date_start, Time

          # @!attribute phone_number
          #   Filter results by phone number.
          #
          #   @return [String, nil]
          optional :phone_number, String

          # @!attribute status
          #   Filter results by status.
          #
          #   @return [Symbol, Telnyx::Models::MessagingTollfree::Verification::TfVerificationStatus, nil]
          optional :status, enum: -> { Telnyx::MessagingTollfree::Verification::TfVerificationStatus }

          # @!method initialize(page:, page_size:, business_name: nil, date_end: nil, date_start: nil, phone_number: nil, status: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::MessagingTollfree::Verification::RequestListParams} for more
          #   details.
          #
          #   @param page [Integer] Page number to retrieve (1-based).
          #
          #   @param page_size [Integer]
          #
          #   @param business_name [String] Filter verification requests by business name
          #
          #   @param date_end [Time] End of the date range filter (inclusive, ISO 8601).
          #
          #   @param date_start [Time] Start of the date range filter (inclusive, ISO 8601).
          #
          #   @param phone_number [String] Filter results by phone number.
          #
          #   @param status [Symbol, Telnyx::Models::MessagingTollfree::Verification::TfVerificationStatus] Filter results by status.
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
