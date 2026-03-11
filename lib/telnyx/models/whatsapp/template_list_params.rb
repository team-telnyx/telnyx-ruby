# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      # @see Telnyx::Resources::Whatsapp::Templates#list
      class TemplateListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute filter_category
        #   Filter by category
        #
        #   @return [Symbol, Telnyx::Models::Whatsapp::TemplateListParams::FilterCategory, nil]
        optional :filter_category, enum: -> { Telnyx::Whatsapp::TemplateListParams::FilterCategory }

        # @!attribute filter_search
        #   Search templates by name
        #
        #   @return [String, nil]
        optional :filter_search, String

        # @!attribute filter_status
        #   Filter by template status
        #
        #   @return [String, nil]
        optional :filter_status, String

        # @!attribute filter_waba_id
        #   Filter by WABA ID
        #
        #   @return [String, nil]
        optional :filter_waba_id, String

        # @!attribute page_number
        #
        #   @return [Integer, nil]
        optional :page_number, Integer

        # @!attribute page_size
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!method initialize(filter_category: nil, filter_search: nil, filter_status: nil, filter_waba_id: nil, page_number: nil, page_size: nil, request_options: {})
        #   @param filter_category [Symbol, Telnyx::Models::Whatsapp::TemplateListParams::FilterCategory] Filter by category
        #
        #   @param filter_search [String] Search templates by name
        #
        #   @param filter_status [String] Filter by template status
        #
        #   @param filter_waba_id [String] Filter by WABA ID
        #
        #   @param page_number [Integer]
        #
        #   @param page_size [Integer]
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Filter by category
        module FilterCategory
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
