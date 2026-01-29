# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::DocumentLinks#list
    class DocumentLinkListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter for document links (deepObject style). Originally:
      #   filter[linked_record_type], filter[linked_resource_id]
      #
      #   @return [Telnyx::Models::DocumentLinkListParams::Filter, nil]
      optional :filter, -> { Telnyx::DocumentLinkListParams::Filter }

      # @!attribute page
      #   Consolidated page parameter (deepObject style). Originally: page[size],
      #   page[number]
      #
      #   @return [Telnyx::Models::DocumentLinkListParams::Page, nil]
      optional :page, -> { Telnyx::DocumentLinkListParams::Page }

      # @!method initialize(filter: nil, page: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::DocumentLinkListParams} for more details.
      #
      #   @param filter [Telnyx::Models::DocumentLinkListParams::Filter] Consolidated filter parameter for document links (deepObject style). Originally:
      #
      #   @param page [Telnyx::Models::DocumentLinkListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute linked_record_type
        #   The linked_record_type of the document to filter on.
        #
        #   @return [String, nil]
        optional :linked_record_type, String

        # @!attribute linked_resource_id
        #   The linked_resource_id of the document to filter on.
        #
        #   @return [String, nil]
        optional :linked_resource_id, String

        # @!method initialize(linked_record_type: nil, linked_resource_id: nil)
        #   Consolidated filter parameter for document links (deepObject style). Originally:
        #   filter[linked_record_type], filter[linked_resource_id]
        #
        #   @param linked_record_type [String] The linked_record_type of the document to filter on.
        #
        #   @param linked_resource_id [String] The linked_resource_id of the document to filter on.
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
