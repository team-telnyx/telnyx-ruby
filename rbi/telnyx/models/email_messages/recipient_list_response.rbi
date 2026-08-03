# typed: strong

module Telnyx
  module Models
    module EmailMessages
      class RecipientListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::EmailMessages::RecipientListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T::Array[Telnyx::EmailMessages::EmailRecipient]) }
        attr_accessor :data

        sig do
          returns(Telnyx::Models::EmailMessages::RecipientListResponse::Meta)
        end
        attr_reader :meta

        sig do
          params(
            meta:
              Telnyx::Models::EmailMessages::RecipientListResponse::Meta::OrHash
          ).void
        end
        attr_writer :meta

        sig do
          params(
            data: T::Array[Telnyx::EmailMessages::EmailRecipient::OrHash],
            meta:
              Telnyx::Models::EmailMessages::RecipientListResponse::Meta::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:, meta:)
        end

        sig do
          override.returns(
            {
              data: T::Array[Telnyx::EmailMessages::EmailRecipient],
              meta: Telnyx::Models::EmailMessages::RecipientListResponse::Meta
            }
          )
        end
        def to_hash
        end

        class Meta < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::EmailMessages::RecipientListResponse::Meta,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :page_size

          # Cursor for the next page. Absent when there are no more results.
          sig { returns(T.nilable(String)) }
          attr_accessor :page_cursor

          sig do
            params(page_size: Integer, page_cursor: T.nilable(String)).returns(
              T.attached_class
            )
          end
          def self.new(
            page_size:,
            # Cursor for the next page. Absent when there are no more results.
            page_cursor: nil
          )
          end

          sig do
            override.returns(
              { page_size: Integer, page_cursor: T.nilable(String) }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
