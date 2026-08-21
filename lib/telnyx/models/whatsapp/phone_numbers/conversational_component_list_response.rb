# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      module PhoneNumbers
        # @see Telnyx::Resources::Whatsapp::PhoneNumbers::ConversationalComponents#list
        class ConversationalComponentListResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Telnyx::Models::Whatsapp::PhoneNumbers::WhatsappConversationalComponent, nil]
          optional :data, -> { Telnyx::Whatsapp::PhoneNumbers::WhatsappConversationalComponent }

          # @!method initialize(data: nil)
          #   @param data [Telnyx::Models::Whatsapp::PhoneNumbers::WhatsappConversationalComponent]
        end
      end
    end
  end
end
