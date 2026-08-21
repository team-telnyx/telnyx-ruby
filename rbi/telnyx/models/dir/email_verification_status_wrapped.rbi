# typed: strong

module Telnyx
  module Models
    module Dir
      class EmailVerificationStatusWrapped < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Dir::EmailVerificationStatusWrapped,
              Telnyx::Internal::AnyHash
            )
          end

        # Verification state for a DIR's authorizer email.
        sig { returns(Telnyx::Dir::EmailVerificationStatus) }
        attr_reader :data

        sig { params(data: Telnyx::Dir::EmailVerificationStatus::OrHash).void }
        attr_writer :data

        sig do
          params(data: Telnyx::Dir::EmailVerificationStatus::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(
          # Verification state for a DIR's authorizer email.
          data:
        )
        end

        sig { override.returns({ data: Telnyx::Dir::EmailVerificationStatus }) }
        def to_hash
        end
      end
    end
  end
end
