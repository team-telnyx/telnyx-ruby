# frozen_string_literal: true

module Telnyx
  module Models
    class LedgerBillingGroupReport < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Identifies the type of resource.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute created_at
      #   ISO 8601 formatted date indicating when the resource was created.
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!attribute organization_id
      #   Uniquely identifies the organization that owns the resource.
      #
      #   @return [String, nil]
      optional :organization_id, String

      # @!attribute record_type
      #   Identifies the type of the resource.
      #
      #   @return [Symbol, Telnyx::Models::LedgerBillingGroupReport::RecordType, nil]
      optional :record_type, enum: -> { Telnyx::LedgerBillingGroupReport::RecordType }

      # @!attribute report_url
      #   External url of the ledger billing group report, if the status is complete
      #
      #   @return [String, nil]
      optional :report_url, String, nil?: true

      # @!attribute status
      #   Status of the ledger billing group report
      #
      #   @return [Symbol, Telnyx::Models::LedgerBillingGroupReport::Status, nil]
      optional :status, enum: -> { Telnyx::LedgerBillingGroupReport::Status }

      # @!attribute updated_at
      #   ISO 8601 formatted date indicating when the resource was updated.
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!method initialize(id: nil, created_at: nil, organization_id: nil, record_type: nil, report_url: nil, status: nil, updated_at: nil)
      #   @param id [String] Identifies the type of resource.
      #
      #   @param created_at [Time] ISO 8601 formatted date indicating when the resource was created.
      #
      #   @param organization_id [String] Uniquely identifies the organization that owns the resource.
      #
      #   @param record_type [Symbol, Telnyx::Models::LedgerBillingGroupReport::RecordType] Identifies the type of the resource.
      #
      #   @param report_url [String, nil] External url of the ledger billing group report, if the status is complete
      #
      #   @param status [Symbol, Telnyx::Models::LedgerBillingGroupReport::Status] Status of the ledger billing group report
      #
      #   @param updated_at [Time] ISO 8601 formatted date indicating when the resource was updated.

      # Identifies the type of the resource.
      #
      # @see Telnyx::Models::LedgerBillingGroupReport#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        LEDGER_BILLING_GROUP_REPORT = :ledger_billing_group_report

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Status of the ledger billing group report
      #
      # @see Telnyx::Models::LedgerBillingGroupReport#status
      module Status
        extend Telnyx::Internal::Type::Enum

        PENDING = :pending
        COMPLETE = :complete
        FAILED = :failed
        DELETED = :deleted

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
