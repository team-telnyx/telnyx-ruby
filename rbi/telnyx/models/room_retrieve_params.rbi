# typed: strong

module Telnyx
  module Models
    class RoomRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::RoomRetrieveParams, Telnyx::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :room_id

      # To decide if room sessions should be included in the response.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :include_sessions

      sig { params(include_sessions: T::Boolean).void }
      attr_writer :include_sessions

      sig do
        params(
          room_id: String,
          include_sessions: T::Boolean,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        room_id:,
        # To decide if room sessions should be included in the response.
        include_sessions: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            room_id: String,
            include_sessions: T::Boolean,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
