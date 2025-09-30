# typed: strong

module Telnyx
  module Models
    class SimCardDataUsageNotificationCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::SimCardDataUsageNotificationCreateParams,
            Telnyx::Internal::AnyHash
          )
        end

      # The identification UUID of the related SIM card resource.
      sig { returns(String) }
      attr_accessor :sim_card_id

      # Data usage threshold that will trigger the notification.
      sig do
        returns(Telnyx::SimCardDataUsageNotificationCreateParams::Threshold)
      end
      attr_reader :threshold

      sig do
        params(
          threshold:
            Telnyx::SimCardDataUsageNotificationCreateParams::Threshold::OrHash
        ).void
      end
      attr_writer :threshold

      sig do
        params(
          sim_card_id: String,
          threshold:
            Telnyx::SimCardDataUsageNotificationCreateParams::Threshold::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The identification UUID of the related SIM card resource.
        sim_card_id:,
        # Data usage threshold that will trigger the notification.
        threshold:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            sim_card_id: String,
            threshold:
              Telnyx::SimCardDataUsageNotificationCreateParams::Threshold,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Threshold < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::SimCardDataUsageNotificationCreateParams::Threshold,
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
              Telnyx::SimCardDataUsageNotificationCreateParams::Threshold::Unit::OrSymbol
            )
          )
        end
        attr_reader :unit

        sig do
          params(
            unit:
              Telnyx::SimCardDataUsageNotificationCreateParams::Threshold::Unit::OrSymbol
          ).void
        end
        attr_writer :unit

        # Data usage threshold that will trigger the notification.
        sig do
          params(
            amount: String,
            unit:
              Telnyx::SimCardDataUsageNotificationCreateParams::Threshold::Unit::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(amount: nil, unit: nil)
        end

        sig do
          override.returns(
            {
              amount: String,
              unit:
                Telnyx::SimCardDataUsageNotificationCreateParams::Threshold::Unit::OrSymbol
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
                Telnyx::SimCardDataUsageNotificationCreateParams::Threshold::Unit
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MB =
            T.let(
              :MB,
              Telnyx::SimCardDataUsageNotificationCreateParams::Threshold::Unit::TaggedSymbol
            )
          GB =
            T.let(
              :GB,
              Telnyx::SimCardDataUsageNotificationCreateParams::Threshold::Unit::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::SimCardDataUsageNotificationCreateParams::Threshold::Unit::TaggedSymbol
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
