# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::RegulatoryRequirements#retrieve
    class RegulatoryRequirementRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::RegulatoryRequirementRetrieveResponse::Data>, nil]
      optional :data,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::RegulatoryRequirementRetrieveResponse::Data] }

      # @!method initialize(data: nil)
      #   @param data [Array<Telnyx::Models::RegulatoryRequirementRetrieveResponse::Data>]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute regulatory_requirements
        #
        #   @return [Array<Telnyx::Models::RegulatoryRequirementRetrieveResponse::Data::RegulatoryRequirement>, nil]
        optional :regulatory_requirements,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::RegulatoryRequirementRetrieveResponse::Data::RegulatoryRequirement] }

        response_only do
          # @!attribute action
          #
          #   @return [String, nil]
          optional :action, String

          # @!attribute country_code
          #
          #   @return [String, nil]
          optional :country_code, String

          # @!attribute phone_number_type
          #
          #   @return [String, nil]
          optional :phone_number_type, String
        end

        # @!method initialize(action: nil, country_code: nil, phone_number_type: nil, regulatory_requirements: nil)
        #   @param action [String]
        #   @param country_code [String]
        #   @param phone_number_type [String]
        #   @param regulatory_requirements [Array<Telnyx::Models::RegulatoryRequirementRetrieveResponse::Data::RegulatoryRequirement>]

        class RegulatoryRequirement < Telnyx::Internal::Type::BaseModel
          # @!attribute acceptance_criteria
          #
          #   @return [Telnyx::Models::RegulatoryRequirementRetrieveResponse::Data::RegulatoryRequirement::AcceptanceCriteria, nil]
          optional :acceptance_criteria,
                   -> { Telnyx::Models::RegulatoryRequirementRetrieveResponse::Data::RegulatoryRequirement::AcceptanceCriteria }

          # @!attribute field_type
          #
          #   @return [String, nil]
          optional :field_type, String

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

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
          end

          # @!method initialize(id: nil, acceptance_criteria: nil, description: nil, example: nil, field_type: nil, name: nil)
          #   @param id [String]
          #   @param acceptance_criteria [Telnyx::Models::RegulatoryRequirementRetrieveResponse::Data::RegulatoryRequirement::AcceptanceCriteria]
          #   @param description [String]
          #   @param example [String]
          #   @param field_type [String]
          #   @param name [String]

          # @see Telnyx::Models::RegulatoryRequirementRetrieveResponse::Data::RegulatoryRequirement#acceptance_criteria
          class AcceptanceCriteria < Telnyx::Internal::Type::BaseModel
            # @!attribute acceptable_characters
            #
            #   @return [String, nil]
            optional :acceptable_characters, String

            # @!attribute acceptable_values
            #
            #   @return [Array<String>, nil]
            optional :acceptable_values, Telnyx::Internal::Type::ArrayOf[String]

            # @!attribute case_sensitive
            #
            #   @return [String, nil]
            optional :case_sensitive, String

            # @!attribute locality_limit
            #
            #   @return [String, nil]
            optional :locality_limit, String

            # @!attribute max_length
            #
            #   @return [String, nil]
            optional :max_length, String

            # @!attribute min_length
            #
            #   @return [String, nil]
            optional :min_length, String

            # @!attribute regex
            #
            #   @return [String, nil]
            optional :regex, String

            # @!attribute time_limit
            #
            #   @return [String, nil]
            optional :time_limit, String

            # @!method initialize(acceptable_characters: nil, acceptable_values: nil, case_sensitive: nil, locality_limit: nil, max_length: nil, min_length: nil, regex: nil, time_limit: nil)
            #   @param acceptable_characters [String]
            #   @param acceptable_values [Array<String>]
            #   @param case_sensitive [String]
            #   @param locality_limit [String]
            #   @param max_length [String]
            #   @param min_length [String]
            #   @param regex [String]
            #   @param time_limit [String]
          end
        end
      end
    end
  end
end
