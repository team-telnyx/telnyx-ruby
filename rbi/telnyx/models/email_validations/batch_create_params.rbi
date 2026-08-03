# typed: strong

module Telnyx
  module Models
    module EmailValidations
      class BatchCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::EmailValidations::BatchCreateParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T::Array[String]) }
        attr_accessor :emails

        # URL for batch completion webhook. Empty string is treated as omitted.
        # SSRF-protected; private/reserved IPs and internal hostnames are rejected.
        sig { returns(T.nilable(String)) }
        attr_reader :webhook_url

        sig { params(webhook_url: String).void }
        attr_writer :webhook_url

        sig { returns(T.nilable(String)) }
        attr_reader :idempotency_key

        sig { params(idempotency_key: String).void }
        attr_writer :idempotency_key

        sig do
          params(
            emails: T::Array[String],
            webhook_url: String,
            idempotency_key: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          emails:,
          # URL for batch completion webhook. Empty string is treated as omitted.
          # SSRF-protected; private/reserved IPs and internal hostnames are rejected.
          webhook_url: nil,
          idempotency_key: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              emails: T::Array[String],
              webhook_url: String,
              idempotency_key: String,
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
