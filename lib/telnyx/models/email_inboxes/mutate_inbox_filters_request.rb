# frozen_string_literal: true

module Telnyx
  module Models
    module EmailInboxes
      class MutateInboxFiltersRequest < Telnyx::Internal::Type::BaseModel
        # @!attribute entries
        #
        #   @return [Array<String>]
        required :entries, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute type
        #   The list to change.
        #
        #   @return [Symbol, Telnyx::Models::EmailInboxes::MutateInboxFiltersRequest::Type]
        required :type, enum: -> { Telnyx::EmailInboxes::MutateInboxFiltersRequest::Type }

        # @!method initialize(entries:, type:)
        #   @param entries [Array<String>]
        #
        #   @param type [Symbol, Telnyx::Models::EmailInboxes::MutateInboxFiltersRequest::Type] The list to change.

        # The list to change.
        #
        # @see Telnyx::Models::EmailInboxes::MutateInboxFiltersRequest#type
        module Type
          extend Telnyx::Internal::Type::Enum

          ALLOWLIST = :allowlist
          BLOCKLIST = :blocklist

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
