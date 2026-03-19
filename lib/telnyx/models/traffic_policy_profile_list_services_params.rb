# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::TrafficPolicyProfiles#list_services
    class TrafficPolicyProfileListServicesParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter_group
      #   Filter services by group.
      #
      #   @return [String, nil]
      optional :filter_group, String

      # @!attribute filter_name
      #   Filter services by name.
      #
      #   @return [String, nil]
      optional :filter_name, String

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

      # @!method initialize(filter_group: nil, filter_name: nil, page_number: nil, page_size: nil, request_options: {})
      #   @param filter_group [String] Filter services by group.
      #
      #   @param filter_name [String] Filter services by name.
      #
      #   @param page_number [Integer] The page number to load.
      #
      #   @param page_size [Integer] The size of the page.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
