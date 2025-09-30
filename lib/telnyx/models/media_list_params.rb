# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Media#list
    class MediaListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally:
      #   filter[content_type][]
      #
      #   @return [Telnyx::Models::MediaListParams::Filter, nil]
      optional :filter, -> { Telnyx::MediaListParams::Filter }

      # @!method initialize(filter: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::MediaListParams} for more details.
      #
      #   @param filter [Telnyx::Models::MediaListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[content_typ
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute content_type
        #   Filters files by given content types
        #
        #   @return [Array<String>, nil]
        optional :content_type, Telnyx::Internal::Type::ArrayOf[String]

        # @!method initialize(content_type: nil)
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[content_type][]
        #
        #   @param content_type [Array<String>] Filters files by given content types
      end
    end
  end
end
