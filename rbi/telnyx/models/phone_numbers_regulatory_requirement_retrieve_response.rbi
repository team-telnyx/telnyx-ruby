# typed: strong

module Telnyx
  module Models
    class PhoneNumbersRegulatoryRequirementRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            T::Array[
              Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveResponse::Data
            ]
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveResponse::Data::OrHash
            ]
        ).void
      end
      attr_writer :data

      sig { returns(T.nilable(Telnyx::PaginationMeta)) }
      attr_reader :meta

      sig { params(meta: Telnyx::PaginationMeta::OrHash).void }
      attr_writer :meta

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveResponse::Data::OrHash
            ],
          meta: Telnyx::PaginationMeta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          {
            data:
              T::Array[
                Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveResponse::Data
              ],
            meta: Telnyx::PaginationMeta
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveResponse::Data::RegionInformation
              ]
            )
          )
        end
        attr_reader :region_information

        sig do
          params(
            region_information:
              T::Array[
                Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveResponse::Data::RegionInformation::OrHash
              ]
          ).void
        end
        attr_writer :region_information

        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveResponse::Data::RegulatoryRequirement
              ]
            )
          )
        end
        attr_reader :regulatory_requirements

        sig do
          params(
            regulatory_requirements:
              T::Array[
                Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveResponse::Data::RegulatoryRequirement::OrHash
              ]
          ).void
        end
        attr_writer :regulatory_requirements

        sig { returns(T.nilable(String)) }
        attr_reader :phone_number

        sig { params(phone_number: String).void }
        attr_writer :phone_number

        sig { returns(T.nilable(String)) }
        attr_reader :phone_number_type

        sig { params(phone_number_type: String).void }
        attr_writer :phone_number_type

        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        sig do
          params(
            phone_number: String,
            phone_number_type: String,
            record_type: String,
            region_information:
              T::Array[
                Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveResponse::Data::RegionInformation::OrHash
              ],
            regulatory_requirements:
              T::Array[
                Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveResponse::Data::RegulatoryRequirement::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          phone_number: nil,
          phone_number_type: nil,
          record_type: nil,
          region_information: nil,
          regulatory_requirements: nil
        )
        end

        sig do
          override.returns(
            {
              phone_number: String,
              phone_number_type: String,
              record_type: String,
              region_information:
                T::Array[
                  Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveResponse::Data::RegionInformation
                ],
              regulatory_requirements:
                T::Array[
                  Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveResponse::Data::RegulatoryRequirement
                ]
            }
          )
        end
        def to_hash
        end

        class RegionInformation < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveResponse::Data::RegionInformation,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :region_name

          sig { params(region_name: String).void }
          attr_writer :region_name

          sig { returns(T.nilable(String)) }
          attr_reader :region_type

          sig { params(region_type: String).void }
          attr_writer :region_type

          sig do
            params(region_name: String, region_type: String).returns(
              T.attached_class
            )
          end
          def self.new(region_name: nil, region_type: nil)
          end

          sig { override.returns({ region_name: String, region_type: String }) }
          def to_hash
          end
        end

        class RegulatoryRequirement < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveResponse::Data::RegulatoryRequirement,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveResponse::Data::RegulatoryRequirement::AcceptanceCriteria
              )
            )
          end
          attr_reader :acceptance_criteria

          sig do
            params(
              acceptance_criteria:
                Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveResponse::Data::RegulatoryRequirement::AcceptanceCriteria::OrHash
            ).void
          end
          attr_writer :acceptance_criteria

          sig { returns(T.nilable(String)) }
          attr_reader :field_type

          sig { params(field_type: String).void }
          attr_writer :field_type

          sig { returns(T.nilable(String)) }
          attr_reader :label

          sig { params(label: String).void }
          attr_writer :label

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

          sig { returns(T.nilable(String)) }
          attr_reader :record_type

          sig { params(record_type: String).void }
          attr_writer :record_type

          sig do
            params(
              id: String,
              acceptance_criteria:
                Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveResponse::Data::RegulatoryRequirement::AcceptanceCriteria::OrHash,
              description: String,
              example: String,
              field_type: String,
              label: String,
              record_type: String
            ).returns(T.attached_class)
          end
          def self.new(
            id: nil,
            acceptance_criteria: nil,
            description: nil,
            example: nil,
            field_type: nil,
            label: nil,
            record_type: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                acceptance_criteria:
                  Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveResponse::Data::RegulatoryRequirement::AcceptanceCriteria,
                description: String,
                example: String,
                field_type: String,
                label: String,
                record_type: String
              }
            )
          end
          def to_hash
          end

          class AcceptanceCriteria < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::PhoneNumbersRegulatoryRequirementRetrieveResponse::Data::RegulatoryRequirement::AcceptanceCriteria,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :field_type

            sig { params(field_type: String).void }
            attr_writer :field_type

            sig { returns(T.nilable(String)) }
            attr_reader :field_value

            sig { params(field_value: String).void }
            attr_writer :field_value

            sig { returns(T.nilable(String)) }
            attr_reader :locality_limit

            sig { params(locality_limit: String).void }
            attr_writer :locality_limit

            sig do
              params(
                field_type: String,
                field_value: String,
                locality_limit: String
              ).returns(T.attached_class)
            end
            def self.new(field_type: nil, field_value: nil, locality_limit: nil)
            end

            sig do
              override.returns(
                {
                  field_type: String,
                  field_value: String,
                  locality_limit: String
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
