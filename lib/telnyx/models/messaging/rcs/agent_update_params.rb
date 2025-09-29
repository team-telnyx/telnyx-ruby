# frozen_string_literal: true

module Telnyx
  module Models
    module Messaging
      module Rcs
        # @see Telnyx::Resources::Messaging::Rcs::Agents#update
        class AgentUpdateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute profile_id
          #   Messaging profile ID associated with the RCS Agent
          #
          #   @return [String, nil]
          optional :profile_id, String, nil?: true

          # @!attribute webhook_failover_url
          #   Failover URL to receive RCS events
          #
          #   @return [String, nil]
          optional :webhook_failover_url, String, nil?: true

          # @!attribute webhook_url
          #   URL to receive RCS events
          #
          #   @return [String, nil]
          optional :webhook_url, String, nil?: true

          # @!method initialize(profile_id: nil, webhook_failover_url: nil, webhook_url: nil, request_options: {})
          #   @param profile_id [String, nil] Messaging profile ID associated with the RCS Agent
          #
          #   @param webhook_failover_url [String, nil] Failover URL to receive RCS events
          #
          #   @param webhook_url [String, nil] URL to receive RCS events
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
