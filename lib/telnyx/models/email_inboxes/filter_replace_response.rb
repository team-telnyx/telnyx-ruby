# frozen_string_literal: true

module Telnyx
  module Models
    module EmailInboxes
      # @see Telnyx::Resources::EmailInboxes::Filters#replace
      class FilterReplaceResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::EmailInboxes::FilterReplaceResponse::Data]
        required :data, -> { Telnyx::Models::EmailInboxes::FilterReplaceResponse::Data }

        # @!method initialize(data:)
        #   @param data [Telnyx::Models::EmailInboxes::FilterReplaceResponse::Data]

        # @see Telnyx::Models::EmailInboxes::FilterReplaceResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute allowlist
          #
          #   @return [Array<String>]
          required :allowlist, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute blocklist
          #
          #   @return [Array<String>]
          required :blocklist, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute record_type
          #
          #   @return [Symbol, Telnyx::Models::EmailInboxes::FilterReplaceResponse::Data::RecordType]
          required :record_type, enum: -> { Telnyx::Models::EmailInboxes::FilterReplaceResponse::Data::RecordType }

          # @!method initialize(allowlist:, blocklist:, record_type:)
          #   @param allowlist [Array<String>]
          #   @param blocklist [Array<String>]
          #   @param record_type [Symbol, Telnyx::Models::EmailInboxes::FilterReplaceResponse::Data::RecordType]

          # @see Telnyx::Models::EmailInboxes::FilterReplaceResponse::Data#record_type
          module RecordType
            extend Telnyx::Internal::Type::Enum

            EMAIL_INBOX_FILTERS = :email_inbox_filters

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
