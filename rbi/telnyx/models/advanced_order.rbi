# typed: strong

module Telnyx
  module Models
    class AdvancedOrder < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::AdvancedOrder, Telnyx::Internal::AnyHash) }

      sig { returns(T.nilable(String)) }
      attr_reader :area_code

      sig { params(area_code: String).void }
      attr_writer :area_code

      sig { returns(T.nilable(String)) }
      attr_reader :comments

      sig { params(comments: String).void }
      attr_writer :comments

      sig { returns(T.nilable(String)) }
      attr_reader :country_code

      sig { params(country_code: String).void }
      attr_writer :country_code

      sig { returns(T.nilable(String)) }
      attr_reader :customer_reference

      sig { params(customer_reference: String).void }
      attr_writer :customer_reference

      sig do
        returns(T.nilable(T::Array[Telnyx::AdvancedOrder::Feature::OrSymbol]))
      end
      attr_reader :features

      sig do
        params(
          features: T::Array[Telnyx::AdvancedOrder::Feature::OrSymbol]
        ).void
      end
      attr_writer :features

      sig do
        returns(T.nilable(Telnyx::AdvancedOrder::PhoneNumberType::OrSymbol))
      end
      attr_reader :phone_number_type

      sig do
        params(
          phone_number_type: Telnyx::AdvancedOrder::PhoneNumberType::OrSymbol
        ).void
      end
      attr_writer :phone_number_type

      sig { returns(T.nilable(Integer)) }
      attr_reader :quantity

      sig { params(quantity: Integer).void }
      attr_writer :quantity

      # The ID of the requirement group to associate with this advanced order
      sig { returns(T.nilable(String)) }
      attr_reader :requirement_group_id

      sig { params(requirement_group_id: String).void }
      attr_writer :requirement_group_id

      sig do
        params(
          area_code: String,
          comments: String,
          country_code: String,
          customer_reference: String,
          features: T::Array[Telnyx::AdvancedOrder::Feature::OrSymbol],
          phone_number_type: Telnyx::AdvancedOrder::PhoneNumberType::OrSymbol,
          quantity: Integer,
          requirement_group_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        area_code: nil,
        comments: nil,
        country_code: nil,
        customer_reference: nil,
        features: nil,
        phone_number_type: nil,
        quantity: nil,
        # The ID of the requirement group to associate with this advanced order
        requirement_group_id: nil
      )
      end

      sig do
        override.returns(
          {
            area_code: String,
            comments: String,
            country_code: String,
            customer_reference: String,
            features: T::Array[Telnyx::AdvancedOrder::Feature::OrSymbol],
            phone_number_type: Telnyx::AdvancedOrder::PhoneNumberType::OrSymbol,
            quantity: Integer,
            requirement_group_id: String
          }
        )
      end
      def to_hash
      end

      module Feature
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::AdvancedOrder::Feature) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SMS = T.let(:sms, Telnyx::AdvancedOrder::Feature::TaggedSymbol)
        MMS = T.let(:mms, Telnyx::AdvancedOrder::Feature::TaggedSymbol)
        VOICE = T.let(:voice, Telnyx::AdvancedOrder::Feature::TaggedSymbol)
        FAX = T.let(:fax, Telnyx::AdvancedOrder::Feature::TaggedSymbol)
        EMERGENCY =
          T.let(:emergency, Telnyx::AdvancedOrder::Feature::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::AdvancedOrder::Feature::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module PhoneNumberType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::AdvancedOrder::PhoneNumberType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LOCAL =
          T.let(:local, Telnyx::AdvancedOrder::PhoneNumberType::TaggedSymbol)
        MOBILE =
          T.let(:mobile, Telnyx::AdvancedOrder::PhoneNumberType::TaggedSymbol)
        TOLL_FREE =
          T.let(
            :toll_free,
            Telnyx::AdvancedOrder::PhoneNumberType::TaggedSymbol
          )
        SHARED_COST =
          T.let(
            :shared_cost,
            Telnyx::AdvancedOrder::PhoneNumberType::TaggedSymbol
          )
        NATIONAL =
          T.let(:national, Telnyx::AdvancedOrder::PhoneNumberType::TaggedSymbol)
        LANDLINE =
          T.let(:landline, Telnyx::AdvancedOrder::PhoneNumberType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::AdvancedOrder::PhoneNumberType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
