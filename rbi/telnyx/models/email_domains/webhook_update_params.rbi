# typed: strong

module Telnyx
  module Models
    module EmailDomains
      class WebhookUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::EmailDomains::WebhookUpdateParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :domain_id

        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(
            T.nilable(
              T::Array[Telnyx::EmailDomains::EmailWebhookEvent::OrSymbol]
            )
          )
        end
        attr_reader :events

        sig do
          params(
            events: T::Array[Telnyx::EmailDomains::EmailWebhookEvent::OrSymbol]
          ).void
        end
        attr_writer :events

        sig { returns(T.nilable(String)) }
        attr_reader :url

        sig { params(url: String).void }
        attr_writer :url

        sig do
          params(
            domain_id: String,
            id: String,
            events: T::Array[Telnyx::EmailDomains::EmailWebhookEvent::OrSymbol],
            url: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          domain_id:,
          id:,
          events: nil,
          url: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              domain_id: String,
              id: String,
              events:
                T::Array[Telnyx::EmailDomains::EmailWebhookEvent::OrSymbol],
              url: String,
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
