# typed: strong

module Telnyx
  module Models
    module LlmTokenGateway
      class SpendRetrieveSummaryParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::LlmTokenGateway::SpendRetrieveSummaryParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(Date) }
        attr_accessor :end_date

        # A scope, or metadata:<key> to group by one request tag's text-form value;
        # requests without the key form one group with a null dimension_id.
        sig do
          returns(
            T.any(Telnyx::LlmTokenGateway::SpendGroupBy::OrSymbol, String)
          )
        end
        attr_accessor :group_by

        sig { returns(Date) }
        attr_accessor :start_date

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
            group_by:
              T.any(Telnyx::LlmTokenGateway::SpendGroupBy::OrSymbol, String),
            start_date: Date,
            end_user_id: String,
            metadata: T::Hash[Symbol, String],
            page_number: Integer,
            page_size: Integer,
            page_snapshot: String,
            token_group_id: String,
            token_key_id: String,
            token_user_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          end_date:,
          # A scope, or metadata:<key> to group by one request tag's text-form value;
          # requests without the key form one group with a null dimension_id.
          group_by:,
          start_date:,
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
              group_by:
                T.any(Telnyx::LlmTokenGateway::SpendGroupBy::OrSymbol, String),
              start_date: Date,
              end_user_id: String,
              metadata: T::Hash[Symbol, String],
              page_number: Integer,
              page_size: Integer,
              page_snapshot: String,
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
