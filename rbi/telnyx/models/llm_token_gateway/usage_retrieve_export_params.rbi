# typed: strong

module Telnyx
  module Models
    module LlmTokenGateway
      class UsageRetrieveExportParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::LlmTokenGateway::UsageRetrieveExportParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Opaque next_cursor from a previous page; not combinable with start_time. Bound
        # to the requested types; the account always comes from the credential.
        sig { returns(T.nilable(String)) }
        attr_reader :cursor

        sig { params(cursor: String).void }
        attr_writer :cursor

        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # First page only: RFC 3339 with offset, at most 30 days ago and not in the
        # future; default now - 24h.
        sig { returns(T.nilable(Time)) }
        attr_reader :start_time

        sig { params(start_time: Time).void }
        attr_writer :start_time

        # Comma-separated subset of inference.request,guardrail.evaluation; default both.
        sig { returns(T.nilable(String)) }
        attr_reader :types

        sig { params(types: String).void }
        attr_writer :types

        sig do
          params(
            cursor: String,
            limit: Integer,
            start_time: Time,
            types: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Opaque next_cursor from a previous page; not combinable with start_time. Bound
          # to the requested types; the account always comes from the credential.
          cursor: nil,
          limit: nil,
          # First page only: RFC 3339 with offset, at most 30 days ago and not in the
          # future; default now - 24h.
          start_time: nil,
          # Comma-separated subset of inference.request,guardrail.evaluation; default both.
          types: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              cursor: String,
              limit: Integer,
              start_time: Time,
              types: String,
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
