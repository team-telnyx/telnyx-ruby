# typed: strong

module Telnyx
  module Models
    module EmailInboxes
      class EmailPaginationMeta < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::EmailInboxes::EmailPaginationMeta,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :page_size

        # Cursor for the next page, when more results are available.
        sig { returns(T.nilable(String)) }
        attr_reader :page_cursor

        sig { params(page_cursor: String).void }
        attr_writer :page_cursor

        sig do
          params(page_size: Integer, page_cursor: String).returns(
            T.attached_class
          )
        end
        def self.new(
          page_size:,
          # Cursor for the next page, when more results are available.
          page_cursor: nil
        )
        end

        sig { override.returns({ page_size: Integer, page_cursor: String }) }
        def to_hash
        end
      end
    end
  end
end
