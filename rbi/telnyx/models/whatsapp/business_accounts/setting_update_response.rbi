# typed: strong

module Telnyx
  module Models
    module Whatsapp
      module BusinessAccounts
        class SettingUpdateResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Whatsapp::BusinessAccounts::SettingUpdateResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Telnyx::Models::Whatsapp::BusinessAccounts::SettingUpdateResponse::Data
              )
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                Telnyx::Models::Whatsapp::BusinessAccounts::SettingUpdateResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          sig do
            params(
              data:
                Telnyx::Models::Whatsapp::BusinessAccounts::SettingUpdateResponse::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(data: nil)
          end

          sig do
            override.returns(
              {
                data:
                  Telnyx::Models::Whatsapp::BusinessAccounts::SettingUpdateResponse::Data
              }
            )
          end
          def to_hash
          end

          class Data < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Whatsapp::BusinessAccounts::SettingUpdateResponse::Data,
                  Telnyx::Internal::AnyHash
                )
              end

            # Internal ID of Whatsapp business account
            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { params(id: String).void }
            attr_writer :id

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig { returns(T.nilable(String)) }
            attr_reader :record_type

            sig { params(record_type: String).void }
            attr_writer :record_type

            sig { returns(T.nilable(String)) }
            attr_reader :timezone

            sig { params(timezone: String).void }
            attr_writer :timezone

            sig { returns(T.nilable(Time)) }
            attr_reader :updated_at

            sig { params(updated_at: Time).void }
            attr_writer :updated_at

            # Enable/disable receiving Whatsapp events
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :webhook_enabled

            sig { params(webhook_enabled: T::Boolean).void }
            attr_writer :webhook_enabled

            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :webhook_events

            sig { params(webhook_events: T::Array[String]).void }
            attr_writer :webhook_events

            # Failover URL to receive Whatsapp events
            sig { returns(T.nilable(String)) }
            attr_reader :webhook_failover_url

            sig { params(webhook_failover_url: String).void }
            attr_writer :webhook_failover_url

            # URL to receive Whatsapp events
            sig { returns(T.nilable(String)) }
            attr_reader :webhook_url

            sig { params(webhook_url: String).void }
            attr_writer :webhook_url

            sig do
              params(
                id: String,
                name: String,
                record_type: String,
                timezone: String,
                updated_at: Time,
                webhook_enabled: T::Boolean,
                webhook_events: T::Array[String],
                webhook_failover_url: String,
                webhook_url: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Internal ID of Whatsapp business account
              id: nil,
              name: nil,
              record_type: nil,
              timezone: nil,
              updated_at: nil,
              # Enable/disable receiving Whatsapp events
              webhook_enabled: nil,
              webhook_events: nil,
              # Failover URL to receive Whatsapp events
              webhook_failover_url: nil,
              # URL to receive Whatsapp events
              webhook_url: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  name: String,
                  record_type: String,
                  timezone: String,
                  updated_at: Time,
                  webhook_enabled: T::Boolean,
                  webhook_events: T::Array[String],
                  webhook_failover_url: String,
                  webhook_url: String
                }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
