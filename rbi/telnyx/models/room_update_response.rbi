# typed: strong

module Telnyx
  module Models
    class RoomUpdateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::Models::RoomUpdateResponse, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::Room)) }
      attr_reader :data

      sig { params(data: Telnyx::Room::OrHash).void }
      attr_writer :data

      sig { params(data: Telnyx::Room::OrHash).returns(T.attached_class) }
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::Room }) }
      def to_hash
      end
    end
  end
end
