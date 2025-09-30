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
      class Data < Telnyx::Models::Record
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
          # @!attribute record_type
          #   Identifies the type of the resource.
          #
          #   @return [String, nil]
          optional :record_type, String
        end

        # @!method initialize(global_ip_id: nil, health_check_params: nil, health_check_type: nil, record_type: nil)
        #   @param global_ip_id [String] Global IP ID.
        #
        #   @param health_check_params [Hash{Symbol=>Object}] A Global IP health check params.
        #
        #   @param health_check_type [String] The Global IP health check type.
        #
        #   @param record_type [String] Identifies the type of the resource.
      end
    end
  end
end
