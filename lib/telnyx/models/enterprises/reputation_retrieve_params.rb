# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      # @see Telnyx::Resources::Enterprises::Reputation#retrieve
      class ReputationRetrieveParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute enterprise_id
        #
        #   @return [String]
        required :enterprise_id, String

        # @!method initialize(enterprise_id:, request_options: {})
        #   @param enterprise_id [String]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
