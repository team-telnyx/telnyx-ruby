# typed: strong

module Telnyx
  module Models
    class VerifyProfileListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::VerifyProfileListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Telnyx::VerifyProfile]) }
      attr_accessor :data

      sig { returns(Telnyx::Verifications::VerifyMeta) }
      attr_reader :meta

      sig { params(meta: Telnyx::Verifications::VerifyMeta::OrHash).void }
      attr_writer :meta

      # A paginated list of Verify profiles
      sig do
        params(
          data: T::Array[Telnyx::VerifyProfile::OrHash],
          meta: Telnyx::Verifications::VerifyMeta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:, meta:)
      end

      sig do
        override.returns(
          {
            data: T::Array[Telnyx::VerifyProfile],
            meta: Telnyx::Verifications::VerifyMeta
          }
        )
      end
      def to_hash
      end
    end
  end
end
