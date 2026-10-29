# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      # @see Telnyx::Resources::Whatsapp::PhoneNumbers#get
      class PhoneNumberGetResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::Whatsapp::WhatsappPhoneResponse>, nil]
        optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Whatsapp::WhatsappPhoneResponse] }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::MessagingPaginationMeta, nil]
        optional :meta, -> { Telnyx::MessagingPaginationMeta }

        # @!method initialize(data: nil, meta: nil)
        #   @param data [Array<Telnyx::Models::Whatsapp::WhatsappPhoneResponse>]
        #   @param meta [Telnyx::Models::MessagingPaginationMeta]
      end
    end
  end
end
