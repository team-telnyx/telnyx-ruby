# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NumberOrderPhoneNumbers#update_requirements
    class NumberOrderPhoneNumberUpdateRequirementsParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute number_order_phone_number_id
      #
      #   @return [String]
      required :number_order_phone_number_id, String

      # @!attribute regulatory_requirements
      #
      #   @return [Array<Telnyx::Models::UpdateRegulatoryRequirement>, nil]
      optional :regulatory_requirements,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::UpdateRegulatoryRequirement] }

      # @!method initialize(number_order_phone_number_id:, regulatory_requirements: nil, request_options: {})
      #   @param number_order_phone_number_id [String]
      #   @param regulatory_requirements [Array<Telnyx::Models::UpdateRegulatoryRequirement>]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
