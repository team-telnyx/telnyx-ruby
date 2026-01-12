# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VerifyProfiles#list
    class VerifyProfileListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally: filter[name]
      #
      #   @return [Telnyx::Models::VerifyProfileListParams::Filter, nil]
      optional :filter, -> { Telnyx::VerifyProfileListParams::Filter }

      # @!attribute page_number
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!method initialize(filter: nil, page_number: nil, page_size: nil, request_options: {})
      #   @param filter [Telnyx::Models::VerifyProfileListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[name]
      #
      #   @param page_number [Integer]
      #
      #   @param page_size [Integer]
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute name
        #   Optional filter for profile names.
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(name: nil)
        #   Consolidated filter parameter (deepObject style). Originally: filter[name]
        #
        #   @param name [String] Optional filter for profile names.
      end
    end
  end
end
