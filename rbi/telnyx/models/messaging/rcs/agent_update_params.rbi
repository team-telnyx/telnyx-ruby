# typed: strong

module Telnyx
  module Models
    module Messaging
      module Rcs
        class AgentUpdateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Messaging::Rcs::AgentUpdateParams,
                Telnyx::Internal::AnyHash
              )
            end

          # Messaging profile ID associated with the RCS Agent
          sig { returns(T.nilable(String)) }
          attr_accessor :profile_id

          # Failover URL to receive RCS events
          sig { returns(T.nilable(String)) }
          attr_accessor :webhook_failover_url

          # URL to receive RCS events
          sig { returns(T.nilable(String)) }
          attr_accessor :webhook_url

          sig do
            params(
              profile_id: T.nilable(String),
              webhook_failover_url: T.nilable(String),
              webhook_url: T.nilable(String),
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Messaging profile ID associated with the RCS Agent
            profile_id: nil,
            # Failover URL to receive RCS events
            webhook_failover_url: nil,
            # URL to receive RCS events
            webhook_url: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                profile_id: T.nilable(String),
                webhook_failover_url: T.nilable(String),
                webhook_url: T.nilable(String),
                request_options: Telnyx::RequestOptions
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
