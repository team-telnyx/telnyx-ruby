# frozen_string_literal: true

module Telnyx
  module Models
    module Reputation
      # @see Telnyx::Resources::Reputation::Numbers#retrieve
      class NumberRetrieveParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute phone_number
        #
        #   @return [String]
        required :phone_number, String

        # @!attribute fresh
        #   When true, fetches fresh reputation data (incurs API cost). When false, returns
        #   cached data.
        #
        #   @return [Boolean, nil]
        optional :fresh, Telnyx::Internal::Type::Boolean

        # @!method initialize(phone_number:, fresh: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Reputation::NumberRetrieveParams} for more details.
        #
        #   @param phone_number [String]
        #
        #   @param fresh [Boolean] When true, fetches fresh reputation data (incurs API cost). When false, returns
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
