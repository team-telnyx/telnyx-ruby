# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::GlobalIPHealthChecks#create
    class GlobalIPHealthCheckCreateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::GlobalIPHealthCheckCreateResponse::Data, nil]
      optional :data, -> { Telnyx::Models::GlobalIPHealthCheckCreateResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::GlobalIPHealthCheckCreateResponse::Data]

      # @see Telnyx::Models::GlobalIPHealthCheckCreateResponse#data
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

        # @!method initialize(global_ip_id: nil, health_check_params: nil, health_check_type: nil)
        #   @param global_ip_id [String] Global IP ID.
        #
        #   @param health_check_params [Hash{Symbol=>Object}] A Global IP health check params.
        #
        #   @param health_check_type [String] The Global IP health check type.
      end
    end
  end
end
