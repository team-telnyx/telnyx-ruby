# typed: strong

module Telnyx
  module Models
    module Enterprises
      class ReputationListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Enterprises::ReputationListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(T.nilable(Telnyx::Enterprises::EnterpriseReputationPublic))
        end
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
        def self.new(data: nil)
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
