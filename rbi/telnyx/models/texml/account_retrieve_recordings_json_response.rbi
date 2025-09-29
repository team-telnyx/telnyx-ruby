# typed: strong

module Telnyx
  module Models
    module Texml
      class AccountRetrieveRecordingsJsonResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Texml::AccountRetrieveRecordingsJsonResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # The number of the last element on the page, zero-indexed.
        sig { returns(T.nilable(Integer)) }
        attr_reader :end_

        sig { params(end_: Integer).void }
        attr_writer :end_

        # Relative uri to the first page of the query results
        sig { returns(T.nilable(String)) }
        attr_reader :first_page_uri

        sig { params(first_page_uri: String).void }
        attr_writer :first_page_uri

        # Relative uri to the next page of the query results
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

        # Relative uri to the previous page of the query results
        sig { returns(T.nilable(String)) }
        attr_reader :previous_page_uri

        sig { params(previous_page_uri: String).void }
        attr_writer :previous_page_uri

        sig do
          returns(
            T.nilable(
              T::Array[Telnyx::Texml::TexmlGetCallRecordingResponseBody]
            )
          )
        end
        attr_reader :recordings

        sig do
          params(
            recordings:
              T::Array[Telnyx::Texml::TexmlGetCallRecordingResponseBody::OrHash]
          ).void
        end
        attr_writer :recordings

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
            previous_page_uri: String,
            recordings:
              T::Array[
                Telnyx::Texml::TexmlGetCallRecordingResponseBody::OrHash
              ],
            start: Integer,
            uri: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The number of the last element on the page, zero-indexed.
          end_: nil,
          # Relative uri to the first page of the query results
          first_page_uri: nil,
          # Relative uri to the next page of the query results
          next_page_uri: nil,
          # Current page number, zero-indexed.
          page: nil,
          # The number of items on the page
          page_size: nil,
          # Relative uri to the previous page of the query results
          previous_page_uri: nil,
          recordings: nil,
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
              previous_page_uri: String,
              recordings:
                T::Array[Telnyx::Texml::TexmlGetCallRecordingResponseBody],
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
