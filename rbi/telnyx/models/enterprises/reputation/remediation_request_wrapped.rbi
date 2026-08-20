# typed: strong

module Telnyx
  module Models
    module Enterprises
      module Reputation
        class RemediationRequestWrapped < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Enterprises::Reputation::RemediationRequestWrapped,
                Telnyx::Internal::AnyHash
              )
            end

          # Full detail of a remediation request, returned on submit and GET by id.
          sig { returns(Telnyx::Enterprises::Reputation::RemediationRequest) }
          attr_reader :data

          sig do
            params(
              data: Telnyx::Enterprises::Reputation::RemediationRequest::OrHash
            ).void
          end
          attr_writer :data

          sig do
            params(
              data: Telnyx::Enterprises::Reputation::RemediationRequest::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Full detail of a remediation request, returned on submit and GET by id.
            data:
          )
          end

          sig do
            override.returns(
              { data: Telnyx::Enterprises::Reputation::RemediationRequest }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
