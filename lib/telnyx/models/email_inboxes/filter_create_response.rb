# frozen_string_literal: true

module Telnyx
  module Models
    module EmailInboxes
      # @see Telnyx::Resources::EmailInboxes::Filters#create
      class FilterCreateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::EmailInboxes::FilterCreateResponse::Data]
        required :data, -> { Telnyx::Models::EmailInboxes::FilterCreateResponse::Data }

        # @!method initialize(data:)
        #   @param data [Telnyx::Models::EmailInboxes::FilterCreateResponse::Data]

        # @see Telnyx::Models::EmailInboxes::FilterCreateResponse#data
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
          #   @return [Symbol, Telnyx::Models::EmailInboxes::FilterCreateResponse::Data::RecordType]
          required :record_type, enum: -> { Telnyx::Models::EmailInboxes::FilterCreateResponse::Data::RecordType }

          # @!method initialize(allowlist:, blocklist:, record_type:)
          #   @param allowlist [Array<String>]
          #   @param blocklist [Array<String>]
          #   @param record_type [Symbol, Telnyx::Models::EmailInboxes::FilterCreateResponse::Data::RecordType]

          # @see Telnyx::Models::EmailInboxes::FilterCreateResponse::Data#record_type
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
