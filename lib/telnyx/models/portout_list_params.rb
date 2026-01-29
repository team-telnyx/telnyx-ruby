# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Portouts#list
    class PortoutListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally:
      #   filter[carrier_name], filter[country_code], filter[country_code_in],
      #   filter[foc_date], filter[inserted_at], filter[phone_number], filter[pon],
      #   filter[ported_out_at], filter[spid], filter[status], filter[status_in],
      #   filter[support_key]
      #
      #   @return [Telnyx::Models::PortoutListParams::Filter, nil]
      optional :filter, -> { Telnyx::PortoutListParams::Filter }

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
      #   {Telnyx::Models::PortoutListParams} for more details.
      #
      #   @param filter [Telnyx::Models::PortoutListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[carrier_nam
      #
      #   @param page_number [Integer]
      #
      #   @param page_size [Integer]
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute carrier_name
        #   Filter by new carrier name.
        #
        #   @return [String, nil]
        optional :carrier_name, String

        # @!attribute country_code
        #   Filter by 2-letter country code
        #
        #   @return [String, nil]
        optional :country_code, String

        # @!attribute country_code_in
        #   Filter by a list of 2-letter country codes
        #
        #   @return [Array<String>, nil]
        optional :country_code_in, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute foc_date
        #   Filter by foc_date. Matches all portouts with the same date
        #
        #   @return [Time, nil]
        optional :foc_date, Time

        # @!attribute inserted_at
        #   Filter by inserted_at date range using nested operations
        #
        #   @return [Telnyx::Models::PortoutListParams::Filter::InsertedAt, nil]
        optional :inserted_at, -> { Telnyx::PortoutListParams::Filter::InsertedAt }

        # @!attribute phone_number
        #   Filter by a phone number on the portout. Matches all portouts with the phone
        #   number
        #
        #   @return [String, nil]
        optional :phone_number, String

        # @!attribute pon
        #   Filter by Port Order Number (PON).
        #
        #   @return [String, nil]
        optional :pon, String

        # @!attribute ported_out_at
        #   Filter by ported_out_at date range using nested operations
        #
        #   @return [Telnyx::Models::PortoutListParams::Filter::PortedOutAt, nil]
        optional :ported_out_at, -> { Telnyx::PortoutListParams::Filter::PortedOutAt }

        # @!attribute spid
        #   Filter by new carrier spid.
        #
        #   @return [String, nil]
        optional :spid, String

        # @!attribute status
        #   Filter by portout status.
        #
        #   @return [Symbol, Telnyx::Models::PortoutListParams::Filter::Status, nil]
        optional :status, enum: -> { Telnyx::PortoutListParams::Filter::Status }

        # @!attribute status_in
        #   Filter by a list of portout statuses
        #
        #   @return [Array<Symbol, Telnyx::Models::PortoutListParams::Filter::StatusIn>, nil]
        optional :status_in,
                 -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::PortoutListParams::Filter::StatusIn] }

        # @!attribute support_key
        #   Filter by the portout's support_key
        #
        #   @return [String, nil]
        optional :support_key, String

        # @!method initialize(carrier_name: nil, country_code: nil, country_code_in: nil, foc_date: nil, inserted_at: nil, phone_number: nil, pon: nil, ported_out_at: nil, spid: nil, status: nil, status_in: nil, support_key: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::PortoutListParams::Filter} for more details.
        #
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[carrier_name], filter[country_code], filter[country_code_in],
        #   filter[foc_date], filter[inserted_at], filter[phone_number], filter[pon],
        #   filter[ported_out_at], filter[spid], filter[status], filter[status_in],
        #   filter[support_key]
        #
        #   @param carrier_name [String] Filter by new carrier name.
        #
        #   @param country_code [String] Filter by 2-letter country code
        #
        #   @param country_code_in [Array<String>] Filter by a list of 2-letter country codes
        #
        #   @param foc_date [Time] Filter by foc_date. Matches all portouts with the same date
        #
        #   @param inserted_at [Telnyx::Models::PortoutListParams::Filter::InsertedAt] Filter by inserted_at date range using nested operations
        #
        #   @param phone_number [String] Filter by a phone number on the portout. Matches all portouts with the phone num
        #
        #   @param pon [String] Filter by Port Order Number (PON).
        #
        #   @param ported_out_at [Telnyx::Models::PortoutListParams::Filter::PortedOutAt] Filter by ported_out_at date range using nested operations
        #
        #   @param spid [String] Filter by new carrier spid.
        #
        #   @param status [Symbol, Telnyx::Models::PortoutListParams::Filter::Status] Filter by portout status.
        #
        #   @param status_in [Array<Symbol, Telnyx::Models::PortoutListParams::Filter::StatusIn>] Filter by a list of portout statuses
        #
        #   @param support_key [String] Filter by the portout's support_key

        # @see Telnyx::Models::PortoutListParams::Filter#inserted_at
        class InsertedAt < Telnyx::Internal::Type::BaseModel
          # @!attribute gte
          #   Filter by inserted_at date greater than or equal.
          #
          #   @return [Time, nil]
          optional :gte, Time

          # @!attribute lte
          #   Filter by inserted_at date less than or equal.
          #
          #   @return [Time, nil]
          optional :lte, Time

          # @!method initialize(gte: nil, lte: nil)
          #   Filter by inserted_at date range using nested operations
          #
          #   @param gte [Time] Filter by inserted_at date greater than or equal.
          #
          #   @param lte [Time] Filter by inserted_at date less than or equal.
        end

        # @see Telnyx::Models::PortoutListParams::Filter#ported_out_at
        class PortedOutAt < Telnyx::Internal::Type::BaseModel
          # @!attribute gte
          #   Filter by ported_out_at date greater than or equal.
          #
          #   @return [Time, nil]
          optional :gte, Time

          # @!attribute lte
          #   Filter by ported_out_at date less than or equal.
          #
          #   @return [Time, nil]
          optional :lte, Time

          # @!method initialize(gte: nil, lte: nil)
          #   Filter by ported_out_at date range using nested operations
          #
          #   @param gte [Time] Filter by ported_out_at date greater than or equal.
          #
          #   @param lte [Time] Filter by ported_out_at date less than or equal.
        end

        # Filter by portout status.
        #
        # @see Telnyx::Models::PortoutListParams::Filter#status
        module Status
          extend Telnyx::Internal::Type::Enum

          PENDING = :pending
          AUTHORIZED = :authorized
          PORTED = :ported
          REJECTED = :rejected
          REJECTED_PENDING = :"rejected-pending"
          CANCELED = :canceled

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        module StatusIn
          extend Telnyx::Internal::Type::Enum

          PENDING = :pending
          AUTHORIZED = :authorized
          PORTED = :ported
          REJECTED = :rejected
          REJECTED_PENDING = :"rejected-pending"
          CANCELED = :canceled

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
