# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MobileVoiceConnections#list
    class MobileVoiceConnectionListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter_connection_name_contains
      #   Filter by connection name containing the given string
      #
      #   @return [String, nil]
      optional :filter_connection_name_contains, String

      # @!attribute page_number
      #   The page number to load
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #   The size of the page
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute sort
      #   Sort by field (e.g., created_at, connection_name, active). Prefix with - for
      #   descending order.
      #
      #   @return [String, nil]
      optional :sort, String

      # @!method initialize(filter_connection_name_contains: nil, page_number: nil, page_size: nil, sort: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::MobileVoiceConnectionListParams} for more details.
      #
      #   @param filter_connection_name_contains [String] Filter by connection name containing the given string
      #
      #   @param page_number [Integer] The page number to load
      #
      #   @param page_size [Integer] The size of the page
      #
      #   @param sort [String] Sort by field (e.g., created_at, connection_name, active). Prefix with - for des
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
