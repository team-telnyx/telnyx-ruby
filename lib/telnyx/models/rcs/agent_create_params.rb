# frozen_string_literal: true

module Telnyx
  module Models
    module Rcs
      # @see Telnyx::Resources::Rcs::Agents#create
      class AgentCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute brand_id
        #
        #   @return [String]
        required :brand_id, String

        # @!attribute configuration
        #
        #   @return [Telnyx::Models::Rcs::AgentConfiguration]
        required :configuration, -> { Telnyx::Rcs::AgentConfiguration }

        # @!attribute display_name
        #
        #   @return [String]
        required :display_name, String

        # @!attribute use_case
        #
        #   @return [Symbol, Telnyx::Models::Rcs::AgentUseCase]
        required :use_case, enum: -> { Telnyx::Rcs::AgentUseCase }

        # @!attribute idempotency_key
        #
        #   @return [String]
        required :idempotency_key, String

        # @!attribute hosting_region
        #
        #   @return [String, nil]
        optional :hosting_region, String, nil?: true

        # @!attribute profile_id
        #   A Messaging Profile owned by the authenticated organization. When omitted, the
        #   agent inherits the brand profile.
        #
        #   @return [String, nil]
        optional :profile_id, String, nil?: true

        # @!method initialize(brand_id:, configuration:, display_name:, use_case:, idempotency_key:, hosting_region: nil, profile_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Rcs::AgentCreateParams} for more details.
        #
        #   @param brand_id [String]
        #
        #   @param configuration [Telnyx::Models::Rcs::AgentConfiguration]
        #
        #   @param display_name [String]
        #
        #   @param use_case [Symbol, Telnyx::Models::Rcs::AgentUseCase]
        #
        #   @param idempotency_key [String]
        #
        #   @param hosting_region [String, nil]
        #
        #   @param profile_id [String, nil] A Messaging Profile owned by the authenticated organization. When omitted, the a
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
