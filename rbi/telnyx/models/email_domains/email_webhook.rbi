# typed: strong

module Telnyx
  module Models
    module EmailDomains
      class EmailWebhook < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::EmailDomains::EmailWebhook, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :domain_id

        # Allowlist of event types delivered to this webhook. At least one event is
        # required — there is no default-to-all.
        sig do
          returns(
            T::Array[Telnyx::EmailDomains::EmailWebhookEvent::TaggedSymbol]
          )
        end
        attr_accessor :events

        sig do
          returns(Telnyx::EmailDomains::EmailWebhook::RecordType::TaggedSymbol)
        end
        attr_accessor :record_type

        sig { returns(Time) }
        attr_accessor :updated_at

        # HTTPS endpoint to deliver subscribed events to.
        sig { returns(String) }
        attr_accessor :url

        sig do
          params(
            id: String,
            created_at: Time,
            domain_id: String,
            events: T::Array[Telnyx::EmailDomains::EmailWebhookEvent::OrSymbol],
            record_type:
              Telnyx::EmailDomains::EmailWebhook::RecordType::OrSymbol,
            updated_at: Time,
            url: String
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          created_at:,
          domain_id:,
          # Allowlist of event types delivered to this webhook. At least one event is
          # required — there is no default-to-all.
          events:,
          record_type:,
          updated_at:,
          # HTTPS endpoint to deliver subscribed events to.
          url:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              domain_id: String,
              events:
                T::Array[Telnyx::EmailDomains::EmailWebhookEvent::TaggedSymbol],
              record_type:
                Telnyx::EmailDomains::EmailWebhook::RecordType::TaggedSymbol,
              updated_at: Time,
              url: String
            }
          )
        end
        def to_hash
        end

        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::EmailDomains::EmailWebhook::RecordType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMAIL_WEBHOOK =
            T.let(
              :email_webhook,
              Telnyx::EmailDomains::EmailWebhook::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::EmailDomains::EmailWebhook::RecordType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
