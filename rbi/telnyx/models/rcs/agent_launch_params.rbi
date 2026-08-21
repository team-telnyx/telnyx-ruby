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

          sig { returns(T.attached_class) }
          def self.new
          end

          sig { override.returns({}) }
          def to_hash
          end
        end
      end
    end
  end
end
