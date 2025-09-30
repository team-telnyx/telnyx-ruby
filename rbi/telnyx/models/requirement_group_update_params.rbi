# typed: strong

module Telnyx
  module Models
    class RequirementGroupUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::RequirementGroupUpdateParams, Telnyx::Internal::AnyHash)
        end

      # Reference for the customer
      sig { returns(T.nilable(String)) }
      attr_reader :customer_reference

      sig { params(customer_reference: String).void }
      attr_writer :customer_reference

      sig do
        returns(
          T.nilable(
            T::Array[
              Telnyx::RequirementGroupUpdateParams::RegulatoryRequirement
            ]
          )
        )
      end
      attr_reader :regulatory_requirements

      sig do
        params(
          regulatory_requirements:
            T::Array[
              Telnyx::RequirementGroupUpdateParams::RegulatoryRequirement::OrHash
            ]
        ).void
      end
      attr_writer :regulatory_requirements

      sig do
        params(
          customer_reference: String,
          regulatory_requirements:
            T::Array[
              Telnyx::RequirementGroupUpdateParams::RegulatoryRequirement::OrHash
            ],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Reference for the customer
        customer_reference: nil,
        regulatory_requirements: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            customer_reference: String,
            regulatory_requirements:
              T::Array[
                Telnyx::RequirementGroupUpdateParams::RegulatoryRequirement
              ],
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class RegulatoryRequirement < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::RequirementGroupUpdateParams::RegulatoryRequirement,
              Telnyx::Internal::AnyHash
            )
          end

        # New value for the regulatory requirement
        sig { returns(T.nilable(String)) }
        attr_reader :field_value

        sig { params(field_value: String).void }
        attr_writer :field_value

        # Unique identifier for the regulatory requirement
        sig { returns(T.nilable(String)) }
        attr_reader :requirement_id

        sig { params(requirement_id: String).void }
        attr_writer :requirement_id

        sig do
          params(field_value: String, requirement_id: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # New value for the regulatory requirement
          field_value: nil,
          # Unique identifier for the regulatory requirement
          requirement_id: nil
        )
        end

        sig do
          override.returns({ field_value: String, requirement_id: String })
        end
        def to_hash
        end
      end
    end
  end
end
