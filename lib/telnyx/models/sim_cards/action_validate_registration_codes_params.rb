# frozen_string_literal: true

module Telnyx
  module Models
    module SimCards
      # @see Telnyx::Resources::SimCards::Actions#validate_registration_codes
      class ActionValidateRegistrationCodesParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute registration_codes
        #
        #   @return [Array<String>, nil]
        optional :registration_codes, Telnyx::Internal::Type::ArrayOf[String]

        # @!method initialize(registration_codes: nil, request_options: {})
        #   @param registration_codes [Array<String>]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
