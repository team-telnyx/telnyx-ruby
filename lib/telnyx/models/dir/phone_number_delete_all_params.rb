# frozen_string_literal: true

module Telnyx
  module Models
    module Dir
      # @see Telnyx::Resources::Dir::PhoneNumbers#delete_all
      class PhoneNumberDeleteAllParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute dir_id
        #
        #   @return [String]
        required :dir_id, String

        # @!attribute phone_numbers
        #
        #   @return [Array<String>]
        required :phone_numbers, Telnyx::Internal::Type::ArrayOf[String]

        # @!method initialize(dir_id:, phone_numbers:, request_options: {})
        #   @param dir_id [String]
        #   @param phone_numbers [Array<String>]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
