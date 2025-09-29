# typed: strong

module Telnyx
  module Models
    module Rooms
      class SessionRetrieveResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Rooms::SessionRetrieveResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Telnyx::RoomSession)) }
        attr_reader :data

        sig { params(data: Telnyx::RoomSession::OrHash).void }
        attr_writer :data

        sig do
          params(data: Telnyx::RoomSession::OrHash).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig { override.returns({ data: Telnyx::RoomSession }) }
        def to_hash
        end
      end
    end
  end
end
