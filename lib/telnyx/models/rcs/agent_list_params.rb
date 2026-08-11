# frozen_string_literal: true

module Telnyx
  module Models
    module Rcs
      # @see Telnyx::Resources::Rcs::Agents#list
      class AgentListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute brand_id
        #   Only return agents belonging to this brand.
        #
        #   @return [String, nil]
        optional :brand_id, String

        # @!method initialize(brand_id: nil, request_options: {})
        #   @param brand_id [String] Only return agents belonging to this brand.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
