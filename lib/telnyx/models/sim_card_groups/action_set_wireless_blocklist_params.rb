# frozen_string_literal: true

module Telnyx
  module Models
    module SimCardGroups
      # @see Telnyx::Resources::SimCardGroups::Actions#set_wireless_blocklist
      class ActionSetWirelessBlocklistParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute wireless_blocklist_id
        #   The identification of the related Wireless Blocklist resource.
        #
        #   @return [String]
        required :wireless_blocklist_id, String

        # @!method initialize(id:, wireless_blocklist_id:, request_options: {})
        #   @param id [String]
        #
        #   @param wireless_blocklist_id [String] The identification of the related Wireless Blocklist resource.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
