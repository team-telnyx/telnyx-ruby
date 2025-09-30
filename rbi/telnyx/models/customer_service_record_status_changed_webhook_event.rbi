# typed: strong

module Telnyx
  module Models
    class CustomerServiceRecordStatusChangedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::CustomerServiceRecordStatusChangedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            Telnyx::CustomerServiceRecordStatusChangedWebhookEvent::Data
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            Telnyx::CustomerServiceRecordStatusChangedWebhookEvent::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        returns(
          T.nilable(
            Telnyx::CustomerServiceRecordStatusChangedWebhookEvent::Meta
          )
        )
      end
      attr_reader :meta

      sig do
        params(
          meta:
            Telnyx::CustomerServiceRecordStatusChangedWebhookEvent::Meta::OrHash
        ).void
      end
      attr_writer :meta

      sig do
        params(
          data:
            Telnyx::CustomerServiceRecordStatusChangedWebhookEvent::Data::OrHash,
          meta:
            Telnyx::CustomerServiceRecordStatusChangedWebhookEvent::Meta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          {
            data: Telnyx::CustomerServiceRecordStatusChangedWebhookEvent::Data,
            meta: Telnyx::CustomerServiceRecordStatusChangedWebhookEvent::Meta
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::CustomerServiceRecordStatusChangedWebhookEvent::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Uniquely identifies the callback event.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # The type of the callback event.
        sig do
          returns(
            T.nilable(
              Telnyx::CustomerServiceRecordStatusChangedWebhookEvent::Data::EventType::TaggedSymbol
            )
          )
        end
        attr_reader :event_type

        sig do
          params(
            event_type:
              Telnyx::CustomerServiceRecordStatusChangedWebhookEvent::Data::EventType::OrSymbol
          ).void
        end
        attr_writer :event_type

        # ISO 8601 formatted date indicating when the callback event occurred.
        sig { returns(T.nilable(Time)) }
        attr_reader :occurred_at

        sig { params(occurred_at: Time).void }
        attr_writer :occurred_at

        sig do
          returns(
            T.nilable(
              Telnyx::CustomerServiceRecordStatusChangedWebhookEvent::Data::Payload
            )
          )
        end
        attr_reader :payload

        sig do
          params(
            payload:
              Telnyx::CustomerServiceRecordStatusChangedWebhookEvent::Data::Payload::OrHash
          ).void
        end
        attr_writer :payload

        # Identifies the type of the resource.
        sig do
          returns(
            T.nilable(
              Telnyx::CustomerServiceRecordStatusChangedWebhookEvent::Data::RecordType::TaggedSymbol
            )
          )
        end
        attr_reader :record_type

        sig do
          params(
            record_type:
              Telnyx::CustomerServiceRecordStatusChangedWebhookEvent::Data::RecordType::OrSymbol
          ).void
        end
        attr_writer :record_type

        sig do
          params(
            id: String,
            event_type:
              Telnyx::CustomerServiceRecordStatusChangedWebhookEvent::Data::EventType::OrSymbol,
            occurred_at: Time,
            payload:
              Telnyx::CustomerServiceRecordStatusChangedWebhookEvent::Data::Payload::OrHash,
            record_type:
              Telnyx::CustomerServiceRecordStatusChangedWebhookEvent::Data::RecordType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Uniquely identifies the callback event.
          id: nil,
          # The type of the callback event.
          event_type: nil,
          # ISO 8601 formatted date indicating when the callback event occurred.
          occurred_at: nil,
          payload: nil,
          # Identifies the type of the resource.
          record_type: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              event_type:
                Telnyx::CustomerServiceRecordStatusChangedWebhookEvent::Data::EventType::TaggedSymbol,
              occurred_at: Time,
              payload:
                Telnyx::CustomerServiceRecordStatusChangedWebhookEvent::Data::Payload,
              record_type:
                Telnyx::CustomerServiceRecordStatusChangedWebhookEvent::Data::RecordType::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # The type of the callback event.
        module EventType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::CustomerServiceRecordStatusChangedWebhookEvent::Data::EventType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CUSTOMER_SERVICE_RECORD_STATUS_CHANGED =
            T.let(
              :"customer_service_record.status_changed",
              Telnyx::CustomerServiceRecordStatusChangedWebhookEvent::Data::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CustomerServiceRecordStatusChangedWebhookEvent::Data::EventType::TaggedSymbol
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
                Telnyx::CustomerServiceRecordStatusChangedWebhookEvent::Data::Payload,
                Telnyx::Internal::AnyHash
              )
            end

          # Uniquely identifies the customer service record.
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # The phone number of the customer service record.
          sig { returns(T.nilable(String)) }
          attr_reader :phone_number

          sig { params(phone_number: String).void }
          attr_writer :phone_number

          # The status of the customer service record
          sig do
            returns(
              T.nilable(
                Telnyx::CustomerServiceRecordStatusChangedWebhookEvent::Data::Payload::Status::TaggedSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                Telnyx::CustomerServiceRecordStatusChangedWebhookEvent::Data::Payload::Status::OrSymbol
            ).void
          end
          attr_writer :status

          # ISO 8601 formatted date indicating the last time where the resource was updated.
          sig { returns(T.nilable(Time)) }
          attr_reader :updated_at

          sig { params(updated_at: Time).void }
          attr_writer :updated_at

          sig do
            params(
              id: String,
              phone_number: String,
              status:
                Telnyx::CustomerServiceRecordStatusChangedWebhookEvent::Data::Payload::Status::OrSymbol,
              updated_at: Time
            ).returns(T.attached_class)
          end
          def self.new(
            # Uniquely identifies the customer service record.
            id: nil,
            # The phone number of the customer service record.
            phone_number: nil,
            # The status of the customer service record
            status: nil,
            # ISO 8601 formatted date indicating the last time where the resource was updated.
            updated_at: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                phone_number: String,
                status:
                  Telnyx::CustomerServiceRecordStatusChangedWebhookEvent::Data::Payload::Status::TaggedSymbol,
                updated_at: Time
              }
            )
          end
          def to_hash
          end

          # The status of the customer service record
          module Status
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::CustomerServiceRecordStatusChangedWebhookEvent::Data::Payload::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING =
              T.let(
                :pending,
                Telnyx::CustomerServiceRecordStatusChangedWebhookEvent::Data::Payload::Status::TaggedSymbol
              )
            COMPLETED =
              T.let(
                :completed,
                Telnyx::CustomerServiceRecordStatusChangedWebhookEvent::Data::Payload::Status::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                Telnyx::CustomerServiceRecordStatusChangedWebhookEvent::Data::Payload::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::CustomerServiceRecordStatusChangedWebhookEvent::Data::Payload::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        # Identifies the type of the resource.
        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::CustomerServiceRecordStatusChangedWebhookEvent::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EVENT =
            T.let(
              :event,
              Telnyx::CustomerServiceRecordStatusChangedWebhookEvent::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::CustomerServiceRecordStatusChangedWebhookEvent::Data::RecordType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Meta < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::CustomerServiceRecordStatusChangedWebhookEvent::Meta,
              Telnyx::Internal::AnyHash
            )
          end

        # The number of times the callback webhook has been attempted.
        sig { returns(T.nilable(Integer)) }
        attr_reader :attempt

        sig { params(attempt: Integer).void }
        attr_writer :attempt

        # The URL that the callback webhook was delivered to.
        sig { returns(T.nilable(String)) }
        attr_reader :delivered_to

        sig { params(delivered_to: String).void }
        attr_writer :delivered_to

        sig do
          params(attempt: Integer, delivered_to: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The number of times the callback webhook has been attempted.
          attempt: nil,
          # The URL that the callback webhook was delivered to.
          delivered_to: nil
        )
        end

        sig { override.returns({ attempt: Integer, delivered_to: String }) }
        def to_hash
        end
      end
    end
  end
end
