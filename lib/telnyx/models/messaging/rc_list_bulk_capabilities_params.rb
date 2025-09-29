# frozen_string_literal: true

module Telnyx
  module Models
    module Messaging
      # @see Telnyx::Resources::Messaging::Rcs#list_bulk_capabilities
      class RcListBulkCapabilitiesParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute agent_id
        #   RCS Agent ID
        #
        #   @return [String]
        required :agent_id, String

        # @!attribute phone_numbers
        #   List of phone numbers to check
        #
        #   @return [Array<String>]
        required :phone_numbers, Telnyx::Internal::Type::ArrayOf[String]

        # @!method initialize(agent_id:, phone_numbers:, request_options: {})
        #   @param agent_id [String] RCS Agent ID
        #
        #   @param phone_numbers [Array<String>] List of phone numbers to check
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
