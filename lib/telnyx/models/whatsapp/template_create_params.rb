# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      # @see Telnyx::Resources::Whatsapp::Templates#create
      class TemplateCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute category
        #
        #   @return [Symbol, Telnyx::Models::Whatsapp::TemplateCreateParams::Category]
        required :category, enum: -> { Telnyx::Whatsapp::TemplateCreateParams::Category }

        # @!attribute components
        #
        #   @return [Array<Hash{Symbol=>Object}>]
        required :components,
                 Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]]

        # @!attribute language
        #
        #   @return [String]
        required :language, String

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute waba_id
        #
        #   @return [String]
        required :waba_id, String

        # @!method initialize(category:, components:, language:, name:, waba_id:, request_options: {})
        #   @param category [Symbol, Telnyx::Models::Whatsapp::TemplateCreateParams::Category]
        #   @param components [Array<Hash{Symbol=>Object}>]
        #   @param language [String]
        #   @param name [String]
        #   @param waba_id [String]
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
