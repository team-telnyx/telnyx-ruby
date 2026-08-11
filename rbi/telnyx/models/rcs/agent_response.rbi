# typed: strong

module Telnyx
  module Models
    module Rcs
      class AgentResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::Rcs::AgentResponse, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :agent_id

        sig do
          returns(T.nilable(Telnyx::Rcs::AgentSubmissionStatus::TaggedSymbol))
        end
        attr_accessor :basics_status

        sig do
          returns(
            T.nilable(Telnyx::Rcs::AgentResponse::BillingCategory::TaggedSymbol)
          )
        end
        attr_accessor :billing_category

        sig { returns(String) }
        attr_accessor :brand_id

        sig do
          returns(T.nilable(Telnyx::Rcs::AgentSubmissionStatus::TaggedSymbol))
        end
        attr_accessor :campaign_status

        sig { returns(Telnyx::Rcs::CapabilitiesResponse) }
        attr_reader :capabilities

        sig do
          params(capabilities: Telnyx::Rcs::CapabilitiesResponse::OrHash).void
        end
        attr_writer :capabilities

        sig { returns(T::Array[Telnyx::Rcs::CarrierApprovalResponse]) }
        attr_accessor :carrier_approvals

        sig { returns(Telnyx::Rcs::AgentConfiguration) }
        attr_reader :configuration

        sig do
          params(configuration: Telnyx::Rcs::AgentConfiguration::OrHash).void
        end
        attr_writer :configuration

        sig { returns(String) }
        attr_accessor :display_name

        sig { returns(T.nilable(String)) }
        attr_accessor :hosting_region

        sig { returns(T.nilable(String)) }
        attr_accessor :profile_id

        sig { returns(Telnyx::Rcs::AgentResponse::Status::TaggedSymbol) }
        attr_accessor :status

        sig { returns(T::Array[Telnyx::Rcs::Agents::TestDeviceResponse]) }
        attr_accessor :test_devices

        sig do
          returns(T.nilable(Telnyx::Rcs::AgentSubmissionStatus::TaggedSymbol))
        end
        attr_accessor :testing_status

        sig { returns(Telnyx::Rcs::AgentUseCase::TaggedSymbol) }
        attr_accessor :use_case

        sig do
          params(
            agent_id: String,
            basics_status:
              T.nilable(Telnyx::Rcs::AgentSubmissionStatus::OrSymbol),
            billing_category:
              T.nilable(Telnyx::Rcs::AgentResponse::BillingCategory::OrSymbol),
            brand_id: String,
            campaign_status:
              T.nilable(Telnyx::Rcs::AgentSubmissionStatus::OrSymbol),
            capabilities: Telnyx::Rcs::CapabilitiesResponse::OrHash,
            carrier_approvals:
              T::Array[Telnyx::Rcs::CarrierApprovalResponse::OrHash],
            configuration: Telnyx::Rcs::AgentConfiguration::OrHash,
            display_name: String,
            hosting_region: T.nilable(String),
            profile_id: T.nilable(String),
            status: Telnyx::Rcs::AgentResponse::Status::OrSymbol,
            test_devices:
              T::Array[Telnyx::Rcs::Agents::TestDeviceResponse::OrHash],
            testing_status:
              T.nilable(Telnyx::Rcs::AgentSubmissionStatus::OrSymbol),
            use_case: Telnyx::Rcs::AgentUseCase::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          agent_id:,
          basics_status:,
          billing_category:,
          brand_id:,
          campaign_status:,
          capabilities:,
          carrier_approvals:,
          configuration:,
          display_name:,
          hosting_region:,
          profile_id:,
          status:,
          test_devices:,
          testing_status:,
          use_case:
        )
        end

        sig do
          override.returns(
            {
              agent_id: String,
              basics_status:
                T.nilable(Telnyx::Rcs::AgentSubmissionStatus::TaggedSymbol),
              billing_category:
                T.nilable(
                  Telnyx::Rcs::AgentResponse::BillingCategory::TaggedSymbol
                ),
              brand_id: String,
              campaign_status:
                T.nilable(Telnyx::Rcs::AgentSubmissionStatus::TaggedSymbol),
              capabilities: Telnyx::Rcs::CapabilitiesResponse,
              carrier_approvals: T::Array[Telnyx::Rcs::CarrierApprovalResponse],
              configuration: Telnyx::Rcs::AgentConfiguration,
              display_name: String,
              hosting_region: T.nilable(String),
              profile_id: T.nilable(String),
              status: Telnyx::Rcs::AgentResponse::Status::TaggedSymbol,
              test_devices: T::Array[Telnyx::Rcs::Agents::TestDeviceResponse],
              testing_status:
                T.nilable(Telnyx::Rcs::AgentSubmissionStatus::TaggedSymbol),
              use_case: Telnyx::Rcs::AgentUseCase::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module BillingCategory
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Rcs::AgentResponse::BillingCategory)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NON_CONVERSATIONAL =
            T.let(
              :NON_CONVERSATIONAL,
              Telnyx::Rcs::AgentResponse::BillingCategory::TaggedSymbol
            )
          CONVERSATIONAL =
            T.let(
              :CONVERSATIONAL,
              Telnyx::Rcs::AgentResponse::BillingCategory::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Rcs::AgentResponse::BillingCategory::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Telnyx::Rcs::AgentResponse::Status) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATED =
            T.let(:CREATED, Telnyx::Rcs::AgentResponse::Status::TaggedSymbol)
          SUBMITTED =
            T.let(:SUBMITTED, Telnyx::Rcs::AgentResponse::Status::TaggedSymbol)
          VERIFYING =
            T.let(:VERIFYING, Telnyx::Rcs::AgentResponse::Status::TaggedSymbol)
          VERIFIED =
            T.let(:VERIFIED, Telnyx::Rcs::AgentResponse::Status::TaggedSymbol)
          LAUNCHING =
            T.let(:LAUNCHING, Telnyx::Rcs::AgentResponse::Status::TaggedSymbol)
          LAUNCHED =
            T.let(:LAUNCHED, Telnyx::Rcs::AgentResponse::Status::TaggedSymbol)
          LIVE = T.let(:LIVE, Telnyx::Rcs::AgentResponse::Status::TaggedSymbol)
          REJECTED =
            T.let(:REJECTED, Telnyx::Rcs::AgentResponse::Status::TaggedSymbol)
          FAILED =
            T.let(:FAILED, Telnyx::Rcs::AgentResponse::Status::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::Rcs::AgentResponse::Status::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
