# typed: strong

module Telnyx
  module Models
    module Number10dlc
      class PartnerCampaignUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Number10dlc::PartnerCampaignUpdateParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Webhook failover to which campaign status updates are sent.
        sig { returns(T.nilable(String)) }
        attr_reader :webhook_failover_url

        sig { params(webhook_failover_url: String).void }
        attr_writer :webhook_failover_url

        # Webhook to which campaign status updates are sent.
        sig { returns(T.nilable(String)) }
        attr_reader :webhook_url

        sig { params(webhook_url: String).void }
        attr_writer :webhook_url

        sig do
          params(
            webhook_failover_url: String,
            webhook_url: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Webhook failover to which campaign status updates are sent.
          webhook_failover_url: nil,
          # Webhook to which campaign status updates are sent.
          webhook_url: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              webhook_failover_url: String,
              webhook_url: String,
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
