# typed: strong

module Telnyx
  module Models
    class NumberReputationNumberRemovedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::NumberReputationNumberRemovedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(Telnyx::NumberReputationNumberRemovedWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(
          data: Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::OrHash
        ).void
      end
      attr_writer :data

      sig { returns(Telnyx::NumberReputationNumberRemovedWebhookEvent::Meta) }
      attr_reader :meta

      sig do
        params(
          meta: Telnyx::NumberReputationNumberRemovedWebhookEvent::Meta::OrHash
        ).void
      end
      attr_writer :meta

      sig do
        params(
          data: Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::OrHash,
          meta: Telnyx::NumberReputationNumberRemovedWebhookEvent::Meta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:, meta:)
      end

      sig do
        override.returns(
          {
            data: Telnyx::NumberReputationNumberRemovedWebhookEvent::Data,
            meta: Telnyx::NumberReputationNumberRemovedWebhookEvent::Meta
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::NumberReputationNumberRemovedWebhookEvent::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Identifies the event; the same id is reused if the event is redelivered.
        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(
            Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::EventType::TaggedSymbol
          )
        end
        attr_accessor :event_type

        sig { returns(Time) }
        attr_accessor :occurred_at

        sig do
          returns(
            Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::Payload
          )
        end
        attr_reader :payload

        sig do
          params(
            payload:
              Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::Payload::OrHash
          ).void
        end
        attr_writer :payload

        sig do
          returns(
            Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::RecordType::TaggedSymbol
          )
        end
        attr_accessor :record_type

        sig do
          params(
            id: String,
            event_type:
              Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::EventType::OrSymbol,
            occurred_at: Time,
            payload:
              Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::Payload::OrHash,
            record_type:
              Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::RecordType::OrSymbol
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
                Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::EventType::TaggedSymbol,
              occurred_at: Time,
              payload:
                Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::Payload,
              record_type:
                Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::RecordType::TaggedSymbol
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
                Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::EventType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NUMBER_REPUTATION_NUMBER_REMOVED =
            T.let(
              :"number_reputation.number.removed",
              Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::EventType::TaggedSymbol
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
                Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::Payload,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :enterprise_id

          sig do
            returns(
              Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::Payload::OwnershipStatus::TaggedSymbol
            )
          end
          attr_accessor :ownership_status

          sig { returns(String) }
          attr_accessor :phone_number

          sig do
            returns(
              Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::Payload::RecordType::TaggedSymbol
            )
          end
          attr_accessor :record_type

          # `ported_away`: you confirmed you no longer own it after a carrier change.
          # `unconfirmed_ownership`: the confirmation deadline passed. `reassigned`: the
          # number was reported as permanently disconnected. `customer_reported`: you
          # reported that you no longer own it. Removing a number yourself with `DELETE`
          # sends no event.
          sig do
            returns(
              Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::Payload::RemovalReason::TaggedSymbol
            )
          end
          attr_accessor :removal_reason

          sig { returns(Time) }
          attr_accessor :removed_at

          # Where the phone number is hosted. `telnyx`: in your Telnyx inventory.
          # `external`: a number you own that is hosted with another provider.
          sig do
            returns(
              Telnyx::Enterprises::Reputation::ReputationNumberSource::TaggedSymbol
            )
          end
          attr_accessor :source

          sig do
            params(
              enterprise_id: String,
              ownership_status:
                Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::Payload::OwnershipStatus::OrSymbol,
              phone_number: String,
              record_type:
                Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::Payload::RecordType::OrSymbol,
              removal_reason:
                Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::Payload::RemovalReason::OrSymbol,
              removed_at: Time,
              source:
                Telnyx::Enterprises::Reputation::ReputationNumberSource::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            enterprise_id:,
            ownership_status:,
            phone_number:,
            record_type:,
            # `ported_away`: you confirmed you no longer own it after a carrier change.
            # `unconfirmed_ownership`: the confirmation deadline passed. `reassigned`: the
            # number was reported as permanently disconnected. `customer_reported`: you
            # reported that you no longer own it. Removing a number yourself with `DELETE`
            # sends no event.
            removal_reason:,
            removed_at:,
            # Where the phone number is hosted. `telnyx`: in your Telnyx inventory.
            # `external`: a number you own that is hosted with another provider.
            source:
          )
          end

          sig do
            override.returns(
              {
                enterprise_id: String,
                ownership_status:
                  Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::Payload::OwnershipStatus::TaggedSymbol,
                phone_number: String,
                record_type:
                  Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::Payload::RecordType::TaggedSymbol,
                removal_reason:
                  Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::Payload::RemovalReason::TaggedSymbol,
                removed_at: Time,
                source:
                  Telnyx::Enterprises::Reputation::ReputationNumberSource::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          module OwnershipStatus
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::Payload::OwnershipStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            REMOVED =
              T.let(
                :removed,
                Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::Payload::OwnershipStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::Payload::OwnershipStatus::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module RecordType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::Payload::RecordType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            REPUTATION_PHONE_NUMBER =
              T.let(
                :reputation_phone_number,
                Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::Payload::RecordType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::Payload::RecordType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # `ported_away`: you confirmed you no longer own it after a carrier change.
          # `unconfirmed_ownership`: the confirmation deadline passed. `reassigned`: the
          # number was reported as permanently disconnected. `customer_reported`: you
          # reported that you no longer own it. Removing a number yourself with `DELETE`
          # sends no event.
          module RemovalReason
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::Payload::RemovalReason
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PORTED_AWAY =
              T.let(
                :ported_away,
                Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::Payload::RemovalReason::TaggedSymbol
              )
            UNCONFIRMED_OWNERSHIP =
              T.let(
                :unconfirmed_ownership,
                Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::Payload::RemovalReason::TaggedSymbol
              )
            REASSIGNED =
              T.let(
                :reassigned,
                Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::Payload::RemovalReason::TaggedSymbol
              )
            CUSTOMER_REPORTED =
              T.let(
                :customer_reported,
                Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::Payload::RemovalReason::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::Payload::RemovalReason::TaggedSymbol
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
                Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EVENT =
            T.let(
              :event,
              Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::NumberReputationNumberRemovedWebhookEvent::Data::RecordType::TaggedSymbol
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
              Telnyx::NumberReputationNumberRemovedWebhookEvent::Meta,
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
