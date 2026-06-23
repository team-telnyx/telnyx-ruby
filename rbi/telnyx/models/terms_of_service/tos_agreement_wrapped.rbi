# typed: strong

module Telnyx
  module Models
    module TermsOfService
      class TosAgreementWrapped < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::TermsOfService::TosAgreementWrapped,
              Telnyx::Internal::AnyHash
            )
          end

        # A recorded user agreement to a product's Terms of Service. The `user_id` is
        # intentionally NOT echoed back on this public surface - the caller already knows
        # their own identity.
        sig { returns(Telnyx::TermsOfService::TosAgreement) }
        attr_reader :data

        sig { params(data: Telnyx::TermsOfService::TosAgreement::OrHash).void }
        attr_writer :data

        sig do
          params(data: Telnyx::TermsOfService::TosAgreement::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(
          # A recorded user agreement to a product's Terms of Service. The `user_id` is
          # intentionally NOT echoed back on this public surface - the caller already knows
          # their own identity.
          data:
        )
        end

        sig { override.returns({ data: Telnyx::TermsOfService::TosAgreement }) }
        def to_hash
        end
      end
    end
  end
end
