# typed: strong

module Telnyx
  module Models
    class BillingGroup < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::BillingGroup, Telnyx::Internal::AnyHash) }

      # Identifies the type of resource.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # ISO 8601 formatted date indicating when the resource was created.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # ISO 8601 formatted date indicating when the resource was removed.
      sig { returns(T.nilable(Time)) }
      attr_accessor :deleted_at

      # A user-specified name for the billing group
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # Identifies the organization that owns the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :organization_id

      sig { params(organization_id: String).void }
      attr_writer :organization_id

      # Identifies the type of the resource.
      sig { returns(T.nilable(Telnyx::BillingGroup::RecordType::TaggedSymbol)) }
      attr_reader :record_type

      sig do
        params(record_type: Telnyx::BillingGroup::RecordType::OrSymbol).void
      end
      attr_writer :record_type

      # ISO 8601 formatted date indicating when the resource was updated.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      sig do
        params(
          id: String,
          created_at: Time,
          deleted_at: T.nilable(Time),
          name: String,
          organization_id: String,
          record_type: Telnyx::BillingGroup::RecordType::OrSymbol,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifies the type of resource.
        id: nil,
        # ISO 8601 formatted date indicating when the resource was created.
        created_at: nil,
        # ISO 8601 formatted date indicating when the resource was removed.
        deleted_at: nil,
        # A user-specified name for the billing group
        name: nil,
        # Identifies the organization that owns the resource.
        organization_id: nil,
        # Identifies the type of the resource.
        record_type: nil,
        # ISO 8601 formatted date indicating when the resource was updated.
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            deleted_at: T.nilable(Time),
            name: String,
            organization_id: String,
            record_type: Telnyx::BillingGroup::RecordType::TaggedSymbol,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      # Identifies the type of the resource.
      module RecordType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::BillingGroup::RecordType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BILLING_GROUP =
          T.let(:billing_group, Telnyx::BillingGroup::RecordType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::BillingGroup::RecordType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
