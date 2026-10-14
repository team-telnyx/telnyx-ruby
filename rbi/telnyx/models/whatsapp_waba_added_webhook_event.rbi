# typed: strong

module Telnyx
  module Models
    class WhatsappWabaAddedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::WhatsappWabaAddedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(Telnyx::WhatsappWabaAddedWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(data: Telnyx::WhatsappWabaAddedWebhookEvent::Data::OrHash).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::WhatsappWabaAddedWebhookEvent::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns({ data: Telnyx::WhatsappWabaAddedWebhookEvent::Data })
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::WhatsappWabaAddedWebhookEvent::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(
            Telnyx::WhatsappWabaAddedWebhookEvent::Data::EventType::TaggedSymbol
          )
        end
        attr_accessor :event_type

        sig { returns(Time) }
        attr_accessor :occurred_at

        sig { returns(Telnyx::WhatsappWabaAddedWebhookEvent::Data::Payload) }
        attr_reader :payload

        sig do
          params(
            payload:
              Telnyx::WhatsappWabaAddedWebhookEvent::Data::Payload::OrHash
          ).void
        end
        attr_writer :payload

        sig do
          returns(
            Telnyx::WhatsappWabaAddedWebhookEvent::Data::RecordType::TaggedSymbol
          )
        end
        attr_accessor :record_type

        sig do
          params(
            id: String,
            event_type:
              Telnyx::WhatsappWabaAddedWebhookEvent::Data::EventType::OrSymbol,
            occurred_at: Time,
            payload:
              Telnyx::WhatsappWabaAddedWebhookEvent::Data::Payload::OrHash,
            record_type:
              Telnyx::WhatsappWabaAddedWebhookEvent::Data::RecordType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(id:, event_type:, occurred_at:, payload:, record_type:)
        end

        sig do
          override.returns(
            {
              id: String,
              event_type:
                Telnyx::WhatsappWabaAddedWebhookEvent::Data::EventType::TaggedSymbol,
              occurred_at: Time,
              payload: Telnyx::WhatsappWabaAddedWebhookEvent::Data::Payload,
              record_type:
                Telnyx::WhatsappWabaAddedWebhookEvent::Data::RecordType::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module EventType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::WhatsappWabaAddedWebhookEvent::Data::EventType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WHATSAPP_WABA_ADDED =
            T.let(
              :"whatsapp.waba_added",
              Telnyx::WhatsappWabaAddedWebhookEvent::Data::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::WhatsappWabaAddedWebhookEvent::Data::EventType::TaggedSymbol
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
                Telnyx::WhatsappWabaAddedWebhookEvent::Data::Payload,
                Telnyx::Internal::AnyHash
              )
            end

          # Signup session ID.
          sig { returns(String) }
          attr_accessor :event_id

          sig do
            returns(
              Telnyx::WhatsappWabaAddedWebhookEvent::Data::Payload::RecordType::TaggedSymbol
            )
          end
          attr_accessor :record_type

          # Signup session outcome.
          sig do
            returns(
              Telnyx::WhatsappWabaAddedWebhookEvent::Data::Payload::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          # Meta WhatsApp Business Account identifier.
          sig { returns(String) }
          attr_accessor :waba_id

          # Errors recorded during provisioning.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :errors

          sig { params(errors: T::Array[String]).void }
          attr_writer :errors

          # Phone numbers found on the WABA. Omitted for standard sessions started with a
          # phone_number_id, and for sessions that fail before Telnyx fetches the numbers.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :phone_numbers

          sig { params(phone_numbers: T::Array[String]).void }
          attr_writer :phone_numbers

          sig do
            params(
              event_id: String,
              record_type:
                Telnyx::WhatsappWabaAddedWebhookEvent::Data::Payload::RecordType::OrSymbol,
              status:
                Telnyx::WhatsappWabaAddedWebhookEvent::Data::Payload::Status::OrSymbol,
              waba_id: String,
              errors: T::Array[String],
              phone_numbers: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            # Signup session ID.
            event_id:,
            record_type:,
            # Signup session outcome.
            status:,
            # Meta WhatsApp Business Account identifier.
            waba_id:,
            # Errors recorded during provisioning.
            errors: nil,
            # Phone numbers found on the WABA. Omitted for standard sessions started with a
            # phone_number_id, and for sessions that fail before Telnyx fetches the numbers.
            phone_numbers: nil
          )
          end

          sig do
            override.returns(
              {
                event_id: String,
                record_type:
                  Telnyx::WhatsappWabaAddedWebhookEvent::Data::Payload::RecordType::TaggedSymbol,
                status:
                  Telnyx::WhatsappWabaAddedWebhookEvent::Data::Payload::Status::TaggedSymbol,
                waba_id: String,
                errors: T::Array[String],
                phone_numbers: T::Array[String]
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
                  Telnyx::WhatsappWabaAddedWebhookEvent::Data::Payload::RecordType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            WABA_ACCOUNT_ADDED =
              T.let(
                :waba_account_added,
                Telnyx::WhatsappWabaAddedWebhookEvent::Data::Payload::RecordType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::WhatsappWabaAddedWebhookEvent::Data::Payload::RecordType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Signup session outcome.
          module Status
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::WhatsappWabaAddedWebhookEvent::Data::Payload::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SUCCESS =
              T.let(
                :SUCCESS,
                Telnyx::WhatsappWabaAddedWebhookEvent::Data::Payload::Status::TaggedSymbol
              )
            FAILURE =
              T.let(
                :FAILURE,
                Telnyx::WhatsappWabaAddedWebhookEvent::Data::Payload::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::WhatsappWabaAddedWebhookEvent::Data::Payload::Status::TaggedSymbol
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
              T.all(
                Symbol,
                Telnyx::WhatsappWabaAddedWebhookEvent::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EVENT =
            T.let(
              :event,
              Telnyx::WhatsappWabaAddedWebhookEvent::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::WhatsappWabaAddedWebhookEvent::Data::RecordType::TaggedSymbol
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
