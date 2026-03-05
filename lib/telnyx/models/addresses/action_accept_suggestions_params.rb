# frozen_string_literal: true

module Telnyx
  module Models
    module Addresses
      # @see Telnyx::Resources::Addresses::Actions#accept_suggestions
      class ActionAcceptSuggestionsParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute address_uuid
        #
        #   @return [String]
        required :address_uuid, String

        # @!attribute id
        #   The ID of the address.
        #
        #   @return [String, nil]
        optional :id, String

        # @!method initialize(address_uuid:, id: nil, request_options: {})
        #   @param address_uuid [String]
        #
        #   @param id [String] The ID of the address.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
