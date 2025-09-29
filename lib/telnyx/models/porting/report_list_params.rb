# frozen_string_literal: true

module Telnyx
  module Models
    module Porting
      # @see Telnyx::Resources::Porting::Reports#list
      class ReportListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute filter
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[report_type], filter[status]
        #
        #   @return [Telnyx::Models::Porting::ReportListParams::Filter, nil]
        optional :filter, -> { Telnyx::Porting::ReportListParams::Filter }

        # @!attribute page
        #   Consolidated page parameter (deepObject style). Originally: page[size],
        #   page[number]
        #
        #   @return [Telnyx::Models::Porting::ReportListParams::Page, nil]
        optional :page, -> { Telnyx::Porting::ReportListParams::Page }

        # @!method initialize(filter: nil, page: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Porting::ReportListParams} for more details.
        #
        #   @param filter [Telnyx::Models::Porting::ReportListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[report_type
        #
        #   @param page [Telnyx::Models::Porting::ReportListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class Filter < Telnyx::Internal::Type::BaseModel
          # @!attribute report_type
          #   Filter reports of a specific type
          #
          #   @return [Symbol, Telnyx::Models::Porting::ReportListParams::Filter::ReportType, nil]
          optional :report_type, enum: -> { Telnyx::Porting::ReportListParams::Filter::ReportType }

          # @!attribute status
          #   Filter reports of a specific status
          #
          #   @return [Symbol, Telnyx::Models::Porting::ReportListParams::Filter::Status, nil]
          optional :status, enum: -> { Telnyx::Porting::ReportListParams::Filter::Status }

          # @!method initialize(report_type: nil, status: nil)
          #   Consolidated filter parameter (deepObject style). Originally:
          #   filter[report_type], filter[status]
          #
          #   @param report_type [Symbol, Telnyx::Models::Porting::ReportListParams::Filter::ReportType] Filter reports of a specific type
          #
          #   @param status [Symbol, Telnyx::Models::Porting::ReportListParams::Filter::Status] Filter reports of a specific status

          # Filter reports of a specific type
          #
          # @see Telnyx::Models::Porting::ReportListParams::Filter#report_type
          module ReportType
            extend Telnyx::Internal::Type::Enum

            EXPORT_PORTING_ORDERS_CSV = :export_porting_orders_csv

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Filter reports of a specific status
          #
          # @see Telnyx::Models::Porting::ReportListParams::Filter#status
          module Status
            extend Telnyx::Internal::Type::Enum

            PENDING = :pending
            COMPLETED = :completed

            # @!method self.values
            #   @return [Array<Symbol>]
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
      end
    end
  end
end
