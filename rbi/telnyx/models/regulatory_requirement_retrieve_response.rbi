# typed: strong

module Telnyx
  module Models
    class RegulatoryRequirementRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::RegulatoryRequirementRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            T::Array[
              Telnyx::Models::RegulatoryRequirementRetrieveResponse::Data
            ]
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::RegulatoryRequirementRetrieveResponse::Data::OrHash
            ]
        ).void
      end
      attr_writer :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::RegulatoryRequirementRetrieveResponse::Data::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          {
            data:
              T::Array[
                Telnyx::Models::RegulatoryRequirementRetrieveResponse::Data
              ]
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::RegulatoryRequirementRetrieveResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::Models::RegulatoryRequirementRetrieveResponse::Data::RegulatoryRequirement
              ]
            )
          )
        end
        attr_reader :regulatory_requirements

        sig do
          params(
            regulatory_requirements:
              T::Array[
                Telnyx::Models::RegulatoryRequirementRetrieveResponse::Data::RegulatoryRequirement::OrHash
              ]
          ).void
        end
        attr_writer :regulatory_requirements

        sig { returns(T.nilable(String)) }
        attr_reader :action

        sig { params(action: String).void }
        attr_writer :action

        sig { returns(T.nilable(String)) }
        attr_reader :country_code

        sig { params(country_code: String).void }
        attr_writer :country_code

        sig { returns(T.nilable(String)) }
        attr_reader :phone_number_type

        sig { params(phone_number_type: String).void }
        attr_writer :phone_number_type

        sig do
          params(
            action: String,
            country_code: String,
            phone_number_type: String,
            regulatory_requirements:
              T::Array[
                Telnyx::Models::RegulatoryRequirementRetrieveResponse::Data::RegulatoryRequirement::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          action: nil,
          country_code: nil,
          phone_number_type: nil,
          regulatory_requirements: nil
        )
        end

        sig do
          override.returns(
            {
              action: String,
              country_code: String,
              phone_number_type: String,
              regulatory_requirements:
                T::Array[
                  Telnyx::Models::RegulatoryRequirementRetrieveResponse::Data::RegulatoryRequirement
                ]
            }
          )
        end
        def to_hash
        end

        class RegulatoryRequirement < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::RegulatoryRequirementRetrieveResponse::Data::RegulatoryRequirement,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Telnyx::Models::RegulatoryRequirementRetrieveResponse::Data::RegulatoryRequirement::AcceptanceCriteria
              )
            )
          end
          attr_reader :acceptance_criteria

          sig do
            params(
              acceptance_criteria:
                Telnyx::Models::RegulatoryRequirementRetrieveResponse::Data::RegulatoryRequirement::AcceptanceCriteria::OrHash
            ).void
          end
          attr_writer :acceptance_criteria

          sig { returns(T.nilable(String)) }
          attr_reader :field_type

          sig { params(field_type: String).void }
          attr_writer :field_type

          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { params(description: String).void }
          attr_writer :description

          sig { returns(T.nilable(String)) }
          attr_reader :example

          sig { params(example: String).void }
          attr_writer :example

          sig do
            params(
              id: String,
              acceptance_criteria:
                Telnyx::Models::RegulatoryRequirementRetrieveResponse::Data::RegulatoryRequirement::AcceptanceCriteria::OrHash,
              description: String,
              example: String,
              field_type: String,
              name: String
            ).returns(T.attached_class)
          end
          def self.new(
            id: nil,
            acceptance_criteria: nil,
            description: nil,
            example: nil,
            field_type: nil,
            name: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                acceptance_criteria:
                  Telnyx::Models::RegulatoryRequirementRetrieveResponse::Data::RegulatoryRequirement::AcceptanceCriteria,
                description: String,
                example: String,
                field_type: String,
                name: String
              }
            )
          end
          def to_hash
          end

          class AcceptanceCriteria < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::RegulatoryRequirementRetrieveResponse::Data::RegulatoryRequirement::AcceptanceCriteria,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :acceptable_characters

            sig { params(acceptable_characters: String).void }
            attr_writer :acceptable_characters

            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :acceptable_values

            sig { params(acceptable_values: T::Array[String]).void }
            attr_writer :acceptable_values

            sig { returns(T.nilable(String)) }
            attr_reader :case_sensitive

            sig { params(case_sensitive: String).void }
            attr_writer :case_sensitive

            sig { returns(T.nilable(String)) }
            attr_reader :locality_limit

            sig { params(locality_limit: String).void }
            attr_writer :locality_limit

            sig { returns(T.nilable(String)) }
            attr_reader :max_length

            sig { params(max_length: String).void }
            attr_writer :max_length

            sig { returns(T.nilable(String)) }
            attr_reader :min_length

            sig { params(min_length: String).void }
            attr_writer :min_length

            sig { returns(T.nilable(String)) }
            attr_reader :regex

            sig { params(regex: String).void }
            attr_writer :regex

            sig { returns(T.nilable(String)) }
            attr_reader :time_limit

            sig { params(time_limit: String).void }
            attr_writer :time_limit

            sig do
              params(
                acceptable_characters: String,
                acceptable_values: T::Array[String],
                case_sensitive: String,
                locality_limit: String,
                max_length: String,
                min_length: String,
                regex: String,
                time_limit: String
              ).returns(T.attached_class)
            end
            def self.new(
              acceptable_characters: nil,
              acceptable_values: nil,
              case_sensitive: nil,
              locality_limit: nil,
              max_length: nil,
              min_length: nil,
              regex: nil,
              time_limit: nil
            )
            end

            sig do
              override.returns(
                {
                  acceptable_characters: String,
                  acceptable_values: T::Array[String],
                  case_sensitive: String,
                  locality_limit: String,
                  max_length: String,
                  min_length: String,
                  regex: String,
                  time_limit: String
                }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
