# frozen_string_literal: true

module Telnyx
  module Models
    class PortingOrdersActivationJob < Telnyx::Internal::Type::BaseModel
      # @!attribute activate_at
      #   ISO 8601 formatted date indicating when the activation job should be executed.
      #   This time should be between some activation window.
      #
      #   @return [Time, nil]
      optional :activate_at, Time

      # @!attribute activation_type
      #   Specifies the type of this activation job
      #
      #   @return [Symbol, Telnyx::Models::PortingOrdersActivationJob::ActivationType, nil]
      optional :activation_type, enum: -> { Telnyx::PortingOrdersActivationJob::ActivationType }

      # @!attribute activation_windows
      #   List of allowed activation windows for this activation job
      #
      #   @return [Array<Telnyx::Models::PortingOrdersActivationJob::ActivationWindow>, nil]
      optional :activation_windows,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::PortingOrdersActivationJob::ActivationWindow] }

      # @!attribute status
      #   Specifies the status of this activation job
      #
      #   @return [Symbol, Telnyx::Models::PortingOrdersActivationJob::Status, nil]
      optional :status, enum: -> { Telnyx::PortingOrdersActivationJob::Status }

      response_only do
        # @!attribute id
        #   Uniquely identifies this activation job
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute created_at
        #   ISO 8601 formatted date indicating when the resource was created.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute updated_at
        #   ISO 8601 formatted date indicating when the resource was created.
        #
        #   @return [Time, nil]
        optional :updated_at, Time
      end

      # @!method initialize(id: nil, activate_at: nil, activation_type: nil, activation_windows: nil, created_at: nil, record_type: nil, status: nil, updated_at: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::PortingOrdersActivationJob} for more details.
      #
      #   @param id [String] Uniquely identifies this activation job
      #
      #   @param activate_at [Time] ISO 8601 formatted date indicating when the activation job should be executed. T
      #
      #   @param activation_type [Symbol, Telnyx::Models::PortingOrdersActivationJob::ActivationType] Specifies the type of this activation job
      #
      #   @param activation_windows [Array<Telnyx::Models::PortingOrdersActivationJob::ActivationWindow>] List of allowed activation windows for this activation job
      #
      #   @param created_at [Time] ISO 8601 formatted date indicating when the resource was created.
      #
      #   @param record_type [String] Identifies the type of the resource.
      #
      #   @param status [Symbol, Telnyx::Models::PortingOrdersActivationJob::Status] Specifies the status of this activation job
      #
      #   @param updated_at [Time] ISO 8601 formatted date indicating when the resource was created.

      # Specifies the type of this activation job
      #
      # @see Telnyx::Models::PortingOrdersActivationJob#activation_type
      module ActivationType
        extend Telnyx::Internal::Type::Enum

        SCHEDULED = :scheduled
        ON_DEMAND = :"on-demand"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class ActivationWindow < Telnyx::Internal::Type::BaseModel
        # @!attribute end_at
        #   ISO 8601 formatted date indicating when the activation window ends
        #
        #   @return [Time, nil]
        optional :end_at, Time

        # @!attribute start_at
        #   ISO 8601 formatted date indicating when the activation window starts
        #
        #   @return [Time, nil]
        optional :start_at, Time

        # @!method initialize(end_at: nil, start_at: nil)
        #   @param end_at [Time] ISO 8601 formatted date indicating when the activation window ends
        #
        #   @param start_at [Time] ISO 8601 formatted date indicating when the activation window starts
      end

      # Specifies the status of this activation job
      #
      # @see Telnyx::Models::PortingOrdersActivationJob#status
      module Status
        extend Telnyx::Internal::Type::Enum

        CREATED = :created
        IN_PROCESS = :"in-process"
        COMPLETED = :completed
        FAILED = :failed

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
