# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      # @see Telnyx::Resources::Whatsapp::MessageTemplates#update
      class MessageTemplateUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute category
        #
        #   @return [Symbol, Telnyx::Models::Whatsapp::MessageTemplateUpdateParams::Category, nil]
        optional :category, enum: -> { Telnyx::Whatsapp::MessageTemplateUpdateParams::Category }

        # @!attribute components
        #
        #   @return [Array<Hash{Symbol=>Object}>, nil]
        optional :components,
                 Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]]

        # @!method initialize(id:, category: nil, components: nil, request_options: {})
        #   @param id [String]
        #   @param category [Symbol, Telnyx::Models::Whatsapp::MessageTemplateUpdateParams::Category]
        #   @param components [Array<Hash{Symbol=>Object}>]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        module Category
          extend Telnyx::Internal::Type::Enum

          MARKETING = :MARKETING
          UTILITY = :UTILITY
          AUTHENTICATION = :AUTHENTICATION

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
