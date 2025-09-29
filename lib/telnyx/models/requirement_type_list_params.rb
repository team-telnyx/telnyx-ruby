# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::RequirementTypes#list
    class RequirementTypeListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter for requirement types (deepObject style).
      #   Originally: filter[name]
      #
      #   @return [Telnyx::Models::RequirementTypeListParams::Filter, nil]
      optional :filter, -> { Telnyx::RequirementTypeListParams::Filter }

      # @!attribute sort
      #   Consolidated sort parameter for requirement types (deepObject style).
      #   Originally: sort[]
      #
      #   @return [Array<Symbol, Telnyx::Models::RequirementTypeListParams::Sort>, nil]
      optional :sort, -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::RequirementTypeListParams::Sort] }

      # @!method initialize(filter: nil, sort: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::RequirementTypeListParams} for more details.
      #
      #   @param filter [Telnyx::Models::RequirementTypeListParams::Filter] Consolidated filter parameter for requirement types (deepObject style). Original
      #
      #   @param sort [Array<Symbol, Telnyx::Models::RequirementTypeListParams::Sort>] Consolidated sort parameter for requirement types (deepObject style). Originally
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute name
        #
        #   @return [Telnyx::Models::RequirementTypeListParams::Filter::Name, nil]
        optional :name, -> { Telnyx::RequirementTypeListParams::Filter::Name }

        # @!method initialize(name: nil)
        #   Consolidated filter parameter for requirement types (deepObject style).
        #   Originally: filter[name]
        #
        #   @param name [Telnyx::Models::RequirementTypeListParams::Filter::Name]

        # @see Telnyx::Models::RequirementTypeListParams::Filter#name
        class Name < Telnyx::Internal::Type::BaseModel
          # @!attribute contains
          #   Filters requirement types to those whose name contains a certain string.
          #
          #   @return [String, nil]
          optional :contains, String

          # @!method initialize(contains: nil)
          #   @param contains [String] Filters requirement types to those whose name contains a certain string.
        end
      end

      module Sort
        extend Telnyx::Internal::Type::Enum

        NAME = :name
        CREATED_AT = :created_at
        UPDATED_AT = :updated_at
        NAME_DESC = :"-name"
        CREATED_AT_DESC = :"-created_at"
        UPDATED_AT_DESC = :"-updated_at"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
