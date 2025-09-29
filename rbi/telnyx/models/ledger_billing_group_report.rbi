# typed: strong

module Telnyx
  module Models
    class LedgerBillingGroupReport < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::LedgerBillingGroupReport, Telnyx::Internal::AnyHash)
        end

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

      # Uniquely identifies the organization that owns the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :organization_id

      sig { params(organization_id: String).void }
      attr_writer :organization_id

      # Identifies the type of the resource.
      sig do
        returns(
          T.nilable(Telnyx::LedgerBillingGroupReport::RecordType::TaggedSymbol)
        )
      end
      attr_reader :record_type

      sig do
        params(
          record_type: Telnyx::LedgerBillingGroupReport::RecordType::OrSymbol
        ).void
      end
      attr_writer :record_type

      # External url of the ledger billing group report, if the status is complete
      sig { returns(T.nilable(String)) }
      attr_accessor :report_url

      # Status of the ledger billing group report
      sig do
        returns(
          T.nilable(Telnyx::LedgerBillingGroupReport::Status::TaggedSymbol)
        )
      end
      attr_reader :status

      sig do
        params(status: Telnyx::LedgerBillingGroupReport::Status::OrSymbol).void
      end
      attr_writer :status

      # ISO 8601 formatted date indicating when the resource was updated.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      sig do
        params(
          id: String,
          created_at: Time,
          organization_id: String,
          record_type: Telnyx::LedgerBillingGroupReport::RecordType::OrSymbol,
          report_url: T.nilable(String),
          status: Telnyx::LedgerBillingGroupReport::Status::OrSymbol,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifies the type of resource.
        id: nil,
        # ISO 8601 formatted date indicating when the resource was created.
        created_at: nil,
        # Uniquely identifies the organization that owns the resource.
        organization_id: nil,
        # Identifies the type of the resource.
        record_type: nil,
        # External url of the ledger billing group report, if the status is complete
        report_url: nil,
        # Status of the ledger billing group report
        status: nil,
        # ISO 8601 formatted date indicating when the resource was updated.
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            organization_id: String,
            record_type:
              Telnyx::LedgerBillingGroupReport::RecordType::TaggedSymbol,
            report_url: T.nilable(String),
            status: Telnyx::LedgerBillingGroupReport::Status::TaggedSymbol,
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
          T.type_alias do
            T.all(Symbol, Telnyx::LedgerBillingGroupReport::RecordType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LEDGER_BILLING_GROUP_REPORT =
          T.let(
            :ledger_billing_group_report,
            Telnyx::LedgerBillingGroupReport::RecordType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::LedgerBillingGroupReport::RecordType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Status of the ledger billing group report
      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::LedgerBillingGroupReport::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(
            :pending,
            Telnyx::LedgerBillingGroupReport::Status::TaggedSymbol
          )
        COMPLETE =
          T.let(
            :complete,
            Telnyx::LedgerBillingGroupReport::Status::TaggedSymbol
          )
        FAILED =
          T.let(:failed, Telnyx::LedgerBillingGroupReport::Status::TaggedSymbol)
        DELETED =
          T.let(
            :deleted,
            Telnyx::LedgerBillingGroupReport::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::LedgerBillingGroupReport::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
