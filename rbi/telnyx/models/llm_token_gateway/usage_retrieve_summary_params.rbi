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

        # Exclusive UTC date in YYYY-MM-DD format. Must follow start_date by 1 to 31 days.
        sig { returns(Date) }
        attr_accessor :end_date

        # Inclusive UTC date in YYYY-MM-DD format. Must precede end_date by 1 to 31 days.
        sig { returns(Date) }
        attr_accessor :start_date

        # ID of a token group owned by the authenticated account.
        sig { returns(String) }
        attr_accessor :token_group_id

        sig do
          params(
            end_date: Date,
            start_date: Date,
            token_group_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Exclusive UTC date in YYYY-MM-DD format. Must follow start_date by 1 to 31 days.
          end_date:,
          # Inclusive UTC date in YYYY-MM-DD format. Must precede end_date by 1 to 31 days.
          start_date:,
          # ID of a token group owned by the authenticated account.
          token_group_id:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              end_date: Date,
              start_date: Date,
              token_group_id: String,
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
