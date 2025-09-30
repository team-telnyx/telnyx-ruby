# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SimCardGroups#list
    class SimCardGroupListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter_name
      #   A valid SIM card group name.
      #
      #   @return [String, nil]
      optional :filter_name, String

      # @!attribute filter_private_wireless_gateway_id
      #   A Private Wireless Gateway ID associated with the group.
      #
      #   @return [String, nil]
      optional :filter_private_wireless_gateway_id, String

      # @!attribute filter_wireless_blocklist_id
      #   A Wireless Blocklist ID associated with the group.
      #
      #   @return [String, nil]
      optional :filter_wireless_blocklist_id, String

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

      # @!method initialize(filter_name: nil, filter_private_wireless_gateway_id: nil, filter_wireless_blocklist_id: nil, page_number: nil, page_size: nil, request_options: {})
      #   @param filter_name [String] A valid SIM card group name.
      #
      #   @param filter_private_wireless_gateway_id [String] A Private Wireless Gateway ID associated with the group.
      #
      #   @param filter_wireless_blocklist_id [String] A Wireless Blocklist ID associated with the group.
      #
      #   @param page_number [Integer] The page number to load.
      #
      #   @param page_size [Integer] The size of the page.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
