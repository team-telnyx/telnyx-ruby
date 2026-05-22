# typed: strong

module Telnyx
  module Models
    module Whatsapp
      class UserDataUpdateResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Whatsapp::UserDataUpdateResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Telnyx::Models::Whatsapp::UserDataUpdateResponse::Data)
          )
        end
        attr_reader :data

        sig do
          params(
            data: Telnyx::Models::Whatsapp::UserDataUpdateResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data: Telnyx::Models::Whatsapp::UserDataUpdateResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            { data: Telnyx::Models::Whatsapp::UserDataUpdateResponse::Data }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Whatsapp::UserDataUpdateResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(Time)) }
          attr_reader :created_at

          sig { params(created_at: Time).void }
          attr_writer :created_at

          sig { returns(T.nilable(String)) }
          attr_reader :record_type

          sig { params(record_type: String).void }
          attr_writer :record_type

          sig { returns(T.nilable(Time)) }
          attr_reader :updated_at

          sig { params(updated_at: Time).void }
          attr_writer :updated_at

          # Failover URL to receive Whatsapp signup events
          sig { returns(T.nilable(String)) }
          attr_reader :webhook_failover_url

          sig { params(webhook_failover_url: String).void }
          attr_writer :webhook_failover_url

          # URL to receive Whatsapp signup events
          sig { returns(T.nilable(String)) }
          attr_reader :webhook_url

          sig { params(webhook_url: String).void }
          attr_writer :webhook_url

          sig do
            params(
              created_at: Time,
              record_type: String,
              updated_at: Time,
              webhook_failover_url: String,
              webhook_url: String
            ).returns(T.attached_class)
          end
          def self.new(
            created_at: nil,
            record_type: nil,
            updated_at: nil,
            # Failover URL to receive Whatsapp signup events
            webhook_failover_url: nil,
            # URL to receive Whatsapp signup events
            webhook_url: nil
          )
          end

          sig do
            override.returns(
              {
                created_at: Time,
                record_type: String,
                updated_at: Time,
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
