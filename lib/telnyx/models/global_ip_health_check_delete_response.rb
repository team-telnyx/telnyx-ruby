# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::GlobalIPHealthChecks#delete
    class GlobalIPHealthCheckDeleteResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::GlobalIPHealthCheckDeleteResponse::Data, nil]
      optional :data, -> { Telnyx::Models::GlobalIPHealthCheckDeleteResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::GlobalIPHealthCheckDeleteResponse::Data]

      # @see Telnyx::Models::GlobalIPHealthCheckDeleteResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute global_ip_id
        #   Global IP ID.
        #
        #   @return [String, nil]
        optional :global_ip_id, String

        # @!attribute health_check_params
        #   A Global IP health check params.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :health_check_params, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!attribute health_check_type
        #   The Global IP health check type.
        #
        #   @return [String, nil]
        optional :health_check_type, String

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
          #   Identifies the type of the resource.
          #
          #   @return [String, nil]
          optional :record_type, String

          # @!attribute updated_at
          #   ISO 8601 formatted date-time indicating when the resource was updated.
          #
          #   @return [String, nil]
          optional :updated_at, String
        end

        # @!method initialize(id: nil, created_at: nil, record_type: nil, updated_at: nil, global_ip_id: nil, health_check_params: nil, health_check_type: nil)
        #   @param id [String] Identifies the resource.
        #
        #   @param created_at [String] ISO 8601 formatted date-time indicating when the resource was created.
        #
        #   @param record_type [String] Identifies the type of the resource.
        #
        #   @param updated_at [String] ISO 8601 formatted date-time indicating when the resource was updated.
        #
        #   @param global_ip_id [String] Global IP ID.
        #
        #   @param health_check_params [Hash{Symbol=>Object}] A Global IP health check params.
        #
        #   @param health_check_type [String] The Global IP health check type.
      end
    end
  end
end
