# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::BulkSimCardActions#retrieve
    class BulkSimCardActionRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::BulkSimCardActionRetrieveResponse::Data, nil]
      optional :data, -> { Telnyx::Models::BulkSimCardActionRetrieveResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::BulkSimCardActionRetrieveResponse::Data]

      # @see Telnyx::Models::BulkSimCardActionRetrieveResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute sim_card_actions_summary
        #
        #   @return [Array<Telnyx::Models::BulkSimCardActionRetrieveResponse::Data::SimCardActionsSummary>, nil]
        optional :sim_card_actions_summary,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::BulkSimCardActionRetrieveResponse::Data::SimCardActionsSummary] }

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
          #   <li><code>bulk_set_public_ips</code> - set a public IP for each specified SIM card.</li>
          #   </ul>
          #
          #   @return [Symbol, Telnyx::Models::BulkSimCardActionRetrieveResponse::Data::ActionType, nil]
          optional :action_type, enum: -> { Telnyx::Models::BulkSimCardActionRetrieveResponse::Data::ActionType }

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
          #   A JSON object representation of the bulk action payload.
          #
          #   @return [Hash{Symbol=>Object}, nil]
          optional :settings, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

          # @!attribute updated_at
          #   ISO 8601 formatted date-time indicating when the resource was updated.
          #
          #   @return [String, nil]
          optional :updated_at, String
        end

        # @!method initialize(id: nil, action_type: nil, created_at: nil, record_type: nil, settings: nil, sim_card_actions_summary: nil, updated_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::BulkSimCardActionRetrieveResponse::Data} for more details.
        #
        #   @param id [String] Identifies the resource.
        #
        #   @param action_type [Symbol, Telnyx::Models::BulkSimCardActionRetrieveResponse::Data::ActionType] The operation type. It can be one of the following: <br/>
        #
        #   @param created_at [String] ISO 8601 formatted date-time indicating when the resource was created.
        #
        #   @param record_type [String]
        #
        #   @param settings [Hash{Symbol=>Object}] A JSON object representation of the bulk action payload.
        #
        #   @param sim_card_actions_summary [Array<Telnyx::Models::BulkSimCardActionRetrieveResponse::Data::SimCardActionsSummary>]
        #
        #   @param updated_at [String] ISO 8601 formatted date-time indicating when the resource was updated.

        # The operation type. It can be one of the following: <br/>
        #
        # <ul>
        # <li><code>bulk_set_public_ips</code> - set a public IP for each specified SIM card.</li>
        # </ul>
        #
        # @see Telnyx::Models::BulkSimCardActionRetrieveResponse::Data#action_type
        module ActionType
          extend Telnyx::Internal::Type::Enum

          BULK_SET_PUBLIC_IPS = :bulk_set_public_ips

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class SimCardActionsSummary < Telnyx::Internal::Type::BaseModel
          # @!attribute count
          #
          #   @return [Integer, nil]
          optional :count, Integer

          # @!attribute status
          #
          #   @return [Symbol, Telnyx::Models::BulkSimCardActionRetrieveResponse::Data::SimCardActionsSummary::Status, nil]
          optional :status,
                   enum: -> { Telnyx::Models::BulkSimCardActionRetrieveResponse::Data::SimCardActionsSummary::Status }

          # @!method initialize(count: nil, status: nil)
          #   @param count [Integer]
          #   @param status [Symbol, Telnyx::Models::BulkSimCardActionRetrieveResponse::Data::SimCardActionsSummary::Status]

          # @see Telnyx::Models::BulkSimCardActionRetrieveResponse::Data::SimCardActionsSummary#status
          module Status
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
  end
end
