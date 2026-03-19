# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      # @see Telnyx::Resources::Whatsapp::MessageTemplates#create
      class MessageTemplateCreateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::WhatsappTemplateData, nil]
        optional :data, -> { Telnyx::WhatsappTemplateData }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::WhatsappTemplateData]
      end
    end
  end
end
