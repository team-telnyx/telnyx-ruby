# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::IntegrationSecrets#list
    class IntegrationSecretListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally: filter[type]
      #
      #   @return [Telnyx::Models::IntegrationSecretListParams::Filter, nil]
      optional :filter, -> { Telnyx::IntegrationSecretListParams::Filter }

      # @!attribute page_number
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!method initialize(filter: nil, page_number: nil, page_size: nil, request_options: {})
      #   @param filter [Telnyx::Models::IntegrationSecretListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[type]
      #
      #   @param page_number [Integer]
      #
      #   @param page_size [Integer]
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute type
        #
        #   @return [Symbol, Telnyx::Models::IntegrationSecretListParams::Filter::Type, nil]
        optional :type, enum: -> { Telnyx::IntegrationSecretListParams::Filter::Type }

        # @!method initialize(type: nil)
        #   Consolidated filter parameter (deepObject style). Originally: filter[type]
        #
        #   @param type [Symbol, Telnyx::Models::IntegrationSecretListParams::Filter::Type]

        # @see Telnyx::Models::IntegrationSecretListParams::Filter#type
        module Type
          extend Telnyx::Internal::Type::Enum

          BEARER = :bearer
          BASIC = :basic

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
