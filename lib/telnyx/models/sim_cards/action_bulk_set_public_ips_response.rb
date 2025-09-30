# frozen_string_literal: true

module Telnyx
  module Models
    module SimCards
      # @see Telnyx::Resources::SimCards::Actions#bulk_set_public_ips
      class ActionBulkSetPublicIPsResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #   This object represents a bulk SIM card action. It groups SIM card actions
        #   created through a bulk endpoint under a single resource for further lookup.
        #
        #   @return [Telnyx::Models::SimCards::ActionBulkSetPublicIPsResponse::Data, nil]
        optional :data, -> { Telnyx::Models::SimCards::ActionBulkSetPublicIPsResponse::Data }

        # @!method initialize(data: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::SimCards::ActionBulkSetPublicIPsResponse} for more details.
        #
        #   @param data [Telnyx::Models::SimCards::ActionBulkSetPublicIPsResponse::Data] This object represents a bulk SIM card action. It groups SIM card actions create

        # @see Telnyx::Models::SimCards::ActionBulkSetPublicIPsResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
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
            #   @return [Symbol, Telnyx::Models::SimCards::ActionBulkSetPublicIPsResponse::Data::ActionType, nil]
            optional :action_type,
                     enum: -> { Telnyx::Models::SimCards::ActionBulkSetPublicIPsResponse::Data::ActionType }

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

          # @!method initialize(id: nil, action_type: nil, created_at: nil, record_type: nil, settings: nil, updated_at: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::SimCards::ActionBulkSetPublicIPsResponse::Data} for more
          #   details.
          #
          #   This object represents a bulk SIM card action. It groups SIM card actions
          #   created through a bulk endpoint under a single resource for further lookup.
          #
          #   @param id [String] Identifies the resource.
          #
          #   @param action_type [Symbol, Telnyx::Models::SimCards::ActionBulkSetPublicIPsResponse::Data::ActionType] The operation type. It can be one of the following: <br/>
          #
          #   @param created_at [String] ISO 8601 formatted date-time indicating when the resource was created.
          #
          #   @param record_type [String]
          #
          #   @param settings [Hash{Symbol=>Object}] A JSON object representation of the bulk action payload.
          #
          #   @param updated_at [String] ISO 8601 formatted date-time indicating when the resource was updated.

          # The operation type. It can be one of the following: <br/>
          #
          # <ul>
          # <li><code>bulk_set_public_ips</code> - set a public IP for each specified SIM card.</li>
          # </ul>
          #
          # @see Telnyx::Models::SimCards::ActionBulkSetPublicIPsResponse::Data#action_type
          module ActionType
            extend Telnyx::Internal::Type::Enum

            BULK_SET_PUBLIC_IPS = :bulk_set_public_ips

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
