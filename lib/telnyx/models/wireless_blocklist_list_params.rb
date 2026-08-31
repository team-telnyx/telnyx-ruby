# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::WirelessBlocklists#list
    class WirelessBlocklistListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter_name
      #   The name of the Wireless Blocklist.
      #
      #   @return [String, nil]
      optional :filter_name, String

      # @!attribute filter_type
      #   When the Private Wireless Gateway was last updated.
      #
      #   @return [String, nil]
      optional :filter_type, String

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

      # @!method initialize(filter_name: nil, filter_type: nil, page_number: nil, page_size: nil, request_options: {})
      #   @param filter_name [String] The name of the Wireless Blocklist.
      #
      #   @param filter_type [String] When the Private Wireless Gateway was last updated.
      #
      #   @param page_number [Integer] The page number to load.
      #
      #   @param page_size [Integer] The size of the page.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
