# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      module PhoneNumbers
        # @see Telnyx::Resources::Whatsapp::PhoneNumbers::CallingSettings#update
        class CallingSettingUpdateResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Telnyx::Models::Whatsapp::PhoneNumbers::WhatsappCallingSettingsData, nil]
          optional :data, -> { Telnyx::Whatsapp::PhoneNumbers::WhatsappCallingSettingsData }

          # @!method initialize(data: nil)
          #   @param data [Telnyx::Models::Whatsapp::PhoneNumbers::WhatsappCallingSettingsData]
        end
      end
    end
  end
end
