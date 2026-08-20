# frozen_string_literal: true

module Telnyx
  module Models
    module EmailBlocks
      # @see Telnyx::Resources::EmailBlocks::Import#create
      class EmailBlockImportResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #   Import job. Schema fields hidden: `account_id`, `csv_content`, `block_ttl_days`.
        #   Nullable fields use the omit-nullable pattern.
        #
        #   @return [Telnyx::Models::EmailBlocks::EmailBlockImport]
        required :data, -> { Telnyx::EmailBlocks::EmailBlockImport }

        # @!method initialize(data:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::EmailBlocks::EmailBlockImportResponse} for more details.
        #
        #   @param data [Telnyx::Models::EmailBlocks::EmailBlockImport] Import job. Schema fields hidden: `account_id`, `csv_content`,
      end
    end

    EmailBlockImportResponse = EmailBlocks::EmailBlockImportResponse
  end
end
