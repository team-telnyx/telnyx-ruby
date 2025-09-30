# typed: strong

module Telnyx
  module Models
    class VerifiedNumberDataWrapper < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::VerifiedNumberDataWrapper, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::VerifiedNumber)) }
      attr_reader :data

      sig { params(data: Telnyx::VerifiedNumber::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::VerifiedNumber::OrHash).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::VerifiedNumber }) }
      def to_hash
      end
    end
  end
end
