# frozen_string_literal: true

module Telnyx
  module Models
    module SimCards
      # @see Telnyx::Resources::SimCards::Actions#bulk_set_public_ips
      class ActionBulkSetPublicIPsParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute sim_card_ids
        #
        #   @return [Array<String>]
        required :sim_card_ids, Telnyx::Internal::Type::ArrayOf[String]

        # @!method initialize(sim_card_ids:, request_options: {})
        #   @param sim_card_ids [Array<String>]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
