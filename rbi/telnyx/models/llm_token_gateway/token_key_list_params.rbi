# typed: strong

module Telnyx
  module Models
    module LlmTokenGateway
      class TokenKeyListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::LlmTokenGateway::TokenKeyListParams,
              Telnyx::Internal::AnyHash
            )
          end

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
        attr_reader :token_user_id

        sig { params(token_user_id: String).void }
        attr_writer :token_user_id

        sig do
          params(
            page_number: Integer,
            page_size: Integer,
            page_snapshot: String,
            token_group_id: String,
            token_user_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          page_number: nil,
          page_size: nil,
          # Required after page 1; account/filter-bound 15-minute stable snapshot;
          # expired/mismatch 409.
          page_snapshot: nil,
          token_group_id: nil,
          token_user_id: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              page_number: Integer,
              page_size: Integer,
              page_snapshot: String,
              token_group_id: String,
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
