# typed: strong

module Telnyx
  module Models
    module AI
      class MessagingSettings < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::MessagingSettings, Telnyx::Internal::AnyHash)
          end

        # Default Messaging Profile used for messaging exchanges with your assistant. This
        # will be created automatically on assistant creation.
        sig { returns(T.nilable(String)) }
        attr_reader :default_messaging_profile_id

        sig { params(default_messaging_profile_id: String).void }
        attr_writer :default_messaging_profile_id

        # The URL where webhooks related to delivery statused for assistant messages will
        # be sent.
        sig { returns(T.nilable(String)) }
        attr_reader :delivery_status_webhook_url

        sig { params(delivery_status_webhook_url: String).void }
        attr_writer :delivery_status_webhook_url

        sig do
          params(
            default_messaging_profile_id: String,
            delivery_status_webhook_url: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Default Messaging Profile used for messaging exchanges with your assistant. This
          # will be created automatically on assistant creation.
          default_messaging_profile_id: nil,
          # The URL where webhooks related to delivery statused for assistant messages will
          # be sent.
          delivery_status_webhook_url: nil
        )
        end

        sig do
          override.returns(
            {
              default_messaging_profile_id: String,
              delivery_status_webhook_url: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
