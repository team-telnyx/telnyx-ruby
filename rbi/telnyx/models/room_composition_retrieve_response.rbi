# typed: strong

module Telnyx
  module Models
    class RoomCompositionRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::RoomCompositionRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::RoomComposition)) }
      attr_reader :data

      sig { params(data: Telnyx::RoomComposition::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::RoomComposition::OrHash).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::RoomComposition }) }
      def to_hash
      end
    end
  end
end
