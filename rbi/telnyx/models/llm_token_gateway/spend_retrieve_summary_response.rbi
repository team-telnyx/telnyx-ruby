# typed: strong

module Telnyx
  module Models
    module LlmTokenGateway
      class SpendRetrieveSummaryResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::LlmTokenGateway::SpendRetrieveSummaryResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              Telnyx::Models::LlmTokenGateway::SpendRetrieveSummaryResponse::Data
            ]
          )
        end
        attr_accessor :data

        sig do
          returns(
            Telnyx::Models::LlmTokenGateway::SpendRetrieveSummaryResponse::Meta
          )
        end
        attr_reader :meta

        sig do
          params(
            meta:
              Telnyx::Models::LlmTokenGateway::SpendRetrieveSummaryResponse::Meta::OrHash
          ).void
        end
        attr_writer :meta

        sig do
          params(
            data:
              T::Array[
                Telnyx::Models::LlmTokenGateway::SpendRetrieveSummaryResponse::Data::OrHash
              ],
            meta:
              Telnyx::Models::LlmTokenGateway::SpendRetrieveSummaryResponse::Meta::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:, meta:)
        end

        sig do
          override.returns(
            {
              data:
                T::Array[
                  Telnyx::Models::LlmTokenGateway::SpendRetrieveSummaryResponse::Data
                ],
              meta:
                Telnyx::Models::LlmTokenGateway::SpendRetrieveSummaryResponse::Meta
            }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::LlmTokenGateway::SpendRetrieveSummaryResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_accessor :dimension_id

          sig { returns(Integer) }
          attr_accessor :input_tokens

          sig { returns(T.nilable(String)) }
          attr_accessor :name

          sig { returns(Integer) }
          attr_accessor :output_tokens

          sig { returns(Integer) }
          attr_accessor :requests

          # USD, decimal precision at most 6 places; parse exactly to integer micro-USD,
          # never binary float accounting.
          sig { returns(Float) }
          attr_accessor :reserved_spend

          # USD, decimal precision at most 6 places; parse exactly to integer micro-USD,
          # never binary float accounting.
          sig { returns(Float) }
          attr_accessor :spend

          sig { returns(Integer) }
          attr_accessor :unknown_requests

          sig { returns(T.nilable(String)) }
          attr_accessor :end_user_id

          # Present only for group_by=metadata:<key>: the tag key. dimension_id is then the
          # tag value in text form (booleans as true/false, integers in decimal), or null
          # for requests without the key; name is null.
          sig { returns(T.nilable(String)) }
          attr_reader :metadata_key

          sig { params(metadata_key: String).void }
          attr_writer :metadata_key

          sig { returns(T.nilable(String)) }
          attr_accessor :token_group_id

          sig { returns(T.nilable(String)) }
          attr_accessor :token_key_id

          sig { returns(T.nilable(String)) }
          attr_accessor :token_user_id

          sig do
            params(
              dimension_id: T.nilable(String),
              input_tokens: Integer,
              name: T.nilable(String),
              output_tokens: Integer,
              requests: Integer,
              reserved_spend: Float,
              spend: Float,
              unknown_requests: Integer,
              end_user_id: T.nilable(String),
              metadata_key: String,
              token_group_id: T.nilable(String),
              token_key_id: T.nilable(String),
              token_user_id: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            dimension_id:,
            input_tokens:,
            name:,
            output_tokens:,
            requests:,
            # USD, decimal precision at most 6 places; parse exactly to integer micro-USD,
            # never binary float accounting.
            reserved_spend:,
            # USD, decimal precision at most 6 places; parse exactly to integer micro-USD,
            # never binary float accounting.
            spend:,
            unknown_requests:,
            end_user_id: nil,
            # Present only for group_by=metadata:<key>: the tag key. dimension_id is then the
            # tag value in text form (booleans as true/false, integers in decimal), or null
            # for requests without the key; name is null.
            metadata_key: nil,
            token_group_id: nil,
            token_key_id: nil,
            token_user_id: nil
          )
          end

          sig do
            override.returns(
              {
                dimension_id: T.nilable(String),
                input_tokens: Integer,
                name: T.nilable(String),
                output_tokens: Integer,
                requests: Integer,
                reserved_spend: Float,
                spend: Float,
                unknown_requests: Integer,
                end_user_id: T.nilable(String),
                metadata_key: String,
                token_group_id: T.nilable(String),
                token_key_id: T.nilable(String),
                token_user_id: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        class Meta < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::LlmTokenGateway::SpendRetrieveSummaryResponse::Meta,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(Date) }
          attr_accessor :end_date

          # Group by one request tag key. Keys starting with ltg*, telnyx*, litellm* or cf*
          # (any case) are rejected.
          sig { returns(Telnyx::LlmTokenGateway::SpendGroupBy::Variants) }
          attr_accessor :group_by

          sig { returns(T::Boolean) }
          attr_accessor :has_more

          sig { returns(Integer) }
          attr_accessor :page_number

          sig { returns(Integer) }
          attr_accessor :page_size

          sig { returns(String) }
          attr_accessor :snapshot

          sig { returns(Date) }
          attr_accessor :start_date

          sig do
            params(
              end_date: Date,
              group_by:
                T.any(Telnyx::LlmTokenGateway::SpendGroupBy::OrSymbol, String),
              has_more: T::Boolean,
              page_number: Integer,
              page_size: Integer,
              snapshot: String,
              start_date: Date
            ).returns(T.attached_class)
          end
          def self.new(
            end_date:,
            # Group by one request tag key. Keys starting with ltg*, telnyx*, litellm* or cf*
            # (any case) are rejected.
            group_by:,
            has_more:,
            page_number:,
            page_size:,
            snapshot:,
            start_date:
          )
          end

          sig do
            override.returns(
              {
                end_date: Date,
                group_by: Telnyx::LlmTokenGateway::SpendGroupBy::Variants,
                has_more: T::Boolean,
                page_number: Integer,
                page_size: Integer,
                snapshot: String,
                start_date: Date
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
