# frozen_string_literal: true

module Telnyx
  module Models
    module PhoneNumbers
      # @see Telnyx::Resources::PhoneNumbers::Actions#enable_emergency
      class ActionEnableEmergencyResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::PhoneNumbers::PhoneNumberWithVoiceSettings, nil]
        optional :data, -> { Telnyx::PhoneNumbers::PhoneNumberWithVoiceSettings }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::PhoneNumbers::PhoneNumberWithVoiceSettings]
      end
    end
  end
end
