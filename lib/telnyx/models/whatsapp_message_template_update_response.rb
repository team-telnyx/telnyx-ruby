# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::WhatsappMessageTemplates#update
    class WhatsappMessageTemplateUpdateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::WhatsappTemplateData, nil]
      optional :data, -> { Telnyx::WhatsappTemplateData }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::WhatsappTemplateData]
    end
  end
end
