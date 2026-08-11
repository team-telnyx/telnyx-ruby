# typed: strong

module Telnyx
  module Models
    module Rcs
      class AgentCampaignConfiguration < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Rcs::AgentCampaignConfiguration,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :company_overview

        sig { returns(T.nilable(String)) }
        attr_accessor :additional_information

        sig { returns(T.nilable(String)) }
        attr_accessor :agent_overview

        sig { returns(T.nilable(Telnyx::Rcs::AgentConsentConfiguration)) }
        attr_reader :consent_settings

        sig do
          params(
            consent_settings:
              T.nilable(Telnyx::Rcs::AgentConsentConfiguration::OrHash)
          ).void
        end
        attr_writer :consent_settings

        sig { returns(T.nilable(T::Array[Telnyx::Rcs::AgentInteraction])) }
        attr_reader :interactions

        sig do
          params(
            interactions: T::Array[Telnyx::Rcs::AgentInteraction::OrHash]
          ).void
        end
        attr_writer :interactions

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :message_examples

        sig { params(message_examples: T::Array[String]).void }
        attr_writer :message_examples

        sig do
          params(
            company_overview: String,
            additional_information: T.nilable(String),
            agent_overview: T.nilable(String),
            consent_settings:
              T.nilable(Telnyx::Rcs::AgentConsentConfiguration::OrHash),
            interactions: T::Array[Telnyx::Rcs::AgentInteraction::OrHash],
            message_examples: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          company_overview:,
          additional_information: nil,
          agent_overview: nil,
          consent_settings: nil,
          interactions: nil,
          message_examples: nil
        )
        end

        sig do
          override.returns(
            {
              company_overview: String,
              additional_information: T.nilable(String),
              agent_overview: T.nilable(String),
              consent_settings:
                T.nilable(Telnyx::Rcs::AgentConsentConfiguration),
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
