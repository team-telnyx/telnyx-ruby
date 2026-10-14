# typed: strong

module Telnyx
  module Models
    module LlmTokenGateway
      class UsageRetrieveSummaryParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::LlmTokenGateway::UsageRetrieveSummaryParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(Date) }
        attr_accessor :end_date

        sig { returns(Date) }
        attr_accessor :start_date

        sig { returns(String) }
        attr_accessor :token_group_id

        # Request tag filters as metadata[<key>]=<value>, at most 5, combined with AND. A
        # value matches the tag's text form exactly (booleans as true/false, integers in
        # decimal), so metadata[flag]=true matches both boolean true and the string
        # "true". Keys are case-sensitive; reserved-prefix keys are rejected. Unindexed:
        # bounded by the account, the date range and the report timeout.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, String]).void }
        attr_writer :metadata

        sig do
          params(
            end_date: Date,
            start_date: Date,
            token_group_id: String,
            metadata: T::Hash[Symbol, String],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          end_date:,
          start_date:,
          token_group_id:,
          # Request tag filters as metadata[<key>]=<value>, at most 5, combined with AND. A
          # value matches the tag's text form exactly (booleans as true/false, integers in
          # decimal), so metadata[flag]=true matches both boolean true and the string
          # "true". Keys are case-sensitive; reserved-prefix keys are rejected. Unindexed:
          # bounded by the account, the date range and the report timeout.
          metadata: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              end_date: Date,
              start_date: Date,
              token_group_id: String,
              metadata: T::Hash[Symbol, String],
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
