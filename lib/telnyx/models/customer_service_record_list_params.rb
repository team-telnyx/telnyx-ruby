# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::CustomerServiceRecords#list
    class CustomerServiceRecordListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally:
      #   filter[phone_number][eq], filter[phone_number][in][], filter[status][eq],
      #   filter[status][in][], filter[created_at][lt], filter[created_at][gt]
      #
      #   @return [Telnyx::Models::CustomerServiceRecordListParams::Filter, nil]
      optional :filter, -> { Telnyx::CustomerServiceRecordListParams::Filter }

      # @!attribute page
      #   Consolidated page parameter (deepObject style). Originally: page[size],
      #   page[number]
      #
      #   @return [Telnyx::Models::CustomerServiceRecordListParams::Page, nil]
      optional :page, -> { Telnyx::CustomerServiceRecordListParams::Page }

      # @!attribute sort
      #   Consolidated sort parameter (deepObject style). Originally: sort[value]
      #
      #   @return [Telnyx::Models::CustomerServiceRecordListParams::Sort, nil]
      optional :sort, -> { Telnyx::CustomerServiceRecordListParams::Sort }

      # @!method initialize(filter: nil, page: nil, sort: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::CustomerServiceRecordListParams} for more details.
      #
      #   @param filter [Telnyx::Models::CustomerServiceRecordListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[phone_numbe
      #
      #   @param page [Telnyx::Models::CustomerServiceRecordListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
      #
      #   @param sort [Telnyx::Models::CustomerServiceRecordListParams::Sort] Consolidated sort parameter (deepObject style). Originally: sort[value]
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute created_at
        #
        #   @return [Telnyx::Models::CustomerServiceRecordListParams::Filter::CreatedAt, nil]
        optional :created_at, -> { Telnyx::CustomerServiceRecordListParams::Filter::CreatedAt }

        # @!attribute phone_number
        #
        #   @return [Telnyx::Models::CustomerServiceRecordListParams::Filter::PhoneNumber, nil]
        optional :phone_number, -> { Telnyx::CustomerServiceRecordListParams::Filter::PhoneNumber }

        # @!attribute status
        #
        #   @return [Telnyx::Models::CustomerServiceRecordListParams::Filter::Status, nil]
        optional :status, -> { Telnyx::CustomerServiceRecordListParams::Filter::Status }

        # @!method initialize(created_at: nil, phone_number: nil, status: nil)
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[phone_number][eq], filter[phone_number][in][], filter[status][eq],
        #   filter[status][in][], filter[created_at][lt], filter[created_at][gt]
        #
        #   @param created_at [Telnyx::Models::CustomerServiceRecordListParams::Filter::CreatedAt]
        #   @param phone_number [Telnyx::Models::CustomerServiceRecordListParams::Filter::PhoneNumber]
        #   @param status [Telnyx::Models::CustomerServiceRecordListParams::Filter::Status]

        # @see Telnyx::Models::CustomerServiceRecordListParams::Filter#created_at
        class CreatedAt < Telnyx::Internal::Type::BaseModel
          # @!attribute gt
          #   Filters records to those created after a specific date.
          #
          #   @return [Time, nil]
          optional :gt, Time

          # @!attribute lt
          #   Filters records to those created before a specific date.
          #
          #   @return [Time, nil]
          optional :lt, Time

          # @!method initialize(gt: nil, lt: nil)
          #   @param gt [Time] Filters records to those created after a specific date.
          #
          #   @param lt [Time] Filters records to those created before a specific date.
        end

        # @see Telnyx::Models::CustomerServiceRecordListParams::Filter#phone_number
        class PhoneNumber < Telnyx::Internal::Type::BaseModel
          # @!attribute eq
          #   Filters records to those with a specified number.
          #
          #   @return [String, nil]
          optional :eq, String

          # @!attribute in_
          #   Filters records to those with at least one number in the list.
          #
          #   @return [Array<String>, nil]
          optional :in_, Telnyx::Internal::Type::ArrayOf[String], api_name: :in

          # @!method initialize(eq: nil, in_: nil)
          #   @param eq [String] Filters records to those with a specified number.
          #
          #   @param in_ [Array<String>] Filters records to those with at least one number in the list.
        end

        # @see Telnyx::Models::CustomerServiceRecordListParams::Filter#status
        class Status < Telnyx::Internal::Type::BaseModel
          # @!attribute eq
          #   Filters records to those with a specific status.
          #
          #   @return [Symbol, Telnyx::Models::CustomerServiceRecordListParams::Filter::Status::Eq, nil]
          optional :eq, enum: -> { Telnyx::CustomerServiceRecordListParams::Filter::Status::Eq }

          # @!attribute in_
          #   Filters records to those with a least one status in the list.
          #
          #   @return [Array<Symbol, Telnyx::Models::CustomerServiceRecordListParams::Filter::Status::In>, nil]
          optional :in_,
                   -> {
                     Telnyx::Internal::Type::ArrayOf[enum: Telnyx::CustomerServiceRecordListParams::Filter::Status::In]
                   },
                   api_name: :in

          # @!method initialize(eq: nil, in_: nil)
          #   @param eq [Symbol, Telnyx::Models::CustomerServiceRecordListParams::Filter::Status::Eq] Filters records to those with a specific status.
          #
          #   @param in_ [Array<Symbol, Telnyx::Models::CustomerServiceRecordListParams::Filter::Status::In>] Filters records to those with a least one status in the list.

          # Filters records to those with a specific status.
          #
          # @see Telnyx::Models::CustomerServiceRecordListParams::Filter::Status#eq
          module Eq
            extend Telnyx::Internal::Type::Enum

            PENDING = :pending
            COMPLETED = :completed
            FAILED = :failed

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          module In
            extend Telnyx::Internal::Type::Enum

            PENDING = :pending
            COMPLETED = :completed
            FAILED = :failed

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end

      class Page < Telnyx::Internal::Type::BaseModel
        # @!attribute number
        #   The page number to load
        #
        #   @return [Integer, nil]
        optional :number, Integer

        # @!attribute size
        #   The size of the page
        #
        #   @return [Integer, nil]
        optional :size, Integer

        # @!method initialize(number: nil, size: nil)
        #   Consolidated page parameter (deepObject style). Originally: page[size],
        #   page[number]
        #
        #   @param number [Integer] The page number to load
        #
        #   @param size [Integer] The size of the page
      end

      class Sort < Telnyx::Internal::Type::BaseModel
        # @!attribute value
        #   Specifies the sort order for results. If not given, results are sorted by
        #   created_at in descending order.
        #
        #   @return [Symbol, Telnyx::Models::CustomerServiceRecordListParams::Sort::Value, nil]
        optional :value, enum: -> { Telnyx::CustomerServiceRecordListParams::Sort::Value }

        # @!method initialize(value: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::CustomerServiceRecordListParams::Sort} for more details.
        #
        #   Consolidated sort parameter (deepObject style). Originally: sort[value]
        #
        #   @param value [Symbol, Telnyx::Models::CustomerServiceRecordListParams::Sort::Value] Specifies the sort order for results. If not given, results are sorted by create

        # Specifies the sort order for results. If not given, results are sorted by
        # created_at in descending order.
        #
        # @see Telnyx::Models::CustomerServiceRecordListParams::Sort#value
        module Value
          extend Telnyx::Internal::Type::Enum

          CREATED_AT = :created_at
          CREATED_AT_DESC = :"-created_at"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
