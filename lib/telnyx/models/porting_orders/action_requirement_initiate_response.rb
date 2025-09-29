# frozen_string_literal: true

module Telnyx
  module Models
    module PortingOrders
      # @see Telnyx::Resources::PortingOrders::ActionRequirements#initiate
      class ActionRequirementInitiateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::PortingOrders::ActionRequirementInitiateResponse::Data, nil]
        optional :data, -> { Telnyx::Models::PortingOrders::ActionRequirementInitiateResponse::Data }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::PortingOrders::ActionRequirementInitiateResponse::Data]

        # @see Telnyx::Models::PortingOrders::ActionRequirementInitiateResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   Identifies the action requirement
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute action_type
          #   The type of action required
          #
          #   @return [String, nil]
          optional :action_type, String

          # @!attribute action_url
          #   Optional URL for the action
          #
          #   @return [String, nil]
          optional :action_url, String, nil?: true

          # @!attribute cancel_reason
          #   Reason for cancellation if status is 'cancelled'
          #
          #   @return [String, nil]
          optional :cancel_reason, String, nil?: true

          # @!attribute created_at
          #   ISO 8601 formatted date-time indicating when the resource was created
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute porting_order_id
          #   The ID of the porting order this action requirement belongs to
          #
          #   @return [String, nil]
          optional :porting_order_id, String

          # @!attribute record_type
          #   Identifies the type of the resource
          #
          #   @return [Symbol, Telnyx::Models::PortingOrders::ActionRequirementInitiateResponse::Data::RecordType, nil]
          optional :record_type,
                   enum: -> { Telnyx::Models::PortingOrders::ActionRequirementInitiateResponse::Data::RecordType }

          # @!attribute requirement_type_id
          #   The ID of the requirement type
          #
          #   @return [String, nil]
          optional :requirement_type_id, String

          # @!attribute status
          #   Current status of the action requirement
          #
          #   @return [Symbol, Telnyx::Models::PortingOrders::ActionRequirementInitiateResponse::Data::Status, nil]
          optional :status,
                   enum: -> { Telnyx::Models::PortingOrders::ActionRequirementInitiateResponse::Data::Status }

          # @!attribute updated_at
          #   ISO 8601 formatted date-time indicating when the resource was updated
          #
          #   @return [Time, nil]
          optional :updated_at, Time

          # @!method initialize(id: nil, action_type: nil, action_url: nil, cancel_reason: nil, created_at: nil, porting_order_id: nil, record_type: nil, requirement_type_id: nil, status: nil, updated_at: nil)
          #   @param id [String] Identifies the action requirement
          #
          #   @param action_type [String] The type of action required
          #
          #   @param action_url [String, nil] Optional URL for the action
          #
          #   @param cancel_reason [String, nil] Reason for cancellation if status is 'cancelled'
          #
          #   @param created_at [Time] ISO 8601 formatted date-time indicating when the resource was created
          #
          #   @param porting_order_id [String] The ID of the porting order this action requirement belongs to
          #
          #   @param record_type [Symbol, Telnyx::Models::PortingOrders::ActionRequirementInitiateResponse::Data::RecordType] Identifies the type of the resource
          #
          #   @param requirement_type_id [String] The ID of the requirement type
          #
          #   @param status [Symbol, Telnyx::Models::PortingOrders::ActionRequirementInitiateResponse::Data::Status] Current status of the action requirement
          #
          #   @param updated_at [Time] ISO 8601 formatted date-time indicating when the resource was updated

          # Identifies the type of the resource
          #
          # @see Telnyx::Models::PortingOrders::ActionRequirementInitiateResponse::Data#record_type
          module RecordType
            extend Telnyx::Internal::Type::Enum

            PORTING_ACTION_REQUIREMENT = :porting_action_requirement

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Current status of the action requirement
          #
          # @see Telnyx::Models::PortingOrders::ActionRequirementInitiateResponse::Data#status
          module Status
            extend Telnyx::Internal::Type::Enum

            CREATED = :created
            PENDING = :pending
            COMPLETED = :completed
            CANCELLED = :cancelled
            FAILED = :failed

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
