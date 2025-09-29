# frozen_string_literal: true

module Telnyx
  module Models
    module Messages
      # @see Telnyx::Resources::Messages::Rcs#generate_deeplink
      class RcGenerateDeeplinkParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute body
        #   Pre-filled message body (URL encoded)
        #
        #   @return [String, nil]
        optional :body, String

        # @!attribute phone_number
        #   Phone number in E164 format (URL encoded)
        #
        #   @return [String, nil]
        optional :phone_number, String

        # @!method initialize(body: nil, phone_number: nil, request_options: {})
        #   @param body [String] Pre-filled message body (URL encoded)
        #
        #   @param phone_number [String] Phone number in E164 format (URL encoded)
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
