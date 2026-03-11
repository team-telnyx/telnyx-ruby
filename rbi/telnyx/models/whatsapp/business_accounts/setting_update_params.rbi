# typed: strong

module Telnyx
  module Models
    module Whatsapp
      module BusinessAccounts
        class SettingUpdateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Whatsapp::BusinessAccounts::SettingUpdateParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # IANA timezone identifier
          sig { returns(T.nilable(String)) }
          attr_reader :timezone

          sig { params(timezone: String).void }
          attr_writer :timezone

          # Enable/disable receiving Whatsapp events
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :webhook_enabled

          sig { params(webhook_enabled: T::Boolean).void }
          attr_writer :webhook_enabled

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :webhook_events

          sig { params(webhook_events: T::Array[String]).void }
          attr_writer :webhook_events

          # Failover URL to send Whatsapp events
          sig { returns(T.nilable(String)) }
          attr_reader :webhook_failover_url

          sig { params(webhook_failover_url: String).void }
          attr_writer :webhook_failover_url

          # URL to send Whatsapp events
          sig { returns(T.nilable(String)) }
          attr_reader :webhook_url

          sig { params(webhook_url: String).void }
          attr_writer :webhook_url

          sig do
            params(
              id: String,
              name: String,
              timezone: String,
              webhook_enabled: T::Boolean,
              webhook_events: T::Array[String],
              webhook_failover_url: String,
              webhook_url: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            name: nil,
            # IANA timezone identifier
            timezone: nil,
            # Enable/disable receiving Whatsapp events
            webhook_enabled: nil,
            webhook_events: nil,
            # Failover URL to send Whatsapp events
            webhook_failover_url: nil,
            # URL to send Whatsapp events
            webhook_url: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                id: String,
                name: String,
                timezone: String,
                webhook_enabled: T::Boolean,
                webhook_events: T::Array[String],
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
end
