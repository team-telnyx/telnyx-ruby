# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::OtaUpdates#retrieve
    class OtaUpdateRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #   This object represents an Over the Air (OTA) update request. It allows tracking
      #   the current status of a operation that apply settings in a particular SIM card.
      #   <br/><br/>
      #
      #   @return [Telnyx::Models::OtaUpdateRetrieveResponse::Data, nil]
      optional :data, -> { Telnyx::Models::OtaUpdateRetrieveResponse::Data }

      # @!method initialize(data: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::OtaUpdateRetrieveResponse} for more details.
      #
      #   @param data [Telnyx::Models::OtaUpdateRetrieveResponse::Data] This object represents an Over the Air (OTA) update request. It allows tracking

      # @see Telnyx::Models::OtaUpdateRetrieveResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute settings
        #   A JSON object representation of the operation. The information present here will
        #   relate directly to the source of the OTA request.
        #
        #   @return [Telnyx::Models::OtaUpdateRetrieveResponse::Data::Settings, nil]
        optional :settings, -> { Telnyx::Models::OtaUpdateRetrieveResponse::Data::Settings }

        # @!attribute sim_card_id
        #   The identification UUID of the related SIM card resource.
        #
        #   @return [String, nil]
        optional :sim_card_id, String

        # @!attribute status
        #
        #   @return [Symbol, Telnyx::Models::OtaUpdateRetrieveResponse::Data::Status, nil]
        optional :status, enum: -> { Telnyx::Models::OtaUpdateRetrieveResponse::Data::Status }

        # @!attribute type
        #   Represents the type of the operation requested. This will relate directly to the
        #   source of the request.
        #
        #   @return [Symbol, Telnyx::Models::OtaUpdateRetrieveResponse::Data::Type, nil]
        optional :type, enum: -> { Telnyx::Models::OtaUpdateRetrieveResponse::Data::Type }

        response_only do
          # @!attribute id
          #   Identifies the resource.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute created_at
          #   ISO 8601 formatted date-time indicating when the resource was created.
          #
          #   @return [String, nil]
          optional :created_at, String

          # @!attribute record_type
          #
          #   @return [String, nil]
          optional :record_type, String

          # @!attribute updated_at
          #   ISO 8601 formatted date-time indicating when the resource was updated.
          #
          #   @return [String, nil]
          optional :updated_at, String
        end

        # @!method initialize(id: nil, created_at: nil, record_type: nil, settings: nil, sim_card_id: nil, status: nil, type: nil, updated_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::OtaUpdateRetrieveResponse::Data} for more details.
        #
        #   This object represents an Over the Air (OTA) update request. It allows tracking
        #   the current status of a operation that apply settings in a particular SIM card.
        #   <br/><br/>
        #
        #   @param id [String] Identifies the resource.
        #
        #   @param created_at [String] ISO 8601 formatted date-time indicating when the resource was created.
        #
        #   @param record_type [String]
        #
        #   @param settings [Telnyx::Models::OtaUpdateRetrieveResponse::Data::Settings] A JSON object representation of the operation. The information present here will
        #
        #   @param sim_card_id [String] The identification UUID of the related SIM card resource.
        #
        #   @param status [Symbol, Telnyx::Models::OtaUpdateRetrieveResponse::Data::Status]
        #
        #   @param type [Symbol, Telnyx::Models::OtaUpdateRetrieveResponse::Data::Type] Represents the type of the operation requested. This will relate directly to the
        #
        #   @param updated_at [String] ISO 8601 formatted date-time indicating when the resource was updated.

        # @see Telnyx::Models::OtaUpdateRetrieveResponse::Data#settings
        class Settings < Telnyx::Internal::Type::BaseModel
          # @!attribute mobile_network_operators_preferences
          #   A list of mobile network operators and the priority that should be applied when
          #   the SIM is connecting to the network.
          #
          #   @return [Array<Telnyx::Models::OtaUpdateRetrieveResponse::Data::Settings::MobileNetworkOperatorsPreference>, nil]
          optional :mobile_network_operators_preferences,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::OtaUpdateRetrieveResponse::Data::Settings::MobileNetworkOperatorsPreference] }

          # @!method initialize(mobile_network_operators_preferences: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::OtaUpdateRetrieveResponse::Data::Settings} for more details.
          #
          #   A JSON object representation of the operation. The information present here will
          #   relate directly to the source of the OTA request.
          #
          #   @param mobile_network_operators_preferences [Array<Telnyx::Models::OtaUpdateRetrieveResponse::Data::Settings::MobileNetworkOperatorsPreference>] A list of mobile network operators and the priority that should be applied when

          class MobileNetworkOperatorsPreference < Telnyx::Internal::Type::BaseModel
            # @!attribute mobile_network_operator_id
            #   The mobile network operator resource identification UUID.
            #
            #   @return [String, nil]
            optional :mobile_network_operator_id, String

            # @!attribute mobile_network_operator_name
            #   The mobile network operator resource name.
            #
            #   @return [String, nil]
            optional :mobile_network_operator_name, String

            # @!attribute priority
            #   It determines what is the priority of a specific network operator that should be
            #   assumed by a SIM card when connecting to a network. The highest priority is 0,
            #   the second highest is 1 and so on.
            #
            #   @return [Integer, nil]
            optional :priority, Integer

            # @!method initialize(mobile_network_operator_id: nil, mobile_network_operator_name: nil, priority: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::OtaUpdateRetrieveResponse::Data::Settings::MobileNetworkOperatorsPreference}
            #   for more details.
            #
            #   @param mobile_network_operator_id [String] The mobile network operator resource identification UUID.
            #
            #   @param mobile_network_operator_name [String] The mobile network operator resource name.
            #
            #   @param priority [Integer] It determines what is the priority of a specific network operator that should be
          end
        end

        # @see Telnyx::Models::OtaUpdateRetrieveResponse::Data#status
        module Status
          extend Telnyx::Internal::Type::Enum

          IN_PROGRESS = :"in-progress"
          COMPLETED = :completed
          FAILED = :failed

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Represents the type of the operation requested. This will relate directly to the
        # source of the request.
        #
        # @see Telnyx::Models::OtaUpdateRetrieveResponse::Data#type
        module Type
          extend Telnyx::Internal::Type::Enum

          SIM_CARD_NETWORK_PREFERENCES = :sim_card_network_preferences

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
