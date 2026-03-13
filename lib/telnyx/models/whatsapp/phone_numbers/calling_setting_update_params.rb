# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      module PhoneNumbers
        # @see Telnyx::Resources::Whatsapp::PhoneNumbers::CallingSettings#update
        class CallingSettingUpdateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute phone_number
          #
          #   @return [String]
          required :phone_number, String

          # @!attribute enabled
          #
          #   @return [Boolean]
          required :enabled, Telnyx::Internal::Type::Boolean

          # @!method initialize(phone_number:, enabled:, request_options: {})
          #   @param phone_number [String]
          #   @param enabled [Boolean]
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
