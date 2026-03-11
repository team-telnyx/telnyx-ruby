# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      # @see Telnyx::Resources::Whatsapp::Templates#list
      class TemplateListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute category
        #
        #   @return [Symbol, Telnyx::Models::Whatsapp::TemplateListResponse::Category, nil]
        optional :category, enum: -> { Telnyx::Models::Whatsapp::TemplateListResponse::Category }

        # @!attribute components
        #   Whatsapp template components (header, body, footer, buttons)
        #
        #   @return [Array<Object>, nil]
        optional :components, Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::Unknown]

        # @!attribute created_at
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute language
        #
        #   @return [String, nil]
        optional :language, String

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute record_type
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute rejection_reason
        #
        #   @return [String, nil]
        optional :rejection_reason, String

        # @!attribute status
        #
        #   @return [String, nil]
        optional :status, String

        # @!attribute template_id
        #
        #   @return [String, nil]
        optional :template_id, String

        # @!attribute updated_at
        #
        #   @return [Time, nil]
        optional :updated_at, Time

        # @!attribute whatsapp_business_account
        #
        #   @return [Telnyx::Models::Whatsapp::TemplateListResponse::WhatsappBusinessAccount, nil]
        optional :whatsapp_business_account,
                 -> { Telnyx::Models::Whatsapp::TemplateListResponse::WhatsappBusinessAccount }

        # @!method initialize(id: nil, category: nil, components: nil, created_at: nil, language: nil, name: nil, record_type: nil, rejection_reason: nil, status: nil, template_id: nil, updated_at: nil, whatsapp_business_account: nil)
        #   @param id [String]
        #
        #   @param category [Symbol, Telnyx::Models::Whatsapp::TemplateListResponse::Category]
        #
        #   @param components [Array<Object>] Whatsapp template components (header, body, footer, buttons)
        #
        #   @param created_at [Time]
        #
        #   @param language [String]
        #
        #   @param name [String]
        #
        #   @param record_type [String]
        #
        #   @param rejection_reason [String]
        #
        #   @param status [String]
        #
        #   @param template_id [String]
        #
        #   @param updated_at [Time]
        #
        #   @param whatsapp_business_account [Telnyx::Models::Whatsapp::TemplateListResponse::WhatsappBusinessAccount]

        # @see Telnyx::Models::Whatsapp::TemplateListResponse#category
        module Category
          extend Telnyx::Internal::Type::Enum

          MARKETING = :MARKETING
          UTILITY = :UTILITY
          AUTHENTICATION = :AUTHENTICATION

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::Whatsapp::TemplateListResponse#whatsapp_business_account
        class WhatsappBusinessAccount < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String, nil]
          optional :id, String

          # @!method initialize(id: nil)
          #   @param id [String]
        end
      end
    end
  end
end
