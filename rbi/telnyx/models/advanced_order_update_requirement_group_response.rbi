# typed: strong

module Telnyx
  module Models
    class AdvancedOrderUpdateRequirementGroupResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::AdvancedOrderUpdateRequirementGroupResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

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
            T::Array[
              Telnyx::Models::AdvancedOrderUpdateRequirementGroupResponse::Feature::TaggedSymbol
            ]
          )
        )
      end
      attr_reader :features

      sig do
        params(
          features:
            T::Array[
              Telnyx::Models::AdvancedOrderUpdateRequirementGroupResponse::Feature::OrSymbol
            ]
        ).void
      end
      attr_writer :features

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :orders

      sig { params(orders: T::Array[String]).void }
      attr_writer :orders

      sig do
        returns(
          T.nilable(
            T::Array[
              Telnyx::Models::AdvancedOrderUpdateRequirementGroupResponse::PhoneNumberType::TaggedSymbol
            ]
          )
        )
      end
      attr_reader :phone_number_type

      sig do
        params(
          phone_number_type:
            T::Array[
              Telnyx::Models::AdvancedOrderUpdateRequirementGroupResponse::PhoneNumberType::OrSymbol
            ]
        ).void
      end
      attr_writer :phone_number_type

      sig { returns(T.nilable(Integer)) }
      attr_reader :quantity

      sig { params(quantity: Integer).void }
      attr_writer :quantity

      # The ID of the requirement group associated with this advanced order
      sig { returns(T.nilable(String)) }
      attr_reader :requirement_group_id

      sig { params(requirement_group_id: String).void }
      attr_writer :requirement_group_id

      sig do
        returns(
          T.nilable(
            T::Array[
              Telnyx::Models::AdvancedOrderUpdateRequirementGroupResponse::Status::TaggedSymbol
            ]
          )
        )
      end
      attr_reader :status

      sig do
        params(
          status:
            T::Array[
              Telnyx::Models::AdvancedOrderUpdateRequirementGroupResponse::Status::OrSymbol
            ]
        ).void
      end
      attr_writer :status

      sig do
        params(
          id: String,
          area_code: String,
          comments: String,
          country_code: String,
          customer_reference: String,
          features:
            T::Array[
              Telnyx::Models::AdvancedOrderUpdateRequirementGroupResponse::Feature::OrSymbol
            ],
          orders: T::Array[String],
          phone_number_type:
            T::Array[
              Telnyx::Models::AdvancedOrderUpdateRequirementGroupResponse::PhoneNumberType::OrSymbol
            ],
          quantity: Integer,
          requirement_group_id: String,
          status:
            T::Array[
              Telnyx::Models::AdvancedOrderUpdateRequirementGroupResponse::Status::OrSymbol
            ]
        ).returns(T.attached_class)
      end
      def self.new(
        id: nil,
        area_code: nil,
        comments: nil,
        country_code: nil,
        customer_reference: nil,
        features: nil,
        orders: nil,
        phone_number_type: nil,
        quantity: nil,
        # The ID of the requirement group associated with this advanced order
        requirement_group_id: nil,
        status: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            area_code: String,
            comments: String,
            country_code: String,
            customer_reference: String,
            features:
              T::Array[
                Telnyx::Models::AdvancedOrderUpdateRequirementGroupResponse::Feature::TaggedSymbol
              ],
            orders: T::Array[String],
            phone_number_type:
              T::Array[
                Telnyx::Models::AdvancedOrderUpdateRequirementGroupResponse::PhoneNumberType::TaggedSymbol
              ],
            quantity: Integer,
            requirement_group_id: String,
            status:
              T::Array[
                Telnyx::Models::AdvancedOrderUpdateRequirementGroupResponse::Status::TaggedSymbol
              ]
          }
        )
      end
      def to_hash
      end

      module Feature
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::Models::AdvancedOrderUpdateRequirementGroupResponse::Feature
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SMS =
          T.let(
            :sms,
            Telnyx::Models::AdvancedOrderUpdateRequirementGroupResponse::Feature::TaggedSymbol
          )
        MMS =
          T.let(
            :mms,
            Telnyx::Models::AdvancedOrderUpdateRequirementGroupResponse::Feature::TaggedSymbol
          )
        VOICE =
          T.let(
            :voice,
            Telnyx::Models::AdvancedOrderUpdateRequirementGroupResponse::Feature::TaggedSymbol
          )
        FAX =
          T.let(
            :fax,
            Telnyx::Models::AdvancedOrderUpdateRequirementGroupResponse::Feature::TaggedSymbol
          )
        EMERGENCY =
          T.let(
            :emergency,
            Telnyx::Models::AdvancedOrderUpdateRequirementGroupResponse::Feature::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::Models::AdvancedOrderUpdateRequirementGroupResponse::Feature::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module PhoneNumberType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::Models::AdvancedOrderUpdateRequirementGroupResponse::PhoneNumberType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LOCAL =
          T.let(
            :local,
            Telnyx::Models::AdvancedOrderUpdateRequirementGroupResponse::PhoneNumberType::TaggedSymbol
          )
        MOBILE =
          T.let(
            :mobile,
            Telnyx::Models::AdvancedOrderUpdateRequirementGroupResponse::PhoneNumberType::TaggedSymbol
          )
        TOLL_FREE =
          T.let(
            :toll_free,
            Telnyx::Models::AdvancedOrderUpdateRequirementGroupResponse::PhoneNumberType::TaggedSymbol
          )
        SHARED_COST =
          T.let(
            :shared_cost,
            Telnyx::Models::AdvancedOrderUpdateRequirementGroupResponse::PhoneNumberType::TaggedSymbol
          )
        NATIONAL =
          T.let(
            :national,
            Telnyx::Models::AdvancedOrderUpdateRequirementGroupResponse::PhoneNumberType::TaggedSymbol
          )
        LANDLINE =
          T.let(
            :landline,
            Telnyx::Models::AdvancedOrderUpdateRequirementGroupResponse::PhoneNumberType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::Models::AdvancedOrderUpdateRequirementGroupResponse::PhoneNumberType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::Models::AdvancedOrderUpdateRequirementGroupResponse::Status
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            Telnyx::Models::AdvancedOrderUpdateRequirementGroupResponse::Status::TaggedSymbol
          )
        PROCESSING =
          T.let(
            :processing,
            Telnyx::Models::AdvancedOrderUpdateRequirementGroupResponse::Status::TaggedSymbol
          )
        ORDERED =
          T.let(
            :ordered,
            Telnyx::Models::AdvancedOrderUpdateRequirementGroupResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::Models::AdvancedOrderUpdateRequirementGroupResponse::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
