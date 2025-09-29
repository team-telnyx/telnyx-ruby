# typed: strong

module Telnyx
  module Models
    class RequirementGroupCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::RequirementGroupCreateParams, Telnyx::Internal::AnyHash)
        end

      sig { returns(Telnyx::RequirementGroupCreateParams::Action::OrSymbol) }
      attr_accessor :action

      # ISO alpha 2 country code
      sig { returns(String) }
      attr_accessor :country_code

      sig do
        returns(Telnyx::RequirementGroupCreateParams::PhoneNumberType::OrSymbol)
      end
      attr_accessor :phone_number_type

      sig { returns(T.nilable(String)) }
      attr_reader :customer_reference

      sig { params(customer_reference: String).void }
      attr_writer :customer_reference

      sig do
        returns(
          T.nilable(
            T::Array[
              Telnyx::RequirementGroupCreateParams::RegulatoryRequirement
            ]
          )
        )
      end
      attr_reader :regulatory_requirements

      sig do
        params(
          regulatory_requirements:
            T::Array[
              Telnyx::RequirementGroupCreateParams::RegulatoryRequirement::OrHash
            ]
        ).void
      end
      attr_writer :regulatory_requirements

      sig do
        params(
          action: Telnyx::RequirementGroupCreateParams::Action::OrSymbol,
          country_code: String,
          phone_number_type:
            Telnyx::RequirementGroupCreateParams::PhoneNumberType::OrSymbol,
          customer_reference: String,
          regulatory_requirements:
            T::Array[
              Telnyx::RequirementGroupCreateParams::RegulatoryRequirement::OrHash
            ],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        action:,
        # ISO alpha 2 country code
        country_code:,
        phone_number_type:,
        customer_reference: nil,
        regulatory_requirements: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            action: Telnyx::RequirementGroupCreateParams::Action::OrSymbol,
            country_code: String,
            phone_number_type:
              Telnyx::RequirementGroupCreateParams::PhoneNumberType::OrSymbol,
            customer_reference: String,
            regulatory_requirements:
              T::Array[
                Telnyx::RequirementGroupCreateParams::RegulatoryRequirement
              ],
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Action
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::RequirementGroupCreateParams::Action)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ORDERING =
          T.let(
            :ordering,
            Telnyx::RequirementGroupCreateParams::Action::TaggedSymbol
          )
        PORTING =
          T.let(
            :porting,
            Telnyx::RequirementGroupCreateParams::Action::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::RequirementGroupCreateParams::Action::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module PhoneNumberType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::RequirementGroupCreateParams::PhoneNumberType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LOCAL =
          T.let(
            :local,
            Telnyx::RequirementGroupCreateParams::PhoneNumberType::TaggedSymbol
          )
        TOLL_FREE =
          T.let(
            :toll_free,
            Telnyx::RequirementGroupCreateParams::PhoneNumberType::TaggedSymbol
          )
        MOBILE =
          T.let(
            :mobile,
            Telnyx::RequirementGroupCreateParams::PhoneNumberType::TaggedSymbol
          )
        NATIONAL =
          T.let(
            :national,
            Telnyx::RequirementGroupCreateParams::PhoneNumberType::TaggedSymbol
          )
        SHARED_COST =
          T.let(
            :shared_cost,
            Telnyx::RequirementGroupCreateParams::PhoneNumberType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::RequirementGroupCreateParams::PhoneNumberType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class RegulatoryRequirement < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::RequirementGroupCreateParams::RegulatoryRequirement,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :field_value

        sig { params(field_value: String).void }
        attr_writer :field_value

        sig { returns(T.nilable(String)) }
        attr_reader :requirement_id

        sig { params(requirement_id: String).void }
        attr_writer :requirement_id

        sig do
          params(field_value: String, requirement_id: String).returns(
            T.attached_class
          )
        end
        def self.new(field_value: nil, requirement_id: nil)
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
