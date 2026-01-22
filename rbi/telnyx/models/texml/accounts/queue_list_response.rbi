# typed: strong

module Telnyx
  module Models
    module Texml
      module Accounts
        class QueueListResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Texml::Accounts::QueueListResponse,
                Telnyx::Internal::AnyHash
              )
            end

          # The number of the last element on the page, zero-indexed.
          sig { returns(T.nilable(Integer)) }
          attr_reader :end_

          sig { params(end_: Integer).void }
          attr_writer :end_

          # /v2/texml/Accounts/61bf923e-5e4d-4595-a110-56190ea18a1b/Queues.json?Page=0&PageSize=1
          sig { returns(T.nilable(String)) }
          attr_reader :first_page_uri

          sig { params(first_page_uri: String).void }
          attr_writer :first_page_uri

          # /v2/texml/Accounts/61bf923e-5e4d-4595-a110-56190ea18a1b/Queues.json?Page=1&PageSize=1&PageToken=MTY4AjgyNDkwNzIxMQ
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

          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::Models::Texml::Accounts::QueueListResponse::Queue
                ]
              )
            )
          end
          attr_reader :queues

          sig do
            params(
              queues:
                T::Array[
                  Telnyx::Models::Texml::Accounts::QueueListResponse::Queue::OrHash
                ]
            ).void
          end
          attr_writer :queues

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
              end_: Integer,
              first_page_uri: String,
              next_page_uri: String,
              page: Integer,
              page_size: Integer,
              queues:
                T::Array[
                  Telnyx::Models::Texml::Accounts::QueueListResponse::Queue::OrHash
                ],
              start: Integer,
              uri: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The number of the last element on the page, zero-indexed.
            end_: nil,
            # /v2/texml/Accounts/61bf923e-5e4d-4595-a110-56190ea18a1b/Queues.json?Page=0&PageSize=1
            first_page_uri: nil,
            # /v2/texml/Accounts/61bf923e-5e4d-4595-a110-56190ea18a1b/Queues.json?Page=1&PageSize=1&PageToken=MTY4AjgyNDkwNzIxMQ
            next_page_uri: nil,
            # Current page number, zero-indexed.
            page: nil,
            # The number of items on the page
            page_size: nil,
            queues: nil,
            # The number of the first element on the page, zero-indexed.
            start: nil,
            # The URI of the current page.
            uri: nil
          )
          end

          sig do
            override.returns(
              {
                end_: Integer,
                first_page_uri: String,
                next_page_uri: String,
                page: Integer,
                page_size: Integer,
                queues:
                  T::Array[
                    Telnyx::Models::Texml::Accounts::QueueListResponse::Queue
                  ],
                start: Integer,
                uri: String
              }
            )
          end
          def to_hash
          end

          class Queue < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Texml::Accounts::QueueListResponse::Queue,
                  Telnyx::Internal::AnyHash
                )
              end

            # The id of the account the resource belongs to.
            sig { returns(T.nilable(String)) }
            attr_reader :account_sid

            sig { params(account_sid: String).void }
            attr_writer :account_sid

            # The average wait time in seconds for members in the queue.
            sig { returns(T.nilable(Integer)) }
            attr_reader :average_wait_time

            sig { params(average_wait_time: Integer).void }
            attr_writer :average_wait_time

            # The current number of members in the queue.
            sig { returns(T.nilable(Integer)) }
            attr_reader :current_size

            sig { params(current_size: Integer).void }
            attr_writer :current_size

            # The timestamp of when the resource was created.
            sig { returns(T.nilable(String)) }
            attr_reader :date_created

            sig { params(date_created: String).void }
            attr_writer :date_created

            # The timestamp of when the resource was last updated.
            sig { returns(T.nilable(String)) }
            attr_reader :date_updated

            sig { params(date_updated: String).void }
            attr_writer :date_updated

            # The maximum size of the queue.
            sig { returns(T.nilable(Integer)) }
            attr_reader :max_size

            sig { params(max_size: Integer).void }
            attr_writer :max_size

            # The unique identifier of the queue.
            sig { returns(T.nilable(String)) }
            attr_reader :sid

            sig { params(sid: String).void }
            attr_writer :sid

            # A list of related resources identified by their relative URIs.
            sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
            attr_reader :subresource_uris

            sig { params(subresource_uris: T::Hash[Symbol, T.anything]).void }
            attr_writer :subresource_uris

            # The relative URI for this queue.
            sig { returns(T.nilable(String)) }
            attr_reader :uri

            sig { params(uri: String).void }
            attr_writer :uri

            sig do
              params(
                account_sid: String,
                average_wait_time: Integer,
                current_size: Integer,
                date_created: String,
                date_updated: String,
                max_size: Integer,
                sid: String,
                subresource_uris: T::Hash[Symbol, T.anything],
                uri: String
              ).returns(T.attached_class)
            end
            def self.new(
              # The id of the account the resource belongs to.
              account_sid: nil,
              # The average wait time in seconds for members in the queue.
              average_wait_time: nil,
              # The current number of members in the queue.
              current_size: nil,
              # The timestamp of when the resource was created.
              date_created: nil,
              # The timestamp of when the resource was last updated.
              date_updated: nil,
              # The maximum size of the queue.
              max_size: nil,
              # The unique identifier of the queue.
              sid: nil,
              # A list of related resources identified by their relative URIs.
              subresource_uris: nil,
              # The relative URI for this queue.
              uri: nil
            )
            end

            sig do
              override.returns(
                {
                  account_sid: String,
                  average_wait_time: Integer,
                  current_size: Integer,
                  date_created: String,
                  date_updated: String,
                  max_size: Integer,
                  sid: String,
                  subresource_uris: T::Hash[Symbol, T.anything],
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
end
