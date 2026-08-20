# typed: strong

module Telnyx
  module Models
    EmailBlockImportResponse = EmailBlocks::EmailBlockImportResponse

    module EmailBlocks
      class EmailBlockImportResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::EmailBlocks::EmailBlockImportResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # Import job. Schema fields hidden: `account_id`, `csv_content`, `block_ttl_days`.
        # Nullable fields use the omit-nullable pattern.
        sig { returns(Telnyx::EmailBlocks::EmailBlockImport) }
        attr_reader :data

        sig { params(data: Telnyx::EmailBlocks::EmailBlockImport::OrHash).void }
        attr_writer :data

        sig do
          params(data: Telnyx::EmailBlocks::EmailBlockImport::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(
          # Import job. Schema fields hidden: `account_id`, `csv_content`, `block_ttl_days`.
          # Nullable fields use the omit-nullable pattern.
          data:
        )
        end

        sig do
          override.returns({ data: Telnyx::EmailBlocks::EmailBlockImport })
        end
        def to_hash
        end
      end
    end
  end
end
