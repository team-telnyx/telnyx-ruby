# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MessagingHostedNumbers#retrieve
    class MessagingHostedNumberRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::PhoneNumberWithMessagingSettings, nil]
      optional :data, -> { Telnyx::PhoneNumberWithMessagingSettings }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::PhoneNumberWithMessagingSettings]
    end
  end
end
