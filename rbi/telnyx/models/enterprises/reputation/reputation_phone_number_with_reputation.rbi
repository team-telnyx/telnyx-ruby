# typed: strong

module Telnyx
  module Models
    module Enterprises
      ReputationPhoneNumberWithReputation =
        Reputation::ReputationPhoneNumberWithReputation

      module Reputation
        class ReputationPhoneNumberWithReputation < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Enterprises::Reputation::ReputationPhoneNumberWithReputation,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(Telnyx::Enterprises::Reputation::ReputationPhoneNumber)
          end
          attr_reader :data

          sig do
            params(
              data:
                Telnyx::Enterprises::Reputation::ReputationPhoneNumber::OrHash
            ).void
          end
          attr_writer :data

          sig do
            params(
              data:
                Telnyx::Enterprises::Reputation::ReputationPhoneNumber::OrHash
            ).returns(T.attached_class)
          end
          def self.new(data:)
          end

          sig do
            override.returns(
              { data: Telnyx::Enterprises::Reputation::ReputationPhoneNumber }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
