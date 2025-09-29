# frozen_string_literal: true

module Telnyx
  module Models
    class RcsAgent < Telnyx::Internal::Type::BaseModel
      # @!attribute agent_id
      #   RCS Agent ID
      #
      #   @return [String, nil]
      optional :agent_id, String

      # @!attribute agent_name
      #   Human readable agent name
      #
      #   @return [String, nil]
      optional :agent_name, String

      # @!attribute created_at
      #   Date and time when the resource was created
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!attribute enabled
      #   Specifies whether the agent is enabled
      #
      #   @return [Boolean, nil]
      optional :enabled, Telnyx::Internal::Type::Boolean

      # @!attribute profile_id
      #   Messaging profile ID associated with the RCS Agent
      #
      #   @return [String, nil]
      optional :profile_id, String, nil?: true

      # @!attribute updated_at
      #   Date and time when the resource was updated
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!attribute user_id
      #   User ID associated with the RCS Agent
      #
      #   @return [String, nil]
      optional :user_id, String

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

      # @!method initialize(agent_id: nil, agent_name: nil, created_at: nil, enabled: nil, profile_id: nil, updated_at: nil, user_id: nil, webhook_failover_url: nil, webhook_url: nil)
      #   @param agent_id [String] RCS Agent ID
      #
      #   @param agent_name [String] Human readable agent name
      #
      #   @param created_at [Time] Date and time when the resource was created
      #
      #   @param enabled [Boolean] Specifies whether the agent is enabled
      #
      #   @param profile_id [String, nil] Messaging profile ID associated with the RCS Agent
      #
      #   @param updated_at [Time] Date and time when the resource was updated
      #
      #   @param user_id [String] User ID associated with the RCS Agent
      #
      #   @param webhook_failover_url [String, nil] Failover URL to receive RCS events
      #
      #   @param webhook_url [String, nil] URL to receive RCS events
    end
  end
end
