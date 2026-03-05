# typed: strong

module Telnyx
  module Models
    module Rooms
      module Sessions
        class ActionEndParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Rooms::Sessions::ActionEndParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :room_session_id

          sig do
            params(
              room_session_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(room_session_id:, request_options: {})
          end

          sig do
            override.returns(
              {
                room_session_id: String,
                request_options: Telnyx::RequestOptions
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
