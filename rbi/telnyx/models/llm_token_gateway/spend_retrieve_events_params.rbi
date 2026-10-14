# typed: strong

module Telnyx
  module Models
    module LlmTokenGateway
      class SpendRetrieveEventsParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::LlmTokenGateway::SpendRetrieveEventsParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Date)) }
        attr_reader :end_date

        sig { params(end_date: Date).void }
        attr_writer :end_date

        sig { returns(T.nilable(String)) }
        attr_reader :end_user_id

        sig { params(end_user_id: String).void }
        attr_writer :end_user_id

        # Request tag filters as metadata[<key>]=<value>, at most 5, combined with AND. A
        # value matches the tag's text form exactly (booleans as true/false, integers in
        # decimal), so metadata[flag]=true matches both boolean true and the string
        # "true". Keys are case-sensitive; reserved-prefix keys are rejected. Unindexed:
        # bounded by the account, the date range and the report timeout.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, String]).void }
        attr_writer :metadata

        sig { returns(T.nilable(Integer)) }
        attr_reader :page_number

        sig { params(page_number: Integer).void }
        attr_writer :page_number

        sig { returns(T.nilable(Integer)) }
        attr_reader :page_size

        sig { params(page_size: Integer).void }
        attr_writer :page_size

        # Required after page 1; account/filter-bound 15-minute stable snapshot;
        # expired/mismatch 409.
        sig { returns(T.nilable(String)) }
        attr_reader :page_snapshot

        sig { params(page_snapshot: String).void }
        attr_writer :page_snapshot

        sig { returns(T.nilable(Date)) }
        attr_reader :start_date

        sig { params(start_date: Date).void }
        attr_writer :start_date

        sig { returns(T.nilable(String)) }
        attr_reader :token_group_id

        sig { params(token_group_id: String).void }
        attr_writer :token_group_id

        sig { returns(T.nilable(String)) }
        attr_reader :token_key_id

        sig { params(token_key_id: String).void }
        attr_writer :token_key_id

        sig { returns(T.nilable(String)) }
        attr_reader :token_user_id

        sig { params(token_user_id: String).void }
        attr_writer :token_user_id

        sig do
          params(
            end_date: Date,
            end_user_id: String,
            metadata: T::Hash[Symbol, String],
            page_number: Integer,
            page_size: Integer,
            page_snapshot: String,
            start_date: Date,
            token_group_id: String,
            token_key_id: String,
            token_user_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          end_date: nil,
          end_user_id: nil,
          # Request tag filters as metadata[<key>]=<value>, at most 5, combined with AND. A
          # value matches the tag's text form exactly (booleans as true/false, integers in
          # decimal), so metadata[flag]=true matches both boolean true and the string
          # "true". Keys are case-sensitive; reserved-prefix keys are rejected. Unindexed:
          # bounded by the account, the date range and the report timeout.
          metadata: nil,
          page_number: nil,
          page_size: nil,
          # Required after page 1; account/filter-bound 15-minute stable snapshot;
          # expired/mismatch 409.
          page_snapshot: nil,
          start_date: nil,
          token_group_id: nil,
          token_key_id: nil,
          token_user_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              end_date: Date,
              end_user_id: String,
              metadata: T::Hash[Symbol, String],
              page_number: Integer,
              page_size: Integer,
              page_snapshot: String,
              start_date: Date,
              token_group_id: String,
              token_key_id: String,
              token_user_id: String,
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
