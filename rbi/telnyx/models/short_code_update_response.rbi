# typed: strong

module Telnyx
  module Models
    class ShortCodeUpdateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::ShortCodeUpdateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::ShortCode)) }
      attr_reader :data

      sig { params(data: Telnyx::ShortCode::OrHash).void }
      attr_writer :data

      sig { params(data: Telnyx::ShortCode::OrHash).returns(T.attached_class) }
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::ShortCode }) }
      def to_hash
      end
    end
  end
end
