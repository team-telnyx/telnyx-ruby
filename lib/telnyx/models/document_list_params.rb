# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Documents#list
    class DocumentListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter for documents (deepObject style). Originally:
      #   filter[filename][contains], filter[customer_reference][eq],
      #   filter[customer_reference][in][], filter[created_at][gt], filter[created_at][lt]
      #
      #   @return [Telnyx::Models::DocumentListParams::Filter, nil]
      optional :filter, -> { Telnyx::DocumentListParams::Filter }

      # @!attribute page_number
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute sort
      #   Consolidated sort parameter for documents (deepObject style). Originally: sort[]
      #
      #   @return [Array<Symbol, Telnyx::Models::DocumentListParams::Sort>, nil]
      optional :sort, -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::DocumentListParams::Sort] }

      # @!method initialize(filter: nil, page_number: nil, page_size: nil, sort: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::DocumentListParams} for more details.
      #
      #   @param filter [Telnyx::Models::DocumentListParams::Filter] Consolidated filter parameter for documents (deepObject style). Originally: filt
      #
      #   @param page_number [Integer]
      #
      #   @param page_size [Integer]
      #
      #   @param sort [Array<Symbol, Telnyx::Models::DocumentListParams::Sort>] Consolidated sort parameter for documents (deepObject style). Originally: sort[]
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute created_at
        #
        #   @return [Telnyx::Models::DocumentListParams::Filter::CreatedAt, nil]
        optional :created_at, -> { Telnyx::DocumentListParams::Filter::CreatedAt }

        # @!attribute customer_reference
        #
        #   @return [Telnyx::Models::DocumentListParams::Filter::CustomerReference, nil]
        optional :customer_reference, -> { Telnyx::DocumentListParams::Filter::CustomerReference }

        # @!attribute filename
        #
        #   @return [Telnyx::Models::DocumentListParams::Filter::Filename, nil]
        optional :filename, -> { Telnyx::DocumentListParams::Filter::Filename }

        # @!method initialize(created_at: nil, customer_reference: nil, filename: nil)
        #   Consolidated filter parameter for documents (deepObject style). Originally:
        #   filter[filename][contains], filter[customer_reference][eq],
        #   filter[customer_reference][in][], filter[created_at][gt], filter[created_at][lt]
        #
        #   @param created_at [Telnyx::Models::DocumentListParams::Filter::CreatedAt]
        #   @param customer_reference [Telnyx::Models::DocumentListParams::Filter::CustomerReference]
        #   @param filename [Telnyx::Models::DocumentListParams::Filter::Filename]

        # @see Telnyx::Models::DocumentListParams::Filter#created_at
        class CreatedAt < Telnyx::Internal::Type::BaseModel
          # @!attribute gt
          #   Filter by created at greater than provided value.
          #
          #   @return [Time, nil]
          optional :gt, Time

          # @!attribute lt
          #   Filter by created at less than provided value.
          #
          #   @return [Time, nil]
          optional :lt, Time

          # @!method initialize(gt: nil, lt: nil)
          #   @param gt [Time] Filter by created at greater than provided value.
          #
          #   @param lt [Time] Filter by created at less than provided value.
        end

        # @see Telnyx::Models::DocumentListParams::Filter#customer_reference
        class CustomerReference < Telnyx::Internal::Type::BaseModel
          # @!attribute eq
          #   Filter documents by a customer reference.
          #
          #   @return [String, nil]
          optional :eq, String

          # @!attribute in_
          #   Filter documents by a list of customer references.
          #
          #   @return [Array<String>, nil]
          optional :in_, Telnyx::Internal::Type::ArrayOf[String], api_name: :in

          # @!method initialize(eq: nil, in_: nil)
          #   @param eq [String] Filter documents by a customer reference.
          #
          #   @param in_ [Array<String>] Filter documents by a list of customer references.
        end

        # @see Telnyx::Models::DocumentListParams::Filter#filename
        class Filename < Telnyx::Internal::Type::BaseModel
          # @!attribute contains
          #   Filter by string matching part of filename.
          #
          #   @return [String, nil]
          optional :contains, String

          # @!method initialize(contains: nil)
          #   @param contains [String] Filter by string matching part of filename.
        end
      end

      module Sort
        extend Telnyx::Internal::Type::Enum

        FILENAME = :filename
        CREATED_AT = :created_at
        UPDATED_AT = :updated_at
        FILENAME_DESC = :"-filename"
        CREATED_AT_DESC = :"-created_at"
        UPDATED_AT_DESC = :"-updated_at"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
