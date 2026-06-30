# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      # @see Telnyx::Resources::Whatsapp::PhoneNumbers#get_conversation_window
      class PhoneNumberGetConversationWindowParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute phone_number
        #
        #   @return [String]
        required :phone_number, String

        # @!attribute destination_number
        #   Destination phone number in E.164 format
        #
        #   @return [String]
        required :destination_number, String

        # @!method initialize(phone_number:, destination_number:, request_options: {})
        #   @param phone_number [String]
        #
        #   @param destination_number [String] Destination phone number in E.164 format
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
