# frozen_string_literal: true

module Telnyx
  module Models
    class BillingGroup < Telnyx::Internal::Type::BaseModel
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

      # @!attribute deleted_at
      #   ISO 8601 formatted date indicating when the resource was removed.
      #
      #   @return [Time, nil]
      optional :deleted_at, Time, nil?: true

      # @!attribute name
      #   A user-specified name for the billing group
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute organization_id
      #   Identifies the organization that owns the resource.
      #
      #   @return [String, nil]
      optional :organization_id, String

      # @!attribute record_type
      #   Identifies the type of the resource.
      #
      #   @return [Symbol, Telnyx::Models::BillingGroup::RecordType, nil]
      optional :record_type, enum: -> { Telnyx::BillingGroup::RecordType }

      # @!attribute updated_at
      #   ISO 8601 formatted date indicating when the resource was updated.
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!method initialize(id: nil, created_at: nil, deleted_at: nil, name: nil, organization_id: nil, record_type: nil, updated_at: nil)
      #   @param id [String] Identifies the type of resource.
      #
      #   @param created_at [Time] ISO 8601 formatted date indicating when the resource was created.
      #
      #   @param deleted_at [Time, nil] ISO 8601 formatted date indicating when the resource was removed.
      #
      #   @param name [String] A user-specified name for the billing group
      #
      #   @param organization_id [String] Identifies the organization that owns the resource.
      #
      #   @param record_type [Symbol, Telnyx::Models::BillingGroup::RecordType] Identifies the type of the resource.
      #
      #   @param updated_at [Time] ISO 8601 formatted date indicating when the resource was updated.

      # Identifies the type of the resource.
      #
      # @see Telnyx::Models::BillingGroup#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        BILLING_GROUP = :billing_group

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
