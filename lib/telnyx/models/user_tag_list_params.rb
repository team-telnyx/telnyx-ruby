# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::UserTags#list
    class UserTagListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally:
      #   filter[starts_with]
      #
      #   @return [Telnyx::Models::UserTagListParams::Filter, nil]
      optional :filter, -> { Telnyx::UserTagListParams::Filter }

      # @!method initialize(filter: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::UserTagListParams} for more details.
      #
      #   @param filter [Telnyx::Models::UserTagListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[starts_with
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute starts_with
        #   Filter tags by prefix
        #
        #   @return [String, nil]
        optional :starts_with, String

        # @!method initialize(starts_with: nil)
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[starts_with]
        #
        #   @param starts_with [String] Filter tags by prefix
      end
    end
  end
end
