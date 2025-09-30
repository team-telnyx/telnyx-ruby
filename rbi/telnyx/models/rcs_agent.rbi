# typed: strong

module Telnyx
  module Models
    class RcsAgent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::RcsAgent, Telnyx::Internal::AnyHash) }

      # RCS Agent ID
      sig { returns(T.nilable(String)) }
      attr_reader :agent_id

      sig { params(agent_id: String).void }
      attr_writer :agent_id

      # Human readable agent name
      sig { returns(T.nilable(String)) }
      attr_reader :agent_name

      sig { params(agent_name: String).void }
      attr_writer :agent_name

      # Date and time when the resource was created
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # Specifies whether the agent is enabled
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :enabled

      sig { params(enabled: T::Boolean).void }
      attr_writer :enabled

      # Messaging profile ID associated with the RCS Agent
      sig { returns(T.nilable(String)) }
      attr_accessor :profile_id

      # Date and time when the resource was updated
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      # User ID associated with the RCS Agent
      sig { returns(T.nilable(String)) }
      attr_reader :user_id

      sig { params(user_id: String).void }
      attr_writer :user_id

      # Failover URL to receive RCS events
      sig { returns(T.nilable(String)) }
      attr_accessor :webhook_failover_url

      # URL to receive RCS events
      sig { returns(T.nilable(String)) }
      attr_accessor :webhook_url

      sig do
        params(
          agent_id: String,
          agent_name: String,
          created_at: Time,
          enabled: T::Boolean,
          profile_id: T.nilable(String),
          updated_at: Time,
          user_id: String,
          webhook_failover_url: T.nilable(String),
          webhook_url: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # RCS Agent ID
        agent_id: nil,
        # Human readable agent name
        agent_name: nil,
        # Date and time when the resource was created
        created_at: nil,
        # Specifies whether the agent is enabled
        enabled: nil,
        # Messaging profile ID associated with the RCS Agent
        profile_id: nil,
        # Date and time when the resource was updated
        updated_at: nil,
        # User ID associated with the RCS Agent
        user_id: nil,
        # Failover URL to receive RCS events
        webhook_failover_url: nil,
        # URL to receive RCS events
        webhook_url: nil
      )
      end

      sig do
        override.returns(
          {
            agent_id: String,
            agent_name: String,
            created_at: Time,
            enabled: T::Boolean,
            profile_id: T.nilable(String),
            updated_at: Time,
            user_id: String,
            webhook_failover_url: T.nilable(String),
            webhook_url: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
