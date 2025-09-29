# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NumberOrderPhoneNumbers#update_requirement_group
    class NumberOrderPhoneNumberUpdateRequirementGroupResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::NumberOrderPhoneNumberUpdateRequirementGroupResponse::Data, nil]
      optional :data, -> { Telnyx::Models::NumberOrderPhoneNumberUpdateRequirementGroupResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::NumberOrderPhoneNumberUpdateRequirementGroupResponse::Data]

      # @see Telnyx::Models::NumberOrderPhoneNumberUpdateRequirementGroupResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute bundle_id
        #
        #   @return [String, nil]
        optional :bundle_id, String, nil?: true

        # @!attribute country_code
        #
        #   @return [String, nil]
        optional :country_code, String

        # @!attribute deadline
        #
        #   @return [Time, nil]
        optional :deadline, Time

        # @!attribute is_block_number
        #
        #   @return [Boolean, nil]
        optional :is_block_number, Telnyx::Internal::Type::Boolean

        # @!attribute locality
        #
        #   @return [String, nil]
        optional :locality, String

        # @!attribute order_request_id
        #
        #   @return [String, nil]
        optional :order_request_id, String

        # @!attribute phone_number
        #
        #   @return [String, nil]
        optional :phone_number, String

        # @!attribute phone_number_type
        #
        #   @return [String, nil]
        optional :phone_number_type, String

        # @!attribute record_type
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute regulatory_requirements
        #
        #   @return [Array<Telnyx::Models::NumberOrderPhoneNumberUpdateRequirementGroupResponse::Data::RegulatoryRequirement>, nil]
        optional :regulatory_requirements,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::NumberOrderPhoneNumberUpdateRequirementGroupResponse::Data::RegulatoryRequirement] }

        # @!attribute requirements_met
        #
        #   @return [Boolean, nil]
        optional :requirements_met, Telnyx::Internal::Type::Boolean

        # @!attribute requirements_status
        #
        #   @return [String, nil]
        optional :requirements_status, String

        # @!attribute status
        #
        #   @return [String, nil]
        optional :status, String

        # @!attribute sub_number_order_id
        #
        #   @return [String, nil]
        optional :sub_number_order_id, String

        # @!method initialize(id: nil, bundle_id: nil, country_code: nil, deadline: nil, is_block_number: nil, locality: nil, order_request_id: nil, phone_number: nil, phone_number_type: nil, record_type: nil, regulatory_requirements: nil, requirements_met: nil, requirements_status: nil, status: nil, sub_number_order_id: nil)
        #   @param id [String]
        #   @param bundle_id [String, nil]
        #   @param country_code [String]
        #   @param deadline [Time]
        #   @param is_block_number [Boolean]
        #   @param locality [String]
        #   @param order_request_id [String]
        #   @param phone_number [String]
        #   @param phone_number_type [String]
        #   @param record_type [String]
        #   @param regulatory_requirements [Array<Telnyx::Models::NumberOrderPhoneNumberUpdateRequirementGroupResponse::Data::RegulatoryRequirement>]
        #   @param requirements_met [Boolean]
        #   @param requirements_status [String]
        #   @param status [String]
        #   @param sub_number_order_id [String]

        class RegulatoryRequirement < Telnyx::Internal::Type::BaseModel
          # @!attribute field_type
          #
          #   @return [String, nil]
          optional :field_type, String

          # @!attribute field_value
          #
          #   @return [String, nil]
          optional :field_value, String

          # @!attribute requirement_id
          #
          #   @return [String, nil]
          optional :requirement_id, String

          # @!attribute status
          #
          #   @return [String, nil]
          optional :status, String

          # @!method initialize(field_type: nil, field_value: nil, requirement_id: nil, status: nil)
          #   @param field_type [String]
          #   @param field_value [String]
          #   @param requirement_id [String]
          #   @param status [String]
        end
      end
    end
  end
end
