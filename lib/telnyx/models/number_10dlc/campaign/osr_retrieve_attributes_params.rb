# frozen_string_literal: true

module Telnyx
  module Models
    module Number10dlc
      module Campaign
        # @see Telnyx::Resources::Number10dlc::Campaign::Osr#retrieve_attributes
        class OsrRetrieveAttributesParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
