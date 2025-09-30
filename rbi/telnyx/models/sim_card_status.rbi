# typed: strong

module Telnyx
  module Models
    class SimCardStatus < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::SimCardStatus, Telnyx::Internal::AnyHash) }

      # It describes why the SIM card is in the current status.
      sig { returns(T.nilable(String)) }
      attr_reader :reason

      sig { params(reason: String).void }
      attr_writer :reason

      # The current status of the SIM card. It will be one of the following: <br/>
      #
      # <ul>
      #  <li><code>registering</code> - the card is being registered</li>
      #  <li><code>enabling</code> - the card is being enabled</li>
      #  <li><code>enabled</code> - the card is enabled and ready for use</li>
      #  <li><code>disabling</code> - the card is being disabled</li>
      #  <li><code>disabled</code> - the card has been disabled and cannot be used</li>
      #  <li><code>data_limit_exceeded</code> - the card has exceeded its data consumption limit</li>
      #  <li><code>setting_standby</code> - the process to set the card in stand by is in progress</li>
      #  <li><code>standby</code> - the card is in stand by</li>
      # </ul>
      # Transitioning between the enabled and disabled states may take a period of time.
      sig { returns(T.nilable(Telnyx::SimCardStatus::Value::OrSymbol)) }
      attr_reader :value

      sig { params(value: Telnyx::SimCardStatus::Value::OrSymbol).void }
      attr_writer :value

      sig do
        params(
          reason: String,
          value: Telnyx::SimCardStatus::Value::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # It describes why the SIM card is in the current status.
        reason: nil,
        # The current status of the SIM card. It will be one of the following: <br/>
        #
        # <ul>
        #  <li><code>registering</code> - the card is being registered</li>
        #  <li><code>enabling</code> - the card is being enabled</li>
        #  <li><code>enabled</code> - the card is enabled and ready for use</li>
        #  <li><code>disabling</code> - the card is being disabled</li>
        #  <li><code>disabled</code> - the card has been disabled and cannot be used</li>
        #  <li><code>data_limit_exceeded</code> - the card has exceeded its data consumption limit</li>
        #  <li><code>setting_standby</code> - the process to set the card in stand by is in progress</li>
        #  <li><code>standby</code> - the card is in stand by</li>
        # </ul>
        # Transitioning between the enabled and disabled states may take a period of time.
        value: nil
      )
      end

      sig do
        override.returns(
          { reason: String, value: Telnyx::SimCardStatus::Value::OrSymbol }
        )
      end
      def to_hash
      end

      # The current status of the SIM card. It will be one of the following: <br/>
      #
      # <ul>
      #  <li><code>registering</code> - the card is being registered</li>
      #  <li><code>enabling</code> - the card is being enabled</li>
      #  <li><code>enabled</code> - the card is enabled and ready for use</li>
      #  <li><code>disabling</code> - the card is being disabled</li>
      #  <li><code>disabled</code> - the card has been disabled and cannot be used</li>
      #  <li><code>data_limit_exceeded</code> - the card has exceeded its data consumption limit</li>
      #  <li><code>setting_standby</code> - the process to set the card in stand by is in progress</li>
      #  <li><code>standby</code> - the card is in stand by</li>
      # </ul>
      # Transitioning between the enabled and disabled states may take a period of time.
      module Value
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::SimCardStatus::Value) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REGISTERING =
          T.let(:registering, Telnyx::SimCardStatus::Value::TaggedSymbol)
        ENABLING = T.let(:enabling, Telnyx::SimCardStatus::Value::TaggedSymbol)
        ENABLED = T.let(:enabled, Telnyx::SimCardStatus::Value::TaggedSymbol)
        DISABLING =
          T.let(:disabling, Telnyx::SimCardStatus::Value::TaggedSymbol)
        DISABLED = T.let(:disabled, Telnyx::SimCardStatus::Value::TaggedSymbol)
        DATA_LIMIT_EXCEEDED =
          T.let(
            :data_limit_exceeded,
            Telnyx::SimCardStatus::Value::TaggedSymbol
          )
        SETTING_STANDBY =
          T.let(:setting_standby, Telnyx::SimCardStatus::Value::TaggedSymbol)
        STANDBY = T.let(:standby, Telnyx::SimCardStatus::Value::TaggedSymbol)

        sig do
          override.returns(T::Array[Telnyx::SimCardStatus::Value::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
