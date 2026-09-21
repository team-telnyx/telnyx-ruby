# typed: strong

module Telnyx
  module Models
    class WhatsappAccountUpdate < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::WhatsappAccountUpdate, Telnyx::Internal::AnyHash)
        end

      sig { returns(Telnyx::WhatsappAccountUpdate::Data) }
      attr_reader :data

      sig { params(data: Telnyx::WhatsappAccountUpdate::Data::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::WhatsappAccountUpdate::Data::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data:)
      end

      sig { override.returns({ data: Telnyx::WhatsappAccountUpdate::Data }) }
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::WhatsappAccountUpdate::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(Telnyx::WhatsappAccountUpdate::Data::EventType::TaggedSymbol)
        end
        attr_accessor :event_type

        sig { returns(Time) }
        attr_accessor :occurred_at

        sig { returns(Telnyx::WhatsappAccountUpdate::Data::Payload) }
        attr_reader :payload

        sig do
          params(
            payload: Telnyx::WhatsappAccountUpdate::Data::Payload::OrHash
          ).void
        end
        attr_writer :payload

        sig do
          returns(Telnyx::WhatsappAccountUpdate::Data::RecordType::TaggedSymbol)
        end
        attr_accessor :record_type

        sig do
          params(
            id: String,
            event_type:
              Telnyx::WhatsappAccountUpdate::Data::EventType::OrSymbol,
            occurred_at: Time,
            payload: Telnyx::WhatsappAccountUpdate::Data::Payload::OrHash,
            record_type:
              Telnyx::WhatsappAccountUpdate::Data::RecordType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(id:, event_type:, occurred_at:, payload:, record_type:)
        end

        sig do
          override.returns(
            {
              id: String,
              event_type:
                Telnyx::WhatsappAccountUpdate::Data::EventType::TaggedSymbol,
              occurred_at: Time,
              payload: Telnyx::WhatsappAccountUpdate::Data::Payload,
              record_type:
                Telnyx::WhatsappAccountUpdate::Data::RecordType::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module EventType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::WhatsappAccountUpdate::Data::EventType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WHATSAPP_ACCOUNT_UPDATE =
            T.let(
              :"whatsapp.account.update",
              Telnyx::WhatsappAccountUpdate::Data::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::WhatsappAccountUpdate::Data::EventType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Payload < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::WhatsappAccountUpdate::Data::Payload,
                Telnyx::Internal::AnyHash
              )
            end

          # Account event reported by Meta. Coexistence lifecycle values include
          # `ACCOUNT_OFFBOARDED`, `ACCOUNT_RECONNECTED`, and `PARTNER_REMOVED`. Preserve
          # unknown values for forward compatibility.
          sig { returns(String) }
          attr_accessor :event

          sig do
            returns(
              Telnyx::WhatsappAccountUpdate::Data::Payload::RecordType::TaggedSymbol
            )
          end
          attr_accessor :record_type

          # Meta WhatsApp Business Account identifier.
          sig { returns(String) }
          attr_accessor :waba_id

          sig do
            params(
              event: String,
              record_type:
                Telnyx::WhatsappAccountUpdate::Data::Payload::RecordType::OrSymbol,
              waba_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Account event reported by Meta. Coexistence lifecycle values include
            # `ACCOUNT_OFFBOARDED`, `ACCOUNT_RECONNECTED`, and `PARTNER_REMOVED`. Preserve
            # unknown values for forward compatibility.
            event:,
            record_type:,
            # Meta WhatsApp Business Account identifier.
            waba_id:
          )
          end

          sig do
            override.returns(
              {
                event: String,
                record_type:
                  Telnyx::WhatsappAccountUpdate::Data::Payload::RecordType::TaggedSymbol,
                waba_id: String
              }
            )
          end
          def to_hash
          end

          module RecordType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::WhatsappAccountUpdate::Data::Payload::RecordType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            WHATSAPP_ACCOUNT =
              T.let(
                :whatsapp_account,
                Telnyx::WhatsappAccountUpdate::Data::Payload::RecordType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::WhatsappAccountUpdate::Data::Payload::RecordType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::WhatsappAccountUpdate::Data::RecordType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EVENT =
            T.let(
              :event,
              Telnyx::WhatsappAccountUpdate::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::WhatsappAccountUpdate::Data::RecordType::TaggedSymbol
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
