# typed: strong

module Telnyx
  module Models
    module Rooms
      class SessionRetrieveParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Rooms::SessionRetrieveParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :room_session_id

        # To decide if room participants should be included in the response.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :include_participants

        sig { params(include_participants: T::Boolean).void }
        attr_writer :include_participants

        sig do
          params(
            room_session_id: String,
            include_participants: T::Boolean,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          room_session_id:,
          # To decide if room participants should be included in the response.
          include_participants: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              room_session_id: String,
              include_participants: T::Boolean,
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
