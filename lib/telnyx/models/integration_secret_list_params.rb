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

      # @!attribute page
      #   Consolidated page parameter (deepObject style). Originally: page[size],
      #   page[number]
      #
      #   @return [Telnyx::Models::IntegrationSecretListParams::Page, nil]
      optional :page, -> { Telnyx::IntegrationSecretListParams::Page }

      # @!method initialize(filter: nil, page: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::IntegrationSecretListParams} for more details.
      #
      #   @param filter [Telnyx::Models::IntegrationSecretListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[type]
      #
      #   @param page [Telnyx::Models::IntegrationSecretListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
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

      class Page < Telnyx::Internal::Type::BaseModel
        # @!attribute number
        #
        #   @return [Integer, nil]
        optional :number, Integer

        # @!attribute size
        #
        #   @return [Integer, nil]
        optional :size, Integer

        # @!method initialize(number: nil, size: nil)
        #   Consolidated page parameter (deepObject style). Originally: page[size],
        #   page[number]
        #
        #   @param number [Integer]
        #   @param size [Integer]
      end
    end
  end
end
