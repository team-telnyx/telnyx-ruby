# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::RequirementGroups#create
    class RequirementGroupCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute action
      #
      #   @return [Symbol, Telnyx::Models::RequirementGroupCreateParams::Action]
      required :action, enum: -> { Telnyx::RequirementGroupCreateParams::Action }

      # @!attribute country_code
      #   ISO alpha 2 country code
      #
      #   @return [String]
      required :country_code, String

      # @!attribute phone_number_type
      #
      #   @return [Symbol, Telnyx::Models::RequirementGroupCreateParams::PhoneNumberType]
      required :phone_number_type, enum: -> { Telnyx::RequirementGroupCreateParams::PhoneNumberType }

      # @!attribute customer_reference
      #
      #   @return [String, nil]
      optional :customer_reference, String

      # @!attribute regulatory_requirements
      #
      #   @return [Array<Telnyx::Models::RequirementGroupCreateParams::RegulatoryRequirement>, nil]
      optional :regulatory_requirements,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::RequirementGroupCreateParams::RegulatoryRequirement] }

      # @!method initialize(action:, country_code:, phone_number_type:, customer_reference: nil, regulatory_requirements: nil, request_options: {})
      #   @param action [Symbol, Telnyx::Models::RequirementGroupCreateParams::Action]
      #
      #   @param country_code [String] ISO alpha 2 country code
      #
      #   @param phone_number_type [Symbol, Telnyx::Models::RequirementGroupCreateParams::PhoneNumberType]
      #
      #   @param customer_reference [String]
      #
      #   @param regulatory_requirements [Array<Telnyx::Models::RequirementGroupCreateParams::RegulatoryRequirement>]
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      module Action
        extend Telnyx::Internal::Type::Enum

        ORDERING = :ordering
        PORTING = :porting

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module PhoneNumberType
        extend Telnyx::Internal::Type::Enum

        LOCAL = :local
        TOLL_FREE = :toll_free
        MOBILE = :mobile
        NATIONAL = :national
        SHARED_COST = :shared_cost

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class RegulatoryRequirement < Telnyx::Internal::Type::BaseModel
        # @!attribute field_value
        #
        #   @return [String, nil]
        optional :field_value, String

        # @!attribute requirement_id
        #
        #   @return [String, nil]
        optional :requirement_id, String

        # @!method initialize(field_value: nil, requirement_id: nil)
        #   @param field_value [String]
        #   @param requirement_id [String]
      end
    end
  end
end
