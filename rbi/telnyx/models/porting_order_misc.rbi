# typed: strong

module Telnyx
  module Models
    class PortingOrderMisc < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::PortingOrderMisc, Telnyx::Internal::AnyHash)
        end

      # New billing phone number for the remaining numbers. Used in case the current
      # billing phone number is being ported to Telnyx. This will be set on your account
      # with your current service provider and should be one of the numbers remaining on
      # that account.
      sig { returns(T.nilable(String)) }
      attr_accessor :new_billing_phone_number

      # Remaining numbers can be either kept with their current service provider or
      # disconnected. 'new_billing_telephone_number' is required when
      # 'remaining_numbers_action' is 'keep'.
      sig do
        returns(
          T.nilable(Telnyx::PortingOrderMisc::RemainingNumbersAction::OrSymbol)
        )
      end
      attr_accessor :remaining_numbers_action

      # A port can be either 'full' or 'partial'. When type is 'full' the other
      # attributes should be omitted.
      sig { returns(T.nilable(Telnyx::PortingOrderType::OrSymbol)) }
      attr_reader :type

      sig { params(type: Telnyx::PortingOrderType::OrSymbol).void }
      attr_writer :type

      sig do
        params(
          new_billing_phone_number: T.nilable(String),
          remaining_numbers_action:
            T.nilable(
              Telnyx::PortingOrderMisc::RemainingNumbersAction::OrSymbol
            ),
          type: Telnyx::PortingOrderType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # New billing phone number for the remaining numbers. Used in case the current
        # billing phone number is being ported to Telnyx. This will be set on your account
        # with your current service provider and should be one of the numbers remaining on
        # that account.
        new_billing_phone_number: nil,
        # Remaining numbers can be either kept with their current service provider or
        # disconnected. 'new_billing_telephone_number' is required when
        # 'remaining_numbers_action' is 'keep'.
        remaining_numbers_action: nil,
        # A port can be either 'full' or 'partial'. When type is 'full' the other
        # attributes should be omitted.
        type: nil
      )
      end

      sig do
        override.returns(
          {
            new_billing_phone_number: T.nilable(String),
            remaining_numbers_action:
              T.nilable(
                Telnyx::PortingOrderMisc::RemainingNumbersAction::OrSymbol
              ),
            type: Telnyx::PortingOrderType::OrSymbol
          }
        )
      end
      def to_hash
      end

      # Remaining numbers can be either kept with their current service provider or
      # disconnected. 'new_billing_telephone_number' is required when
      # 'remaining_numbers_action' is 'keep'.
      module RemainingNumbersAction
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::PortingOrderMisc::RemainingNumbersAction)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        KEEP =
          T.let(
            :keep,
            Telnyx::PortingOrderMisc::RemainingNumbersAction::TaggedSymbol
          )
        DISCONNECT =
          T.let(
            :disconnect,
            Telnyx::PortingOrderMisc::RemainingNumbersAction::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::PortingOrderMisc::RemainingNumbersAction::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
