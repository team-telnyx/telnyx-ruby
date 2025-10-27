# typed: strong

module Telnyx
  module Models
    module Verifications
      class ByPhoneNumberListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Verifications::ByPhoneNumberListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T::Array[Telnyx::Verification]) }
        attr_accessor :data

        sig { returns(Telnyx::Verifications::VerifyMeta) }
        attr_reader :meta

        sig { params(meta: Telnyx::Verifications::VerifyMeta::OrHash).void }
        attr_writer :meta

        sig do
          params(
            data: T::Array[Telnyx::Verification::OrHash],
            meta: Telnyx::Verifications::VerifyMeta::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:, meta:)
        end

        sig do
          override.returns(
            {
              data: T::Array[Telnyx::Verification],
              meta: Telnyx::Verifications::VerifyMeta
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
