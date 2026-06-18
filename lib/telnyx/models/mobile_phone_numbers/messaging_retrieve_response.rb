# frozen_string_literal: true

module Telnyx
  module Models
    module MobilePhoneNumbers
      # @see Telnyx::Resources::MobilePhoneNumbers::Messaging#retrieve
      class MessagingRetrieveResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::MobilePhoneNumbers::MobilePhoneNumberWithMessagingSettings, nil]
        optional :data, -> { Telnyx::MobilePhoneNumbers::MobilePhoneNumberWithMessagingSettings }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::MobilePhoneNumbers::MobilePhoneNumberWithMessagingSettings]
      end
    end
  end
end
