# frozen_string_literal: true

module Telnyx
  module Models
    module PhoneNumberBlocks
      # @see Telnyx::Resources::PhoneNumberBlocks::Jobs#delete_phone_number_block
      class JobDeletePhoneNumberBlockParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute phone_number_block_id
        #
        #   @return [String]
        required :phone_number_block_id, String

        # @!method initialize(phone_number_block_id:, request_options: {})
        #   @param phone_number_block_id [String]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
