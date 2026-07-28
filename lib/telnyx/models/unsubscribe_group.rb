# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailUnsubscribeGroups#list
    class UnsubscribeGroup < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute description
      #   Always present (not omit-nullable); `null` when unset.
      #
      #   @return [String, nil]
      required :description, String, nil?: true

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute record_type
      #   View-only.
      #
      #   @return [Symbol, Telnyx::Models::UnsubscribeGroup::RecordType]
      required :record_type, enum: -> { Telnyx::UnsubscribeGroup::RecordType }

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!method initialize(id:, created_at:, description:, name:, record_type:, updated_at:)
      #   @param id [String]
      #
      #   @param created_at [Time]
      #
      #   @param description [String, nil] Always present (not omit-nullable); `null` when unset.
      #
      #   @param name [String]
      #
      #   @param record_type [Symbol, Telnyx::Models::UnsubscribeGroup::RecordType] View-only.
      #
      #   @param updated_at [Time]

      # View-only.
      #
      # @see Telnyx::Models::UnsubscribeGroup#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        EMAIL_UNSUBSCRIBE_GROUP = :email_unsubscribe_group

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
