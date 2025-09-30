# typed: strong

module Telnyx
  module Models
    class SimCardDataUsageNotification < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::SimCardDataUsageNotification, Telnyx::Internal::AnyHash)
        end

      # The identification UUID of the related SIM card resource.
      sig { returns(T.nilable(String)) }
      attr_reader :sim_card_id

      sig { params(sim_card_id: String).void }
      attr_writer :sim_card_id

      # Data usage threshold that will trigger the notification.
      sig do
        returns(T.nilable(Telnyx::SimCardDataUsageNotification::Threshold))
      end
      attr_reader :threshold

      sig do
        params(
          threshold: Telnyx::SimCardDataUsageNotification::Threshold::OrHash
        ).void
      end
      attr_writer :threshold

      # Identifies the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # ISO 8601 formatted date-time indicating when the resource was created.
      sig { returns(T.nilable(String)) }
      attr_reader :created_at

      sig { params(created_at: String).void }
      attr_writer :created_at

      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      # ISO 8601 formatted date-time indicating when the resource was updated.
      sig { returns(T.nilable(String)) }
      attr_reader :updated_at

      sig { params(updated_at: String).void }
      attr_writer :updated_at

      # The SIM card individual data usage notification information.
      sig do
        params(
          id: String,
          created_at: String,
          record_type: String,
          sim_card_id: String,
          threshold: Telnyx::SimCardDataUsageNotification::Threshold::OrHash,
          updated_at: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifies the resource.
        id: nil,
        # ISO 8601 formatted date-time indicating when the resource was created.
        created_at: nil,
        record_type: nil,
        # The identification UUID of the related SIM card resource.
        sim_card_id: nil,
        # Data usage threshold that will trigger the notification.
        threshold: nil,
        # ISO 8601 formatted date-time indicating when the resource was updated.
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: String,
            record_type: String,
            sim_card_id: String,
            threshold: Telnyx::SimCardDataUsageNotification::Threshold,
            updated_at: String
          }
        )
      end
      def to_hash
      end

      class Threshold < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::SimCardDataUsageNotification::Threshold,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :amount

        sig { params(amount: String).void }
        attr_writer :amount

        sig do
          returns(
            T.nilable(
              Telnyx::SimCardDataUsageNotification::Threshold::Unit::TaggedSymbol
            )
          )
        end
        attr_reader :unit

        sig do
          params(
            unit:
              Telnyx::SimCardDataUsageNotification::Threshold::Unit::OrSymbol
          ).void
        end
        attr_writer :unit

        # Data usage threshold that will trigger the notification.
        sig do
          params(
            amount: String,
            unit:
              Telnyx::SimCardDataUsageNotification::Threshold::Unit::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(amount: nil, unit: nil)
        end

        sig do
          override.returns(
            {
              amount: String,
              unit:
                Telnyx::SimCardDataUsageNotification::Threshold::Unit::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module Unit
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::SimCardDataUsageNotification::Threshold::Unit
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MB =
            T.let(
              :MB,
              Telnyx::SimCardDataUsageNotification::Threshold::Unit::TaggedSymbol
            )
          GB =
            T.let(
              :GB,
              Telnyx::SimCardDataUsageNotification::Threshold::Unit::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::SimCardDataUsageNotification::Threshold::Unit::TaggedSymbol
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
