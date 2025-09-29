# frozen_string_literal: true

module Telnyx
  module Models
    class SimCardStatus < Telnyx::Internal::Type::BaseModel
      response_only do
        # @!attribute reason
        #   It describes why the SIM card is in the current status.
        #
        #   @return [String, nil]
        optional :reason, String

        # @!attribute value
        #   The current status of the SIM card. It will be one of the following: <br/>
        #
        #   <ul>
        #    <li><code>registering</code> - the card is being registered</li>
        #    <li><code>enabling</code> - the card is being enabled</li>
        #    <li><code>enabled</code> - the card is enabled and ready for use</li>
        #    <li><code>disabling</code> - the card is being disabled</li>
        #    <li><code>disabled</code> - the card has been disabled and cannot be used</li>
        #    <li><code>data_limit_exceeded</code> - the card has exceeded its data consumption limit</li>
        #    <li><code>setting_standby</code> - the process to set the card in stand by is in progress</li>
        #    <li><code>standby</code> - the card is in stand by</li>
        #   </ul>
        #   Transitioning between the enabled and disabled states may take a period of time.
        #
        #   @return [Symbol, Telnyx::Models::SimCardStatus::Value, nil]
        optional :value, enum: -> { Telnyx::SimCardStatus::Value }
      end

      # @!method initialize(reason: nil, value: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::SimCardStatus} for more details.
      #
      #   @param reason [String] It describes why the SIM card is in the current status.
      #
      #   @param value [Symbol, Telnyx::Models::SimCardStatus::Value] The current status of the SIM card. It will be one of the following: <br/>

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
      #
      # @see Telnyx::Models::SimCardStatus#value
      module Value
        extend Telnyx::Internal::Type::Enum

        REGISTERING = :registering
        ENABLING = :enabling
        ENABLED = :enabled
        DISABLING = :disabling
        DISABLED = :disabled
        DATA_LIMIT_EXCEEDED = :data_limit_exceeded
        SETTING_STANDBY = :setting_standby
        STANDBY = :standby

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
