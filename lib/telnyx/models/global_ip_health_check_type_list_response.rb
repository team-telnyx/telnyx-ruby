# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::GlobalIPHealthCheckTypes#list
    class GlobalIPHealthCheckTypeListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::GlobalIPHealthCheckTypeListResponse::Data>, nil]
      optional :data,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::GlobalIPHealthCheckTypeListResponse::Data] }

      # @!method initialize(data: nil)
      #   @param data [Array<Telnyx::Models::GlobalIPHealthCheckTypeListResponse::Data>]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute health_check_params
        #   Global IP Health check params.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :health_check_params, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!attribute health_check_type
        #   Global IP Health check type.
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

        # @!method initialize(health_check_params: nil, health_check_type: nil, record_type: nil)
        #   @param health_check_params [Hash{Symbol=>Object}] Global IP Health check params.
        #
        #   @param health_check_type [String] Global IP Health check type.
        #
        #   @param record_type [String] Identifies the type of the resource.
      end
    end
  end
end
