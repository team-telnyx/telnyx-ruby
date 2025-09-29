# frozen_string_literal: true

module Telnyx
  module Models
    module PhoneNumbers
      # @see Telnyx::Resources::PhoneNumbers::Messaging#update
      class MessagingUpdateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::PhoneNumberWithMessagingSettings, nil]
        optional :data, -> { Telnyx::PhoneNumberWithMessagingSettings }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::PhoneNumberWithMessagingSettings]
      end
    end
  end
end
