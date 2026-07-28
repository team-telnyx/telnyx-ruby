# typed: strong

module Telnyx
  module Models
    module EmailDomains
      class EmailWebhookResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::EmailDomains::EmailWebhookResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(Telnyx::EmailDomains::EmailWebhook) }
        attr_reader :data

        sig { params(data: Telnyx::EmailDomains::EmailWebhook::OrHash).void }
        attr_writer :data

        sig do
          params(data: Telnyx::EmailDomains::EmailWebhook::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(data:)
        end

        sig { override.returns({ data: Telnyx::EmailDomains::EmailWebhook }) }
        def to_hash
        end
      end
    end
  end
end
