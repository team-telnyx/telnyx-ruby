# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MessagingNumbersBulkUpdates#create
    class MessagingNumbersBulkUpdateCreateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::BulkMessagingSettingsUpdatePhoneNumbers, nil]
      optional :data, -> { Telnyx::BulkMessagingSettingsUpdatePhoneNumbers }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::BulkMessagingSettingsUpdatePhoneNumbers]
    end
  end
end
