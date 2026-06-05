# frozen_string_literal: true

module Telnyx
  module Models
    module TermsOfService
      # @see Telnyx::Resources::TermsOfService::Agreements#list
      class AgreementListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute page_number
        #   1-based page number. Out-of-range values return an empty page with correct meta.
        #
        #   @return [Integer, nil]
        optional :page_number, Integer

        # @!attribute page_size
        #   Items per page. Maximum 250; values above are clamped to 250.
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!attribute product_type
        #   Optional filter. Omit to list the user's agreements for **every** product
        #   (branded_calling and number_reputation); pass a value to return only that
        #   product's agreements.
        #
        #   @return [Symbol, Telnyx::Models::TermsOfService::AgreementListParams::ProductType, nil]
        optional :product_type, enum: -> { Telnyx::TermsOfService::AgreementListParams::ProductType }

        # @!method initialize(page_number: nil, page_size: nil, product_type: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::TermsOfService::AgreementListParams} for more details.
        #
        #   @param page_number [Integer] 1-based page number. Out-of-range values return an empty page with correct meta.
        #
        #   @param page_size [Integer] Items per page. Maximum 250; values above are clamped to 250.
        #
        #   @param product_type [Symbol, Telnyx::Models::TermsOfService::AgreementListParams::ProductType] Optional filter. Omit to list the user's agreements for **every** product (brand
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Optional filter. Omit to list the user's agreements for **every** product
        # (branded_calling and number_reputation); pass a value to return only that
        # product's agreements.
        module ProductType
          extend Telnyx::Internal::Type::Enum

          BRANDED_CALLING = :branded_calling
          NUMBER_REPUTATION = :number_reputation

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
