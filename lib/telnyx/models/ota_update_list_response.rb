# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::OtaUpdates#list
    class OtaUpdateListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::OtaUpdateListResponse::Data>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::OtaUpdateListResponse::Data] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::OtaUpdateListResponse::Data>]
      #   @param meta [Telnyx::Models::PaginationMeta]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute sim_card_id
        #   The identification UUID of the related SIM card resource.
        #
        #   @return [String, nil]
        optional :sim_card_id, String

        # @!attribute status
        #
        #   @return [Symbol, Telnyx::Models::OtaUpdateListResponse::Data::Status, nil]
        optional :status, enum: -> { Telnyx::Models::OtaUpdateListResponse::Data::Status }

        # @!attribute type
        #   Represents the type of the operation requested. This will relate directly to the
        #   source of the request.
        #
        #   @return [Symbol, Telnyx::Models::OtaUpdateListResponse::Data::Type, nil]
        optional :type, enum: -> { Telnyx::Models::OtaUpdateListResponse::Data::Type }

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

        # @!method initialize(id: nil, created_at: nil, record_type: nil, sim_card_id: nil, status: nil, type: nil, updated_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::OtaUpdateListResponse::Data} for more details.
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
        #   @param sim_card_id [String] The identification UUID of the related SIM card resource.
        #
        #   @param status [Symbol, Telnyx::Models::OtaUpdateListResponse::Data::Status]
        #
        #   @param type [Symbol, Telnyx::Models::OtaUpdateListResponse::Data::Type] Represents the type of the operation requested. This will relate directly to the
        #
        #   @param updated_at [String] ISO 8601 formatted date-time indicating when the resource was updated.

        # @see Telnyx::Models::OtaUpdateListResponse::Data#status
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
        # @see Telnyx::Models::OtaUpdateListResponse::Data#type
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
