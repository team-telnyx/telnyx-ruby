# typed: strong

module Telnyx
  module Models
    module Rcs
      class AgentLaunchParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::Rcs::AgentLaunchParams, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Telnyx::Rcs::AgentLaunchParams::Campaign) }
        attr_reader :campaign

        sig do
          params(
            campaign: Telnyx::Rcs::AgentLaunchParams::Campaign::OrHash
          ).void
        end
        attr_writer :campaign

        sig { returns(Telnyx::Rcs::AgentTestingConfiguration) }
        attr_reader :testing

        sig do
          params(testing: Telnyx::Rcs::AgentTestingConfiguration::OrHash).void
        end
        attr_writer :testing

        sig do
          params(
            id: String,
            campaign: Telnyx::Rcs::AgentLaunchParams::Campaign::OrHash,
            testing: Telnyx::Rcs::AgentTestingConfiguration::OrHash,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(id:, campaign:, testing:, request_options: {})
        end

        sig do
          override.returns(
            {
              id: String,
              campaign: Telnyx::Rcs::AgentLaunchParams::Campaign,
              testing: Telnyx::Rcs::AgentTestingConfiguration,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Campaign < Telnyx::Models::Rcs::AgentCampaignConfiguration
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Rcs::AgentLaunchParams::Campaign,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :agent_overview

          sig { returns(Telnyx::Rcs::AgentConsentConfiguration) }
          attr_reader :consent_settings

          sig do
            params(
              consent_settings: Telnyx::Rcs::AgentConsentConfiguration::OrHash
            ).void
          end
          attr_writer :consent_settings

          sig { returns(T::Array[Telnyx::Rcs::AgentInteraction]) }
          attr_accessor :interactions

          sig { returns(T::Array[String]) }
          attr_accessor :message_examples

          sig do
            params(
              agent_overview: String,
              consent_settings: Telnyx::Rcs::AgentConsentConfiguration::OrHash,
              interactions: T::Array[Telnyx::Rcs::AgentInteraction::OrHash],
              message_examples: T::Array[String]
            ).returns(T.attached_class)
          end
          def self.new(
            agent_overview:,
            consent_settings:,
            interactions:,
            message_examples:
          )
          end

          sig do
            override.returns(
              {
                agent_overview: String,
                consent_settings: Telnyx::Rcs::AgentConsentConfiguration,
                interactions: T::Array[Telnyx::Rcs::AgentInteraction],
                message_examples: T::Array[String]
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
