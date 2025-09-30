# frozen_string_literal: true

module Telnyx
  module Models
    module PhoneNumbers
      # @see Telnyx::Resources::PhoneNumbers::Messaging#list
      class MessagingListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::PhoneNumberWithMessagingSettings>, nil]
        optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::PhoneNumberWithMessagingSettings] }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::PaginationMeta, nil]
        optional :meta, -> { Telnyx::PaginationMeta }

        # @!method initialize(data: nil, meta: nil)
        #   @param data [Array<Telnyx::Models::PhoneNumberWithMessagingSettings>]
        #   @param meta [Telnyx::Models::PaginationMeta]
      end
    end
  end
end
