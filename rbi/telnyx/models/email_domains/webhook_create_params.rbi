# typed: strong

module Telnyx
  module Models
    module EmailDomains
      class WebhookCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::EmailDomains::WebhookCreateParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :domain_id

        # At least one event type is required.
        sig do
          returns(T::Array[Telnyx::EmailDomains::EmailWebhookEvent::OrSymbol])
        end
        attr_accessor :events

        # HTTPS endpoint to deliver subscribed events to.
        sig { returns(String) }
        attr_accessor :url

        sig do
          params(
            domain_id: String,
            events: T::Array[Telnyx::EmailDomains::EmailWebhookEvent::OrSymbol],
            url: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          domain_id:,
          # At least one event type is required.
          events:,
          # HTTPS endpoint to deliver subscribed events to.
          url:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              domain_id: String,
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
