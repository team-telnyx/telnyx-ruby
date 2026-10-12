# typed: strong

module Telnyx
  module Models
    module Enterprises
      class ReputationUpdateWebhookParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Enterprises::ReputationUpdateWebhookParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :enterprise_id

        # HTTPS URL on a publicly routable host. Send `null` to stop receiving
        # number-ownership events.
        sig { returns(T.nilable(String)) }
        attr_accessor :webhook_url

        sig do
          params(
            enterprise_id: String,
            webhook_url: T.nilable(String),
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          enterprise_id:,
          # HTTPS URL on a publicly routable host. Send `null` to stop receiving
          # number-ownership events.
          webhook_url:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              enterprise_id: String,
              webhook_url: T.nilable(String),
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
