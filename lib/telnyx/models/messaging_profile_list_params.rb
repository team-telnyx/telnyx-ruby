# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MessagingProfiles#list
    class MessagingProfileListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally: filter[name]
      #
      #   @return [Telnyx::Models::MessagingProfileListParams::Filter, nil]
      optional :filter, -> { Telnyx::MessagingProfileListParams::Filter }

      # @!attribute filter_name_contains
      #   Filter profiles by name containing the given string.
      #
      #   @return [String, nil]
      optional :filter_name_contains, String

      # @!attribute filter_name_eq
      #   Filter profiles by exact name match.
      #
      #   @return [String, nil]
      optional :filter_name_eq, String

      # @!attribute page_number
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!method initialize(filter: nil, filter_name_contains: nil, filter_name_eq: nil, page_number: nil, page_size: nil, request_options: {})
      #   @param filter [Telnyx::Models::MessagingProfileListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[name]
      #
      #   @param filter_name_contains [String] Filter profiles by name containing the given string.
      #
      #   @param filter_name_eq [String] Filter profiles by exact name match.
      #
      #   @param page_number [Integer]
      #
      #   @param page_size [Integer]
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute name
        #   Filter by name
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(name: nil)
        #   Consolidated filter parameter (deepObject style). Originally: filter[name]
        #
        #   @param name [String] Filter by name
      end
    end
  end
end
