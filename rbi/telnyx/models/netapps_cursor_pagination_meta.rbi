# typed: strong

module Telnyx
  module Models
    class NetappsCursorPaginationMeta < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::NetappsCursorPaginationMeta, Telnyx::Internal::AnyHash)
        end

      # Opaque cursors. Absent keys mean there is no such page.
      sig { returns(T.nilable(Telnyx::NetappsCursorPaginationMeta::Cursors)) }
      attr_reader :cursors

      sig do
        params(
          cursors: Telnyx::NetappsCursorPaginationMeta::Cursors::OrHash
        ).void
      end
      attr_writer :cursors

      # The path of the next page, with the same query parameters. Absent on the last
      # page.
      sig { returns(T.nilable(String)) }
      attr_reader :next_

      sig { params(next_: String).void }
      attr_writer :next_

      # The path of the previous page. Present when the request used `page[after]`.
      sig { returns(T.nilable(String)) }
      attr_reader :previous

      sig { params(previous: String).void }
      attr_writer :previous

      sig do
        params(
          cursors: Telnyx::NetappsCursorPaginationMeta::Cursors::OrHash,
          next_: String,
          previous: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Opaque cursors. Absent keys mean there is no such page.
        cursors: nil,
        # The path of the next page, with the same query parameters. Absent on the last
        # page.
        next_: nil,
        # The path of the previous page. Present when the request used `page[after]`.
        previous: nil
      )
      end

      sig do
        override.returns(
          {
            cursors: Telnyx::NetappsCursorPaginationMeta::Cursors,
            next_: String,
            previous: String
          }
        )
      end
      def to_hash
      end

      class Cursors < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::NetappsCursorPaginationMeta::Cursors,
              Telnyx::Internal::AnyHash
            )
          end

        # Pass as `page[after]` to fetch the next page. Absent on the last page.
        sig { returns(T.nilable(String)) }
        attr_reader :after

        sig { params(after: String).void }
        attr_writer :after

        # The cursor of the previous page. Present when the request used `page[after]`.
        sig { returns(T.nilable(String)) }
        attr_reader :before

        sig { params(before: String).void }
        attr_writer :before

        # Opaque cursors. Absent keys mean there is no such page.
        sig { params(after: String, before: String).returns(T.attached_class) }
        def self.new(
          # Pass as `page[after]` to fetch the next page. Absent on the last page.
          after: nil,
          # The cursor of the previous page. Present when the request used `page[after]`.
          before: nil
        )
        end

        sig { override.returns({ after: String, before: String }) }
        def to_hash
        end
      end
    end
  end
end
