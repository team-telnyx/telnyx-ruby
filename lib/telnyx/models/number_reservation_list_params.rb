# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NumberReservations#list
    class NumberReservationListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally: filter[status],
      #   filter[created_at], filter[phone_numbers.phone_number],
      #   filter[customer_reference]
      #
      #   @return [Telnyx::Models::NumberReservationListParams::Filter, nil]
      optional :filter, -> { Telnyx::NumberReservationListParams::Filter }

      # @!attribute page_number
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!method initialize(filter: nil, page_number: nil, page_size: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::NumberReservationListParams} for more details.
      #
      #   @param filter [Telnyx::Models::NumberReservationListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[status], fi
      #
      #   @param page_number [Integer]
      #
      #   @param page_size [Integer]
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute created_at
        #   Filter number reservations by date range.
        #
        #   @return [Telnyx::Models::NumberReservationListParams::Filter::CreatedAt, nil]
        optional :created_at, -> { Telnyx::NumberReservationListParams::Filter::CreatedAt }

        # @!attribute customer_reference
        #   Filter number reservations via the customer reference set.
        #
        #   @return [String, nil]
        optional :customer_reference, String

        # @!attribute phone_numbers_phone_number
        #   Filter number reservations having these phone numbers.
        #
        #   @return [String, nil]
        optional :phone_numbers_phone_number, String, api_name: :"phone_numbers.phone_number"

        # @!attribute status
        #   Filter number reservations by status.
        #
        #   @return [String, nil]
        optional :status, String

        # @!method initialize(created_at: nil, customer_reference: nil, phone_numbers_phone_number: nil, status: nil)
        #   Consolidated filter parameter (deepObject style). Originally: filter[status],
        #   filter[created_at], filter[phone_numbers.phone_number],
        #   filter[customer_reference]
        #
        #   @param created_at [Telnyx::Models::NumberReservationListParams::Filter::CreatedAt] Filter number reservations by date range.
        #
        #   @param customer_reference [String] Filter number reservations via the customer reference set.
        #
        #   @param phone_numbers_phone_number [String] Filter number reservations having these phone numbers.
        #
        #   @param status [String] Filter number reservations by status.

        # @see Telnyx::Models::NumberReservationListParams::Filter#created_at
        class CreatedAt < Telnyx::Internal::Type::BaseModel
          # @!attribute gt
          #   Filter number reservations later than this value.
          #
          #   @return [String, nil]
          optional :gt, String

          # @!attribute lt
          #   Filter number reservations earlier than this value.
          #
          #   @return [String, nil]
          optional :lt, String

          # @!method initialize(gt: nil, lt: nil)
          #   Filter number reservations by date range.
          #
          #   @param gt [String] Filter number reservations later than this value.
          #
          #   @param lt [String] Filter number reservations earlier than this value.
        end
      end
    end
  end
end
