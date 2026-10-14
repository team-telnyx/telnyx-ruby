# typed: strong

module Telnyx
  module Models
    class NumberReputationNumberFlaggedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::NumberReputationNumberFlaggedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data) }
      attr_reader :data

      sig do
        params(
          data: Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data::OrHash
        ).void
      end
      attr_writer :data

      sig { returns(Telnyx::NumberReputationNumberFlaggedWebhookEvent::Meta) }
      attr_reader :meta

      sig do
        params(
          meta: Telnyx::NumberReputationNumberFlaggedWebhookEvent::Meta::OrHash
        ).void
      end
      attr_writer :meta

      sig do
        params(
          data: Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data::OrHash,
          meta: Telnyx::NumberReputationNumberFlaggedWebhookEvent::Meta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:, meta:)
      end

      sig do
        override.returns(
          {
            data: Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data,
            meta: Telnyx::NumberReputationNumberFlaggedWebhookEvent::Meta
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Identifies the event; the same id is reused if the event is redelivered.
        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(
            Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data::EventType::TaggedSymbol
          )
        end
        attr_accessor :event_type

        sig { returns(Time) }
        attr_accessor :occurred_at

        sig do
          returns(
            Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data::Payload
          )
        end
        attr_reader :payload

        sig do
          params(
            payload:
              Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data::Payload::OrHash
          ).void
        end
        attr_writer :payload

        sig do
          returns(
            Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data::RecordType::TaggedSymbol
          )
        end
        attr_accessor :record_type

        sig do
          params(
            id: String,
            event_type:
              Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data::EventType::OrSymbol,
            occurred_at: Time,
            payload:
              Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data::Payload::OrHash,
            record_type:
              Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data::RecordType::OrSymbol
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
                Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data::EventType::TaggedSymbol,
              occurred_at: Time,
              payload:
                Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data::Payload,
              record_type:
                Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data::RecordType::TaggedSymbol
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
                Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data::EventType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NUMBER_REPUTATION_NUMBER_FLAGGED =
            T.let(
              :"number_reputation.number.flagged",
              Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data::EventType::TaggedSymbol
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
                Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data::Payload,
                Telnyx::Internal::AnyHash
              )
            end

          # Confirm ownership before this time or the number is removed (carrier change) or
          # flagged (re-verification).
          sig { returns(Time) }
          attr_accessor :confirm_by

          sig { returns(String) }
          attr_accessor :enterprise_id

          # `carrier_changed`: the number moved to a different carrier.
          # `reverification_due`: the periodic ownership re-verification is due.
          sig do
            returns(
              Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data::Payload::FlagReason::TaggedSymbol
            )
          end
          attr_accessor :flag_reason

          sig do
            returns(
              Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data::Payload::OwnershipStatus::TaggedSymbol
            )
          end
          attr_accessor :ownership_status

          sig { returns(String) }
          attr_accessor :phone_number

          sig do
            returns(
              Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data::Payload::RecordType::TaggedSymbol
            )
          end
          attr_accessor :record_type

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
              confirm_by: Time,
              enterprise_id: String,
              flag_reason:
                Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data::Payload::FlagReason::OrSymbol,
              ownership_status:
                Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data::Payload::OwnershipStatus::OrSymbol,
              phone_number: String,
              record_type:
                Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data::Payload::RecordType::OrSymbol,
              source:
                Telnyx::Enterprises::Reputation::ReputationNumberSource::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Confirm ownership before this time or the number is removed (carrier change) or
            # flagged (re-verification).
            confirm_by:,
            enterprise_id:,
            # `carrier_changed`: the number moved to a different carrier.
            # `reverification_due`: the periodic ownership re-verification is due.
            flag_reason:,
            ownership_status:,
            phone_number:,
            record_type:,
            # Where the phone number is hosted. `telnyx`: in your Telnyx inventory.
            # `external`: a number you own that is hosted with another provider.
            source:
          )
          end

          sig do
            override.returns(
              {
                confirm_by: Time,
                enterprise_id: String,
                flag_reason:
                  Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data::Payload::FlagReason::TaggedSymbol,
                ownership_status:
                  Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data::Payload::OwnershipStatus::TaggedSymbol,
                phone_number: String,
                record_type:
                  Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data::Payload::RecordType::TaggedSymbol,
                source:
                  Telnyx::Enterprises::Reputation::ReputationNumberSource::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          # `carrier_changed`: the number moved to a different carrier.
          # `reverification_due`: the periodic ownership re-verification is due.
          module FlagReason
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data::Payload::FlagReason
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CARRIER_CHANGED =
              T.let(
                :carrier_changed,
                Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data::Payload::FlagReason::TaggedSymbol
              )
            REVERIFICATION_DUE =
              T.let(
                :reverification_due,
                Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data::Payload::FlagReason::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data::Payload::FlagReason::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module OwnershipStatus
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data::Payload::OwnershipStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING_CONFIRMATION =
              T.let(
                :pending_confirmation,
                Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data::Payload::OwnershipStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data::Payload::OwnershipStatus::TaggedSymbol
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
                  Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data::Payload::RecordType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            REPUTATION_PHONE_NUMBER =
              T.let(
                :reputation_phone_number,
                Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data::Payload::RecordType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data::Payload::RecordType::TaggedSymbol
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
                Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EVENT =
            T.let(
              :event,
              Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::NumberReputationNumberFlaggedWebhookEvent::Data::RecordType::TaggedSymbol
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
              Telnyx::NumberReputationNumberFlaggedWebhookEvent::Meta,
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
