# frozen_string_literal: true

module Telnyx
  module Models
    module Number10dlc
      # @see Telnyx::Resources::Number10dlc::Campaign#retrieve_sharing
      class CampaignRetrieveSharingParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
