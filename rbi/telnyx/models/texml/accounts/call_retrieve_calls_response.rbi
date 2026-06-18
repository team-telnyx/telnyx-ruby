# typed: strong

module Telnyx
  module Models
    module Texml
      module Accounts
        class CallRetrieveCallsResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(T.nilable(T::Array[Telnyx::Texml::Accounts::CallResource]))
          end
          attr_reader :calls

          sig do
            params(
              calls: T::Array[Telnyx::Texml::Accounts::CallResource::OrHash]
            ).void
          end
          attr_writer :calls

          # The number of the last element on the page, zero-indexed.
          sig { returns(T.nilable(Integer)) }
          attr_reader :end_

          sig { params(end_: Integer).void }
          attr_writer :end_

          # /v2/texml/Accounts/61bf923e-5e4d-4595-a110-56190ea18a1b/Calls.json?Page=0&PageSize=1
          sig { returns(T.nilable(String)) }
          attr_reader :first_page_uri

          sig { params(first_page_uri: String).void }
          attr_writer :first_page_uri

          # /v2/texml/Accounts/61bf923e-5e4d-4595-a110-56190ea18a1b/Calls.json?Page=1&PageSize=1&PageToken=MTY4AjgyNDkwNzIxMQ
          sig { returns(T.nilable(String)) }
          attr_reader :next_page_uri

          sig { params(next_page_uri: String).void }
          attr_writer :next_page_uri

          # Current page number, zero-indexed.
          sig { returns(T.nilable(Integer)) }
          attr_reader :page

          sig { params(page: Integer).void }
          attr_writer :page

          # The number of items on the page
          sig { returns(T.nilable(Integer)) }
          attr_reader :page_size

          sig { params(page_size: Integer).void }
          attr_writer :page_size

          # The number of the first element on the page, zero-indexed.
          sig { returns(T.nilable(Integer)) }
          attr_reader :start

          sig { params(start: Integer).void }
          attr_writer :start

          # The URI of the current page.
          sig { returns(T.nilable(String)) }
          attr_reader :uri

          sig { params(uri: String).void }
          attr_writer :uri

          sig do
            params(
              calls: T::Array[Telnyx::Texml::Accounts::CallResource::OrHash],
              end_: Integer,
              first_page_uri: String,
              next_page_uri: String,
              page: Integer,
              page_size: Integer,
              start: Integer,
              uri: String
            ).returns(T.attached_class)
          end
          def self.new(
            calls: nil,
            # The number of the last element on the page, zero-indexed.
            end_: nil,
            # /v2/texml/Accounts/61bf923e-5e4d-4595-a110-56190ea18a1b/Calls.json?Page=0&PageSize=1
            first_page_uri: nil,
            # /v2/texml/Accounts/61bf923e-5e4d-4595-a110-56190ea18a1b/Calls.json?Page=1&PageSize=1&PageToken=MTY4AjgyNDkwNzIxMQ
            next_page_uri: nil,
            # Current page number, zero-indexed.
            page: nil,
            # The number of items on the page
            page_size: nil,
            # The number of the first element on the page, zero-indexed.
            start: nil,
            # The URI of the current page.
            uri: nil
          )
          end

          sig do
            override.returns(
              {
                calls: T::Array[Telnyx::Texml::Accounts::CallResource],
                end_: Integer,
                first_page_uri: String,
                next_page_uri: String,
                page: Integer,
                page_size: Integer,
                start: Integer,
                uri: String
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
