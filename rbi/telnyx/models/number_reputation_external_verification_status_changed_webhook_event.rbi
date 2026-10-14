# typed: strong

module Telnyx
  module Models
    class NumberReputationExternalVerificationStatusChangedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        returns(
          Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Meta
        )
      end
      attr_reader :meta

      sig do
        params(
          meta:
            Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Meta::OrHash
        ).void
      end
      attr_writer :meta

      sig do
        params(
          data:
            Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::OrHash,
          meta:
            Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Meta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:, meta:)
      end

      sig do
        override.returns(
          {
            data:
              Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data,
            meta:
              Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Meta
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Identifies the event; the same id is reused if the event is redelivered.
        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(
            Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::EventType::TaggedSymbol
          )
        end
        attr_accessor :event_type

        sig { returns(Time) }
        attr_accessor :occurred_at

        sig do
          returns(
            Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::Payload
          )
        end
        attr_reader :payload

        sig do
          params(
            payload:
              Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::Payload::OrHash
          ).void
        end
        attr_writer :payload

        sig do
          returns(
            Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::RecordType::TaggedSymbol
          )
        end
        attr_accessor :record_type

        sig do
          params(
            id: String,
            event_type:
              Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::EventType::OrSymbol,
            occurred_at: Time,
            payload:
              Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::Payload::OrHash,
            record_type:
              Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::RecordType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifies the event; the same id is reused if the event is redelivered.
          id:,
          event_type:,
          occurred_at:,
          payload:,
          record_type:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              event_type:
                Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::EventType::TaggedSymbol,
              occurred_at: Time,
              payload:
                Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::Payload,
              record_type:
                Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::RecordType::TaggedSymbol
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
                Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::EventType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NUMBER_REPUTATION_EXTERNAL_VERIFICATION_STATUS_CHANGED =
            T.let(
              :"number_reputation.external_verification.status_changed",
              Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::EventType::TaggedSymbol
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
                Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::Payload,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :enterprise_id

          sig do
            returns(
              Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::Payload::RecordType::TaggedSymbol
            )
          end
          attr_accessor :record_type

          # When the review decision was made. Always set: this event is only sent after a
          # review.
          sig { returns(Time) }
          attr_accessor :reviewed_at

          # The review outcome. `pending` is never delivered: the event is sent only once
          # the proof is reviewed.
          sig do
            returns(
              Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::Payload::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          # Set only when `status` is `rejected`.
          sig { returns(T.nilable(String)) }
          attr_accessor :rejection_reason

          sig do
            params(
              enterprise_id: String,
              record_type:
                Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::Payload::RecordType::OrSymbol,
              reviewed_at: Time,
              status:
                Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::Payload::Status::OrSymbol,
              rejection_reason: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            enterprise_id:,
            record_type:,
            # When the review decision was made. Always set: this event is only sent after a
            # review.
            reviewed_at:,
            # The review outcome. `pending` is never delivered: the event is sent only once
            # the proof is reviewed.
            status:,
            # Set only when `status` is `rejected`.
            rejection_reason: nil
          )
          end

          sig do
            override.returns(
              {
                enterprise_id: String,
                record_type:
                  Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::Payload::RecordType::TaggedSymbol,
                reviewed_at: Time,
                status:
                  Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::Payload::Status::TaggedSymbol,
                rejection_reason: T.nilable(String)
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
                  Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::Payload::RecordType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            REPUTATION_EXTERNAL_VERIFICATION =
              T.let(
                :reputation_external_verification,
                Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::Payload::RecordType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::Payload::RecordType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # The review outcome. `pending` is never delivered: the event is sent only once
          # the proof is reviewed.
          module Status
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::Payload::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            APPROVED =
              T.let(
                :approved,
                Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::Payload::Status::TaggedSymbol
              )
            REJECTED =
              T.let(
                :rejected,
                Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::Payload::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::Payload::Status::TaggedSymbol
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
                Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EVENT =
            T.let(
              :event,
              Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Data::RecordType::TaggedSymbol
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
              Telnyx::NumberReputationExternalVerificationStatusChangedWebhookEvent::Meta,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :attempt

        sig { returns(String) }
        attr_accessor :delivered_to

        sig do
          params(attempt: Integer, delivered_to: String).returns(
            T.attached_class
          )
        end
        def self.new(attempt:, delivered_to:)
        end

        sig { override.returns({ attempt: Integer, delivered_to: String }) }
        def to_hash
        end
      end
    end
  end
end
