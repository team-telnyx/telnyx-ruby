# frozen_string_literal: true

module Telnyx
  module Models
    module Messaging
      # @see Telnyx::Resources::Messaging::Rcs#invite_test_number
      class RcInviteTestNumberParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute phone_number
        #
        #   @return [String]
        required :phone_number, String

        # @!method initialize(id:, phone_number:, request_options: {})
        #   @param id [String]
        #   @param phone_number [String]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
