# frozen_string_literal: true

module Telnyx
  module Models
    module SimCards
      # @see Telnyx::Resources::SimCards::Actions#list
      class SimCardAction < Telnyx::Internal::Type::BaseModel
        # @!attribute status
        #
        #   @return [Telnyx::Models::SimCards::SimCardAction::Status, nil]
        optional :status, -> { Telnyx::SimCards::SimCardAction::Status }

        response_only do
          # @!attribute id
          #   Identifies the resource.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute action_type
          #   The operation type. It can be one of the following: <br/>
          #
          #   <ul>
          #    <li><code>enable</code> - move the SIM card to the <code>enabled</code> status</li>
          #    <li><code>enable_standby_sim_card</code> - move a SIM card previously on the <code>standby</code> status to the <code>enabled</code> status after it consumes data.</li>
          #    <li><code>disable</code> - move the SIM card to the <code>disabled</code> status</li>
          #    <li><code>set_standby</code> - move the SIM card to the <code>standby</code> status</li>
          #    </ul>
          #
          #   @return [Symbol, Telnyx::Models::SimCards::SimCardAction::ActionType, nil]
          optional :action_type, enum: -> { Telnyx::SimCards::SimCardAction::ActionType }

          # @!attribute created_at
          #   ISO 8601 formatted date-time indicating when the resource was created.
          #
          #   @return [String, nil]
          optional :created_at, String

          # @!attribute record_type
          #
          #   @return [String, nil]
          optional :record_type, String

          # @!attribute settings
          #   A JSON object representation of the action params.
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :settings, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown], nil?: true

          # @!attribute sim_card_id
          #   The related SIM card identifier.
          #
          #   @return [String, nil]
          optional :sim_card_id, String

          # @!attribute updated_at
          #   ISO 8601 formatted date-time indicating when the resource was updated.
          #
          #   @return [String, nil]
          optional :updated_at, String
        end

        # @!method initialize(id: nil, action_type: nil, created_at: nil, record_type: nil, settings: nil, sim_card_id: nil, status: nil, updated_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::SimCards::SimCardAction} for more details.
        #
        #   This object represents a SIM card action. It allows tracking the current status
        #   of an operation that impacts the SIM card.
        #
        #   @param id [String] Identifies the resource.
        #
        #   @param action_type [Symbol, Telnyx::Models::SimCards::SimCardAction::ActionType] The operation type. It can be one of the following: <br/>
        #
        #   @param created_at [String] ISO 8601 formatted date-time indicating when the resource was created.
        #
        #   @param record_type [String]
        #
        #   @param settings [Hash{Symbol=>Object}, nil] A JSON object representation of the action params.
        #
        #   @param sim_card_id [String] The related SIM card identifier.
        #
        #   @param status [Telnyx::Models::SimCards::SimCardAction::Status]
        #
        #   @param updated_at [String] ISO 8601 formatted date-time indicating when the resource was updated.

        # The operation type. It can be one of the following: <br/>
        #
        # <ul>
        #  <li><code>enable</code> - move the SIM card to the <code>enabled</code> status</li>
        #  <li><code>enable_standby_sim_card</code> - move a SIM card previously on the <code>standby</code> status to the <code>enabled</code> status after it consumes data.</li>
        #  <li><code>disable</code> - move the SIM card to the <code>disabled</code> status</li>
        #  <li><code>set_standby</code> - move the SIM card to the <code>standby</code> status</li>
        #  </ul>
        #
        # @see Telnyx::Models::SimCards::SimCardAction#action_type
        module ActionType
          extend Telnyx::Internal::Type::Enum

          ENABLE = :enable
          ENABLE_STANDBY_SIM_CARD = :enable_standby_sim_card
          DISABLE = :disable
          SET_STANDBY = :set_standby

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::SimCards::SimCardAction#status
        class Status < Telnyx::Internal::Type::BaseModel
          response_only do
            # @!attribute reason
            #   It describes why the SIM card action is in the current status. This will be
            #   <code>null</code> for self-explanatory statuses, such as
            #   <code>in-progress</code> and <code>completed</code> but will include further
            #   information on statuses like <code>interrupted</code> and <code>failed</code>.
            #
            #   @return [String, nil]
            optional :reason, String

            # @!attribute value
            #   The current status of the SIM card action.
            #
            #   @return [Symbol, Telnyx::Models::SimCards::SimCardAction::Status::Value, nil]
            optional :value, enum: -> { Telnyx::SimCards::SimCardAction::Status::Value }
          end

          # @!method initialize(reason: nil, value: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::SimCards::SimCardAction::Status} for more details.
          #
          #   @param reason [String] It describes why the SIM card action is in the current status. This will be <cod
          #
          #   @param value [Symbol, Telnyx::Models::SimCards::SimCardAction::Status::Value] The current status of the SIM card action.

          # The current status of the SIM card action.
          #
          # @see Telnyx::Models::SimCards::SimCardAction::Status#value
          module Value
            extend Telnyx::Internal::Type::Enum

            IN_PROGRESS = :"in-progress"
            COMPLETED = :completed
            FAILED = :failed
            INTERRUPTED = :interrupted

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end

    SimCardAction = SimCards::SimCardAction
  end
end
