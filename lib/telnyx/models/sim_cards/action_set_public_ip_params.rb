# frozen_string_literal: true

module Telnyx
  module Models
    module SimCards
      # @see Telnyx::Resources::SimCards::Actions#set_public_ip
      class ActionSetPublicIPParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute region_code
        #   The code of the region where the public IP should be assigned. A list of
        #   available regions can be found at the regions endpoint
        #
        #   @return [String, nil]
        optional :region_code, String

        # @!method initialize(region_code: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::SimCards::ActionSetPublicIPParams} for more details.
        #
        #   @param region_code [String] The code of the region where the public IP should be assigned. A list of availab
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
