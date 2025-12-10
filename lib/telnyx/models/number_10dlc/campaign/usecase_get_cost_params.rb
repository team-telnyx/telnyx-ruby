# frozen_string_literal: true

module Telnyx
  module Models
    module Number10dlc
      module Campaign
        # @see Telnyx::Resources::Number10dlc::Campaign::Usecase#get_cost
        class UsecaseGetCostParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute usecase
          #
          #   @return [String]
          required :usecase, String

          # @!method initialize(usecase:, request_options: {})
          #   @param usecase [String]
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
