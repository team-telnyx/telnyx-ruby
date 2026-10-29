# typed: strong

module Telnyx
  module Models
    EnterpriseEmailVerificationStatusWrapped =
      Enterprises::EnterpriseEmailVerificationStatusWrapped

    module Enterprises
      class EnterpriseEmailVerificationStatusWrapped < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Enterprises::EnterpriseEmailVerificationStatusWrapped,
              Telnyx::Internal::AnyHash
            )
          end

        # Verification state for an enterprise account's contact email.
        sig { returns(Telnyx::Enterprises::EnterpriseEmailVerificationStatus) }
        attr_reader :data

        sig do
          params(
            data: Telnyx::Enterprises::EnterpriseEmailVerificationStatus::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data: Telnyx::Enterprises::EnterpriseEmailVerificationStatus::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Verification state for an enterprise account's contact email.
          data:
        )
        end

        sig do
          override.returns(
            { data: Telnyx::Enterprises::EnterpriseEmailVerificationStatus }
          )
        end
        def to_hash
        end
      end
    end
  end
end
