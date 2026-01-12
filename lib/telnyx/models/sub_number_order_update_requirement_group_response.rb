# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SubNumberOrders#update_requirement_group
    class SubNumberOrderUpdateRequirementGroupResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::SubNumberOrderUpdateRequirementGroupResponse::Data, nil]
      optional :data, -> { Telnyx::Models::SubNumberOrderUpdateRequirementGroupResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::SubNumberOrderUpdateRequirementGroupResponse::Data]

      # @see Telnyx::Models::SubNumberOrderUpdateRequirementGroupResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute country_code
        #
        #   @return [String, nil]
        optional :country_code, String

        # @!attribute created_at
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute customer_reference
        #
        #   @return [String, nil]
        optional :customer_reference, String

        # @!attribute is_block_sub_number_order
        #
        #   @return [Boolean, nil]
        optional :is_block_sub_number_order, Telnyx::Internal::Type::Boolean

        # @!attribute order_request_id
        #
        #   @return [String, nil]
        optional :order_request_id, String

        # @!attribute phone_number_type
        #
        #   @return [String, nil]
        optional :phone_number_type, String

        # @!attribute phone_numbers
        #
        #   @return [Array<Telnyx::Models::SubNumberOrderUpdateRequirementGroupResponse::Data::PhoneNumber>, nil]
        optional :phone_numbers,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::SubNumberOrderUpdateRequirementGroupResponse::Data::PhoneNumber] }

        # @!attribute phone_numbers_count
        #
        #   @return [Integer, nil]
        optional :phone_numbers_count, Integer

        # @!attribute record_type
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute regulatory_requirements
        #
        #   @return [Array<Telnyx::Models::SubNumberOrderUpdateRequirementGroupResponse::Data::RegulatoryRequirement>, nil]
        optional :regulatory_requirements,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::SubNumberOrderUpdateRequirementGroupResponse::Data::RegulatoryRequirement] }

        # @!attribute requirements_met
        #
        #   @return [Boolean, nil]
        optional :requirements_met, Telnyx::Internal::Type::Boolean

        # @!attribute status
        #
        #   @return [String, nil]
        optional :status, String

        # @!attribute updated_at
        #
        #   @return [Time, nil]
        optional :updated_at, Time

        # @!method initialize(id: nil, country_code: nil, created_at: nil, customer_reference: nil, is_block_sub_number_order: nil, order_request_id: nil, phone_number_type: nil, phone_numbers: nil, phone_numbers_count: nil, record_type: nil, regulatory_requirements: nil, requirements_met: nil, status: nil, updated_at: nil)
        #   @param id [String]
        #   @param country_code [String]
        #   @param created_at [Time]
        #   @param customer_reference [String]
        #   @param is_block_sub_number_order [Boolean]
        #   @param order_request_id [String]
        #   @param phone_number_type [String]
        #   @param phone_numbers [Array<Telnyx::Models::SubNumberOrderUpdateRequirementGroupResponse::Data::PhoneNumber>]
        #   @param phone_numbers_count [Integer]
        #   @param record_type [String]
        #   @param regulatory_requirements [Array<Telnyx::Models::SubNumberOrderUpdateRequirementGroupResponse::Data::RegulatoryRequirement>]
        #   @param requirements_met [Boolean]
        #   @param status [String]
        #   @param updated_at [Time]

        class PhoneNumber < Telnyx::Internal::Type::BaseModel
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
          #   @return [Array<Telnyx::Models::SubNumberOrderUpdateRequirementGroupResponse::Data::PhoneNumber::RegulatoryRequirement>, nil]
          optional :regulatory_requirements,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::SubNumberOrderUpdateRequirementGroupResponse::Data::PhoneNumber::RegulatoryRequirement] }

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

          # @!method initialize(id: nil, bundle_id: nil, country_code: nil, phone_number: nil, phone_number_type: nil, record_type: nil, regulatory_requirements: nil, requirements_met: nil, requirements_status: nil, status: nil)
          #   @param id [String]
          #   @param bundle_id [String, nil]
          #   @param country_code [String]
          #   @param phone_number [String]
          #   @param phone_number_type [String]
          #   @param record_type [String]
          #   @param regulatory_requirements [Array<Telnyx::Models::SubNumberOrderUpdateRequirementGroupResponse::Data::PhoneNumber::RegulatoryRequirement>]
          #   @param requirements_met [Boolean]
          #   @param requirements_status [String]
          #   @param status [String]

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

        class RegulatoryRequirement < Telnyx::Internal::Type::BaseModel
          # @!attribute field_type
          #
          #   @return [String, nil]
          optional :field_type, String

          # @!attribute record_type
          #
          #   @return [String, nil]
          optional :record_type, String

          # @!attribute requirement_id
          #
          #   @return [String, nil]
          optional :requirement_id, String

          # @!method initialize(field_type: nil, record_type: nil, requirement_id: nil)
          #   @param field_type [String]
          #   @param record_type [String]
          #   @param requirement_id [String]
        end
      end
    end
  end
end
