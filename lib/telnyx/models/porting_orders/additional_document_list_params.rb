# frozen_string_literal: true

module Telnyx
  module Models
    module PortingOrders
      # @see Telnyx::Resources::PortingOrders::AdditionalDocuments#list
      class AdditionalDocumentListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute filter
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[document_type]
        #
        #   @return [Telnyx::Models::PortingOrders::AdditionalDocumentListParams::Filter, nil]
        optional :filter, -> { Telnyx::PortingOrders::AdditionalDocumentListParams::Filter }

        # @!attribute page
        #   Consolidated page parameter (deepObject style). Originally: page[size],
        #   page[number]
        #
        #   @return [Telnyx::Models::PortingOrders::AdditionalDocumentListParams::Page, nil]
        optional :page, -> { Telnyx::PortingOrders::AdditionalDocumentListParams::Page }

        # @!attribute sort
        #   Consolidated sort parameter (deepObject style). Originally: sort[value]
        #
        #   @return [Telnyx::Models::PortingOrders::AdditionalDocumentListParams::Sort, nil]
        optional :sort, -> { Telnyx::PortingOrders::AdditionalDocumentListParams::Sort }

        # @!method initialize(filter: nil, page: nil, sort: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::PortingOrders::AdditionalDocumentListParams} for more details.
        #
        #   @param filter [Telnyx::Models::PortingOrders::AdditionalDocumentListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[document_ty
        #
        #   @param page [Telnyx::Models::PortingOrders::AdditionalDocumentListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
        #
        #   @param sort [Telnyx::Models::PortingOrders::AdditionalDocumentListParams::Sort] Consolidated sort parameter (deepObject style). Originally: sort[value]
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class Filter < Telnyx::Internal::Type::BaseModel
          # @!attribute document_type
          #   Filter additional documents by a list of document types
          #
          #   @return [Array<Symbol, Telnyx::Models::PortingOrders::AdditionalDocumentListParams::Filter::DocumentType>, nil]
          optional :document_type,
                   -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::PortingOrders::AdditionalDocumentListParams::Filter::DocumentType] }

          # @!method initialize(document_type: nil)
          #   Consolidated filter parameter (deepObject style). Originally:
          #   filter[document_type]
          #
          #   @param document_type [Array<Symbol, Telnyx::Models::PortingOrders::AdditionalDocumentListParams::Filter::DocumentType>] Filter additional documents by a list of document types

          module DocumentType
            extend Telnyx::Internal::Type::Enum

            LOA = :loa
            INVOICE = :invoice
            CSR = :csr
            OTHER = :other

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

        class Sort < Telnyx::Internal::Type::BaseModel
          # @!attribute value
          #   Specifies the sort order for results. If not given, results are sorted by
          #   created_at in descending order.
          #
          #   @return [Symbol, Telnyx::Models::PortingOrders::AdditionalDocumentListParams::Sort::Value, nil]
          optional :value, enum: -> { Telnyx::PortingOrders::AdditionalDocumentListParams::Sort::Value }

          # @!method initialize(value: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::PortingOrders::AdditionalDocumentListParams::Sort} for more
          #   details.
          #
          #   Consolidated sort parameter (deepObject style). Originally: sort[value]
          #
          #   @param value [Symbol, Telnyx::Models::PortingOrders::AdditionalDocumentListParams::Sort::Value] Specifies the sort order for results. If not given, results are sorted by create

          # Specifies the sort order for results. If not given, results are sorted by
          # created_at in descending order.
          #
          # @see Telnyx::Models::PortingOrders::AdditionalDocumentListParams::Sort#value
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
end
