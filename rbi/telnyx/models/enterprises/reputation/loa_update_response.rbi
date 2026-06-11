# typed: strong

module Telnyx
  module Models
    module Enterprises
      module Reputation
        class LoaUpdateResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Enterprises::Reputation::LoaUpdateResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(Telnyx::Enterprises::EnterpriseReputationPublic) }
          attr_reader :data

          sig do
            params(
              data: Telnyx::Enterprises::EnterpriseReputationPublic::OrHash
            ).void
          end
          attr_writer :data

          sig do
            params(
              data: Telnyx::Enterprises::EnterpriseReputationPublic::OrHash
            ).returns(T.attached_class)
          end
          def self.new(data:)
          end

          sig do
            override.returns(
              { data: Telnyx::Enterprises::EnterpriseReputationPublic }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
