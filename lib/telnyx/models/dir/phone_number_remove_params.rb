# frozen_string_literal: true

module Telnyx
  module Models
    module Dir
      # @see Telnyx::Resources::Dir::PhoneNumbers#remove
      class PhoneNumberRemoveParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute dir_id
        #
        #   @return [String]
        required :dir_id, String

        # @!attribute phone_numbers
        #   The phone numbers to remove from this brand, in E.164 format, up to 100 per
        #   request. They must currently be attached to this brand.
        #
        #   @return [Array<String>]
        required :phone_numbers, Telnyx::Internal::Type::ArrayOf[String]

        # @!method initialize(dir_id:, phone_numbers:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Dir::PhoneNumberRemoveParams} for more details.
        #
        #   @param dir_id [String]
        #
        #   @param phone_numbers [Array<String>] The phone numbers to remove from this brand, in E.164 format, up to 100 per requ
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
