# typed: strong

module Telnyx
  module Models
    class EmailInboxListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::EmailInboxListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Telnyx::EmailInbox]) }
      attr_accessor :data

      sig { returns(Telnyx::Models::EmailInboxListResponse::Meta) }
      attr_reader :meta

      sig do
        params(meta: Telnyx::Models::EmailInboxListResponse::Meta::OrHash).void
      end
      attr_writer :meta

      sig do
        params(
          data: T::Array[Telnyx::EmailInbox::OrHash],
          meta: Telnyx::Models::EmailInboxListResponse::Meta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:, meta:)
      end

      sig do
        override.returns(
          {
            data: T::Array[Telnyx::EmailInbox],
            meta: Telnyx::Models::EmailInboxListResponse::Meta
          }
        )
      end
      def to_hash
      end

      class Meta < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::EmailInboxListResponse::Meta,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :page_size

        # Cursor for the next inbox page, when more results are available.
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
          # Cursor for the next inbox page, when more results are available.
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
