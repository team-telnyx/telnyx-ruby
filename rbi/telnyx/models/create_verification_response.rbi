# typed: strong

module Telnyx
  module Models
    class CreateVerificationResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::CreateVerificationResponse, Telnyx::Internal::AnyHash)
        end

      sig { returns(Telnyx::Verification) }
      attr_reader :data

      sig { params(data: Telnyx::Verification::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::Verification::OrHash).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig { override.returns({ data: Telnyx::Verification }) }
      def to_hash
      end
    end
  end
end
