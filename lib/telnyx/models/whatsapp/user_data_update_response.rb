# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      # @see Telnyx::Resources::Whatsapp::UserData#update
      class UserDataUpdateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Whatsapp::WhatsappUserData, nil]
        optional :data, -> { Telnyx::Whatsapp::WhatsappUserData }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::Whatsapp::WhatsappUserData]
      end
    end
  end
end
