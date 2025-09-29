# typed: strong

module Telnyx
  module Models
    class AdvancedOrderCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::AdvancedOrderCreateParams, Telnyx::Internal::AnyHash)
        end

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
        returns(
          T.nilable(
            T::Array[Telnyx::AdvancedOrderCreateParams::Feature::OrSymbol]
          )
        )
      end
      attr_reader :features

      sig do
        params(
          features:
            T::Array[Telnyx::AdvancedOrderCreateParams::Feature::OrSymbol]
        ).void
      end
      attr_writer :features

      sig do
        returns(
          T.nilable(
            Telnyx::AdvancedOrderCreateParams::PhoneNumberType::OrSymbol
          )
        )
      end
      attr_reader :phone_number_type

      sig do
        params(
          phone_number_type:
            Telnyx::AdvancedOrderCreateParams::PhoneNumberType::OrSymbol
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
          features:
            T::Array[Telnyx::AdvancedOrderCreateParams::Feature::OrSymbol],
          phone_number_type:
            Telnyx::AdvancedOrderCreateParams::PhoneNumberType::OrSymbol,
          quantity: Integer,
          requirement_group_id: String,
          request_options: Telnyx::RequestOptions::OrHash
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
        requirement_group_id: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            area_code: String,
            comments: String,
            country_code: String,
            customer_reference: String,
            features:
              T::Array[Telnyx::AdvancedOrderCreateParams::Feature::OrSymbol],
            phone_number_type:
              Telnyx::AdvancedOrderCreateParams::PhoneNumberType::OrSymbol,
            quantity: Integer,
            requirement_group_id: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      module Feature
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::AdvancedOrderCreateParams::Feature)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SMS =
          T.let(:sms, Telnyx::AdvancedOrderCreateParams::Feature::TaggedSymbol)
        MMS =
          T.let(:mms, Telnyx::AdvancedOrderCreateParams::Feature::TaggedSymbol)
        VOICE =
          T.let(
            :voice,
            Telnyx::AdvancedOrderCreateParams::Feature::TaggedSymbol
          )
        FAX =
          T.let(:fax, Telnyx::AdvancedOrderCreateParams::Feature::TaggedSymbol)
        EMERGENCY =
          T.let(
            :emergency,
            Telnyx::AdvancedOrderCreateParams::Feature::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::AdvancedOrderCreateParams::Feature::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module PhoneNumberType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::AdvancedOrderCreateParams::PhoneNumberType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LOCAL =
          T.let(
            :local,
            Telnyx::AdvancedOrderCreateParams::PhoneNumberType::TaggedSymbol
          )
        MOBILE =
          T.let(
            :mobile,
            Telnyx::AdvancedOrderCreateParams::PhoneNumberType::TaggedSymbol
          )
        TOLL_FREE =
          T.let(
            :toll_free,
            Telnyx::AdvancedOrderCreateParams::PhoneNumberType::TaggedSymbol
          )
        SHARED_COST =
          T.let(
            :shared_cost,
            Telnyx::AdvancedOrderCreateParams::PhoneNumberType::TaggedSymbol
          )
        NATIONAL =
          T.let(
            :national,
            Telnyx::AdvancedOrderCreateParams::PhoneNumberType::TaggedSymbol
          )
        LANDLINE =
          T.let(
            :landline,
            Telnyx::AdvancedOrderCreateParams::PhoneNumberType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::AdvancedOrderCreateParams::PhoneNumberType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
