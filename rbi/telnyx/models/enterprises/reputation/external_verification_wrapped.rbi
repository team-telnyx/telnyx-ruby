# typed: strong

module Telnyx
  module Models
    module Enterprises
      module Reputation
        class ExternalVerificationWrapped < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Enterprises::Reputation::ExternalVerificationWrapped,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              Telnyx::Enterprises::Reputation::ReputationExternalVerification
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                Telnyx::Enterprises::Reputation::ReputationExternalVerification::OrHash
            ).void
          end
          attr_writer :data

          sig do
            params(
              data:
                Telnyx::Enterprises::Reputation::ReputationExternalVerification::OrHash
            ).returns(T.attached_class)
          end
          def self.new(data:)
          end

          sig do
            override.returns(
              {
                data:
                  Telnyx::Enterprises::Reputation::ReputationExternalVerification
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
