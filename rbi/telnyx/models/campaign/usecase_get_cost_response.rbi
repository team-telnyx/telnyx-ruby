# typed: strong

module Telnyx
  module Models
    module Campaign
      class UsecaseGetCostResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Campaign::UsecaseGetCostResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :campaign_usecase

        sig { returns(String) }
        attr_accessor :description

        sig { returns(String) }
        attr_accessor :monthly_cost

        sig { returns(String) }
        attr_accessor :up_front_cost

        sig do
          params(
            campaign_usecase: String,
            description: String,
            monthly_cost: String,
            up_front_cost: String
          ).returns(T.attached_class)
        end
        def self.new(
          campaign_usecase:,
          description:,
          monthly_cost:,
          up_front_cost:
        )
        end

        sig do
          override.returns(
            {
              campaign_usecase: String,
              description: String,
              monthly_cost: String,
              up_front_cost: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
