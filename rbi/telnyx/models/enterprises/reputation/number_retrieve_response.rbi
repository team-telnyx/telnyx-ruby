# typed: strong

module Telnyx
  module Models
    module Enterprises
      module Reputation
        class NumberRetrieveResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Enterprises::Reputation::NumberRetrieveResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(T.nilable(Telnyx::ReputationPhoneNumberWithReputationData))
          end
          attr_reader :data

          sig do
            params(
              data: Telnyx::ReputationPhoneNumberWithReputationData::OrHash
            ).void
          end
          attr_writer :data

          sig do
            params(
              data: Telnyx::ReputationPhoneNumberWithReputationData::OrHash
            ).returns(T.attached_class)
          end
          def self.new(data: nil)
          end

          sig do
            override.returns(
              { data: Telnyx::ReputationPhoneNumberWithReputationData }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
