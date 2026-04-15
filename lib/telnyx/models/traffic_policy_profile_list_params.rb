# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::TrafficPolicyProfiles#list
    class TrafficPolicyProfileListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter_service
      #   Filter by service ID.
      #
      #   @return [String, nil]
      optional :filter_service, String

      # @!attribute filter_type
      #   Filter by traffic policy profile type.
      #
      #   @return [Symbol, Telnyx::Models::TrafficPolicyProfileListParams::FilterType, nil]
      optional :filter_type, enum: -> { Telnyx::TrafficPolicyProfileListParams::FilterType }

      # @!attribute page_number
      #   The page number to load.
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #   The size of the page.
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute sort
      #   Sorts traffic policy profiles by the given field. Defaults to ascending order
      #   unless field is prefixed with a minus sign.
      #
      #   @return [Symbol, Telnyx::Models::TrafficPolicyProfileListParams::Sort, nil]
      optional :sort, enum: -> { Telnyx::TrafficPolicyProfileListParams::Sort }

      # @!method initialize(filter_service: nil, filter_type: nil, page_number: nil, page_size: nil, sort: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::TrafficPolicyProfileListParams} for more details.
      #
      #   @param filter_service [String] Filter by service ID.
      #
      #   @param filter_type [Symbol, Telnyx::Models::TrafficPolicyProfileListParams::FilterType] Filter by traffic policy profile type.
      #
      #   @param page_number [Integer] The page number to load.
      #
      #   @param page_size [Integer] The size of the page.
      #
      #   @param sort [Symbol, Telnyx::Models::TrafficPolicyProfileListParams::Sort] Sorts traffic policy profiles by the given field. Defaults to ascending order un
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Filter by traffic policy profile type.
      module FilterType
        extend Telnyx::Internal::Type::Enum

        WHITELIST = :whitelist
        BLACKLIST = :blacklist
        THROTTLING = :throttling

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Sorts traffic policy profiles by the given field. Defaults to ascending order
      # unless field is prefixed with a minus sign.
      module Sort
        extend Telnyx::Internal::Type::Enum

        SERVICE = :service
        DESC_SERVICE = :"-service"
        TYPE = :type
        DESC_TYPE = :"-type"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
