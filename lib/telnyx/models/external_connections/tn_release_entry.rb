# frozen_string_literal: true

module Telnyx
  module Models
    module ExternalConnections
      class TnReleaseEntry < Telnyx::Internal::Type::BaseModel
        # @!attribute number_id
        #   Phone number ID from the Telnyx API.
        #
        #   @return [String, nil]
        optional :number_id, String

        # @!attribute phone_number
        #   Phone number in E164 format.
        #
        #   @return [String, nil]
        optional :phone_number, String

        # @!method initialize(number_id: nil, phone_number: nil)
        #   @param number_id [String] Phone number ID from the Telnyx API.
        #
        #   @param phone_number [String] Phone number in E164 format.
      end
    end
  end
end
