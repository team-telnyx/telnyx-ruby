# typed: strong

module Telnyx
  module Models
    class GlobalIPCreateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::GlobalIPCreateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::GlobalIP)) }
      attr_reader :data

      sig { params(data: Telnyx::GlobalIP::OrHash).void }
      attr_writer :data

      sig { params(data: Telnyx::GlobalIP::OrHash).returns(T.attached_class) }
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::GlobalIP }) }
      def to_hash
      end
    end
  end
end
