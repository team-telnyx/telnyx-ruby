# frozen_string_literal: true

module Telnyx
  module Models
    module PhoneNumbers
      # @see Telnyx::Resources::PhoneNumbers::Voicemail#create
      class VoicemailCreateParams < Telnyx::Models::PhoneNumbers::VoicemailRequest
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute phone_number_id
        #
        #   @return [String]
        required :phone_number_id, String

        # @!method initialize(phone_number_id:, request_options: {})
        #   @param phone_number_id [String]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
