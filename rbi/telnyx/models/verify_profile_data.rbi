# typed: strong

module Telnyx
  module Models
    class VerifyProfileData < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::VerifyProfileData, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::VerifyProfile)) }
      attr_reader :data

      sig { params(data: Telnyx::VerifyProfile::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::VerifyProfile::OrHash).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::VerifyProfile }) }
      def to_hash
      end
    end
  end
end
