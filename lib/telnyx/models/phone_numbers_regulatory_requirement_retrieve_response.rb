# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PhoneNumbersRegulatoryRequirements#retrieve
    class PhoneNumbersRegulatoryRequirementRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveResponse::Data>, nil]
      optional :data,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveResponse::Data] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveResponse::Data>]
      #   @param meta [Telnyx::Models::PaginationMeta]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute region_information
        #
        #   @return [Array<Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveResponse::Data::RegionInformation>, nil]
        optional :region_information,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveResponse::Data::RegionInformation] }

        # @!attribute regulatory_requirements
        #
        #   @return [Array<Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveResponse::Data::RegulatoryRequirement>, nil]
        optional :regulatory_requirements,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveResponse::Data::RegulatoryRequirement] }

        response_only do
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
        end

        # @!method initialize(phone_number: nil, phone_number_type: nil, record_type: nil, region_information: nil, regulatory_requirements: nil)
        #   @param phone_number [String]
        #   @param phone_number_type [String]
        #   @param record_type [String]
        #   @param region_information [Array<Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveResponse::Data::RegionInformation>]
        #   @param regulatory_requirements [Array<Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveResponse::Data::RegulatoryRequirement>]

        class RegionInformation < Telnyx::Internal::Type::BaseModel
          # @!attribute region_name
          #
          #   @return [String, nil]
          optional :region_name, String

          # @!attribute region_type
          #
          #   @return [String, nil]
          optional :region_type, String

          # @!method initialize(region_name: nil, region_type: nil)
          #   @param region_name [String]
          #   @param region_type [String]
        end

        class RegulatoryRequirement < Telnyx::Internal::Type::BaseModel
          # @!attribute acceptance_criteria
          #
          #   @return [Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveResponse::Data::RegulatoryRequirement::AcceptanceCriteria, nil]
          optional :acceptance_criteria,
                   -> { Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveResponse::Data::RegulatoryRequirement::AcceptanceCriteria }

          # @!attribute field_type
          #
          #   @return [String, nil]
          optional :field_type, String

          # @!attribute label
          #
          #   @return [String, nil]
          optional :label, String

          response_only do
            # @!attribute id
            #
            #   @return [String, nil]
            optional :id, String

            # @!attribute description
            #
            #   @return [String, nil]
            optional :description, String

            # @!attribute example
            #
            #   @return [String, nil]
            optional :example, String

            # @!attribute record_type
            #
            #   @return [String, nil]
            optional :record_type, String
          end

          # @!method initialize(id: nil, acceptance_criteria: nil, description: nil, example: nil, field_type: nil, label: nil, record_type: nil)
          #   @param id [String]
          #   @param acceptance_criteria [Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveResponse::Data::RegulatoryRequirement::AcceptanceCriteria]
          #   @param description [String]
          #   @param example [String]
          #   @param field_type [String]
          #   @param label [String]
          #   @param record_type [String]

          # @see Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveResponse::Data::RegulatoryRequirement#acceptance_criteria
          class AcceptanceCriteria < Telnyx::Internal::Type::BaseModel
            # @!attribute field_type
            #
            #   @return [String, nil]
            optional :field_type, String

            # @!attribute field_value
            #
            #   @return [String, nil]
            optional :field_value, String

            # @!attribute locality_limit
            #
            #   @return [String, nil]
            optional :locality_limit, String

            # @!method initialize(field_type: nil, field_value: nil, locality_limit: nil)
            #   @param field_type [String]
            #   @param field_value [String]
            #   @param locality_limit [String]
          end
        end
      end
    end
  end
end
