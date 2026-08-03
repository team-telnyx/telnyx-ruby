# typed: strong

module Telnyx
  module Models
    module EmailInboxes
      class ThreadListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::EmailInboxes::ThreadListParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :inbox_id

        # Returns only threads carrying this label. Thread labels are independent of the
        # labels on the thread's messages.
        sig { returns(T.nilable(String)) }
        attr_reader :filter_label

        sig { params(filter_label: String).void }
        attr_writer :filter_label

        # Opaque cursor returned by the previous page.
        sig { returns(T.nilable(String)) }
        attr_reader :page_after

        sig { params(page_after: String).void }
        attr_writer :page_after

        # Number of results to return. Defaults to 25; maximum is 100.
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_size

        sig { params(page_size: Integer).void }
        attr_writer :page_size

        sig do
          params(
            inbox_id: String,
            filter_label: String,
            page_after: String,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          inbox_id:,
          # Returns only threads carrying this label. Thread labels are independent of the
          # labels on the thread's messages.
          filter_label: nil,
          # Opaque cursor returned by the previous page.
          page_after: nil,
          # Number of results to return. Defaults to 25; maximum is 100.
          page_size: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              inbox_id: String,
              filter_label: String,
              page_after: String,
              page_size: Integer,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
