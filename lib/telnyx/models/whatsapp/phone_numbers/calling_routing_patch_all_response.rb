# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      module PhoneNumbers
        # @see Telnyx::Resources::Whatsapp::PhoneNumbers::CallingRouting#patch_all
        class CallingRoutingPatchAllResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Telnyx::Models::Whatsapp::PhoneNumbers::WhatsappCallingRoutingData]
          required :data, -> { Telnyx::Whatsapp::PhoneNumbers::WhatsappCallingRoutingData }

          # @!method initialize(data:)
          #   @param data [Telnyx::Models::Whatsapp::PhoneNumbers::WhatsappCallingRoutingData]
        end
      end
    end
  end
end
