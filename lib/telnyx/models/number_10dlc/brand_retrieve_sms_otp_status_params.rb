# frozen_string_literal: true

module Telnyx
  module Models
    module Number10dlc
      # @see Telnyx::Resources::Number10dlc::Brand#retrieve_sms_otp_status
      class BrandRetrieveSMSOtpStatusParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute brand_id
        #   Filter by Brand ID for easier lookup in portal applications
        #
        #   @return [String, nil]
        optional :brand_id, String

        # @!method initialize(brand_id: nil, request_options: {})
        #   @param brand_id [String] Filter by Brand ID for easier lookup in portal applications
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
