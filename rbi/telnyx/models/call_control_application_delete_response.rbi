# typed: strong

module Telnyx
  module Models
    class CallControlApplicationDeleteResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::CallControlApplicationDeleteResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::CallControlApplication)) }
      attr_reader :data

      sig { params(data: Telnyx::CallControlApplication::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::CallControlApplication::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::CallControlApplication }) }
      def to_hash
      end
    end
  end
end
