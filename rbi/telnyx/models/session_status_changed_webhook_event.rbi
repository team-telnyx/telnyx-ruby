# typed: strong

module Telnyx
  module Models
    class SessionStatusChangedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::SessionStatusChangedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      # Unique event id; deduplicate deliveries on it.
      sig { returns(String) }
      attr_accessor :id

      # Status transition details.
      sig { returns(Telnyx::SessionStatusChangedWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(
          data: Telnyx::SessionStatusChangedWebhookEvent::Data::OrHash
        ).void
      end
      attr_writer :data

      # Event type.
      sig do
        returns(Telnyx::SessionStatusChangedWebhookEvent::Event::TaggedSymbol)
      end
      attr_accessor :event

      # When the event occurred.
      sig { returns(Time) }
      attr_accessor :occurred_at

      # Envelope version.
      sig { returns(String) }
      attr_accessor :version

      sig do
        params(
          id: String,
          data: Telnyx::SessionStatusChangedWebhookEvent::Data::OrHash,
          event: Telnyx::SessionStatusChangedWebhookEvent::Event::OrSymbol,
          occurred_at: Time,
          version: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique event id; deduplicate deliveries on it.
        id:,
        # Status transition details.
        data:,
        # Event type.
        event:,
        # When the event occurred.
        occurred_at:,
        # Envelope version.
        version:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            data: Telnyx::SessionStatusChangedWebhookEvent::Data,
            event:
              Telnyx::SessionStatusChangedWebhookEvent::Event::TaggedSymbol,
            occurred_at: Time,
            version: String
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::SessionStatusChangedWebhookEvent::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Whether the session is recording at this lifecycle edge.
        sig { returns(T::Boolean) }
        attr_accessor :recording

        # The meeting session this event belongs to.
        sig { returns(String) }
        attr_accessor :session_id

        # The new session status.
        sig { returns(String) }
        attr_accessor :status

        # Additional detail about the status (for example `cancelled`), or null.
        sig { returns(T.nilable(String)) }
        attr_accessor :status_detail

        # Previous lifecycle status, when supplied.
        sig do
          returns(
            T.nilable(
              Telnyx::SessionStatusChangedWebhookEvent::Data::PreviousStatus::TaggedSymbol
            )
          )
        end
        attr_reader :previous_status

        sig do
          params(
            previous_status:
              Telnyx::SessionStatusChangedWebhookEvent::Data::PreviousStatus::OrSymbol
          ).void
        end
        attr_writer :previous_status

        # Status transition details.
        sig do
          params(
            recording: T::Boolean,
            session_id: String,
            status: String,
            status_detail: T.nilable(String),
            previous_status:
              Telnyx::SessionStatusChangedWebhookEvent::Data::PreviousStatus::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Whether the session is recording at this lifecycle edge.
          recording:,
          # The meeting session this event belongs to.
          session_id:,
          # The new session status.
          status:,
          # Additional detail about the status (for example `cancelled`), or null.
          status_detail:,
          # Previous lifecycle status, when supplied.
          previous_status: nil
        )
        end

        sig do
          override.returns(
            {
              recording: T::Boolean,
              session_id: String,
              status: String,
              status_detail: T.nilable(String),
              previous_status:
                Telnyx::SessionStatusChangedWebhookEvent::Data::PreviousStatus::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # Previous lifecycle status, when supplied.
        module PreviousStatus
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::SessionStatusChangedWebhookEvent::Data::PreviousStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SCHEDULED =
            T.let(
              :scheduled,
              Telnyx::SessionStatusChangedWebhookEvent::Data::PreviousStatus::TaggedSymbol
            )
          JOINING =
            T.let(
              :joining,
              Telnyx::SessionStatusChangedWebhookEvent::Data::PreviousStatus::TaggedSymbol
            )
          WAITING_FOR_ADMISSION =
            T.let(
              :waiting_for_admission,
              Telnyx::SessionStatusChangedWebhookEvent::Data::PreviousStatus::TaggedSymbol
            )
          ACTIVE =
            T.let(
              :active,
              Telnyx::SessionStatusChangedWebhookEvent::Data::PreviousStatus::TaggedSymbol
            )
          LEAVING =
            T.let(
              :leaving,
              Telnyx::SessionStatusChangedWebhookEvent::Data::PreviousStatus::TaggedSymbol
            )
          ENDED =
            T.let(
              :ended,
              Telnyx::SessionStatusChangedWebhookEvent::Data::PreviousStatus::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              Telnyx::SessionStatusChangedWebhookEvent::Data::PreviousStatus::TaggedSymbol
            )
          ADMISSION_DENIED =
            T.let(
              :admission_denied,
              Telnyx::SessionStatusChangedWebhookEvent::Data::PreviousStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::SessionStatusChangedWebhookEvent::Data::PreviousStatus::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # Event type.
      module Event
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::SessionStatusChangedWebhookEvent::Event)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SESSION_STATUS_CHANGED =
          T.let(
            :"session.status_changed",
            Telnyx::SessionStatusChangedWebhookEvent::Event::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::SessionStatusChangedWebhookEvent::Event::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
