# frozen_string_literal: true

module Telnyx
  module Models
    module Addresses
      # @see Telnyx::Resources::Addresses::Actions#accept_suggestions
      class ActionAcceptSuggestionsParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute body_id
        #   The ID of the address.
        #
        #   @return [String, nil]
        optional :body_id, String, api_name: :id

        # @!method initialize(body_id: nil, request_options: {})
        #   @param body_id [String] The ID of the address.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
