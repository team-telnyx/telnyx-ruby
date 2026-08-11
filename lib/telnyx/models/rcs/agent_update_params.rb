# frozen_string_literal: true

module Telnyx
  module Models
    module Rcs
      # @see Telnyx::Resources::Rcs::Agents#update
      class AgentUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute configuration
        #
        #   @return [Telnyx::Models::Rcs::AgentConfiguration, nil]
        optional :configuration, -> { Telnyx::Rcs::AgentConfiguration }

        # @!attribute display_name
        #
        #   @return [String, nil]
        optional :display_name, String

        # @!attribute hosting_region
        #
        #   @return [String, nil]
        optional :hosting_region, String

        # @!attribute profile_id
        #
        #   @return [String, nil]
        optional :profile_id, String

        # @!attribute use_case
        #
        #   @return [Symbol, Telnyx::Models::Rcs::AgentUseCase, nil]
        optional :use_case, enum: -> { Telnyx::Rcs::AgentUseCase }

        # @!method initialize(id:, configuration: nil, display_name: nil, hosting_region: nil, profile_id: nil, use_case: nil, request_options: {})
        #   @param id [String]
        #   @param configuration [Telnyx::Models::Rcs::AgentConfiguration]
        #   @param display_name [String]
        #   @param hosting_region [String]
        #   @param profile_id [String]
        #   @param use_case [Symbol, Telnyx::Models::Rcs::AgentUseCase]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
