# typed: strong

module Telnyx
  module Models
    class RequirementGroup < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::RequirementGroup, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      sig { returns(T.nilable(String)) }
      attr_reader :action

      sig { params(action: String).void }
      attr_writer :action

      sig { returns(T.nilable(String)) }
      attr_reader :country_code

      sig { params(country_code: String).void }
      attr_writer :country_code

      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      sig { returns(T.nilable(String)) }
      attr_reader :customer_reference

      sig { params(customer_reference: String).void }
      attr_writer :customer_reference

      sig { returns(T.nilable(String)) }
      attr_reader :phone_number_type

      sig { params(phone_number_type: String).void }
      attr_writer :phone_number_type

      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      sig { returns(T.nilable(T::Array[Telnyx::UserRequirement])) }
      attr_reader :regulatory_requirements

      sig do
        params(
          regulatory_requirements: T::Array[Telnyx::UserRequirement::OrHash]
        ).void
      end
      attr_writer :regulatory_requirements

      sig { returns(T.nilable(Telnyx::RequirementGroup::Status::TaggedSymbol)) }
      attr_reader :status

      sig { params(status: Telnyx::RequirementGroup::Status::OrSymbol).void }
      attr_writer :status

      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      sig do
        params(
          id: String,
          action: String,
          country_code: String,
          created_at: Time,
          customer_reference: String,
          phone_number_type: String,
          record_type: String,
          regulatory_requirements: T::Array[Telnyx::UserRequirement::OrHash],
          status: Telnyx::RequirementGroup::Status::OrSymbol,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        id: nil,
        action: nil,
        country_code: nil,
        created_at: nil,
        customer_reference: nil,
        phone_number_type: nil,
        record_type: nil,
        regulatory_requirements: nil,
        status: nil,
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            action: String,
            country_code: String,
            created_at: Time,
            customer_reference: String,
            phone_number_type: String,
            record_type: String,
            regulatory_requirements: T::Array[Telnyx::UserRequirement],
            status: Telnyx::RequirementGroup::Status::TaggedSymbol,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::RequirementGroup::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APPROVED =
          T.let(:approved, Telnyx::RequirementGroup::Status::TaggedSymbol)
        UNAPPROVED =
          T.let(:unapproved, Telnyx::RequirementGroup::Status::TaggedSymbol)
        PENDING_APPROVAL =
          T.let(
            :"pending-approval",
            Telnyx::RequirementGroup::Status::TaggedSymbol
          )
        DECLINED =
          T.let(:declined, Telnyx::RequirementGroup::Status::TaggedSymbol)
        EXPIRED =
          T.let(:expired, Telnyx::RequirementGroup::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::RequirementGroup::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
