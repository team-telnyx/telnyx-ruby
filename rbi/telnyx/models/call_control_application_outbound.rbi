# typed: strong

module Telnyx
  module Models
    class CallControlApplicationOutbound < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::CallControlApplicationOutbound,
            Telnyx::Internal::AnyHash
          )
        end

      # When set, this will limit the total number of outbound calls to phone numbers
      # associated with this connection.
      sig { returns(T.nilable(Integer)) }
      attr_reader :channel_limit

      sig { params(channel_limit: Integer).void }
      attr_writer :channel_limit

      # Identifies the associated outbound voice profile.
      sig { returns(T.nilable(String)) }
      attr_reader :outbound_voice_profile_id

      sig { params(outbound_voice_profile_id: String).void }
      attr_writer :outbound_voice_profile_id

      sig do
        params(
          channel_limit: Integer,
          outbound_voice_profile_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # When set, this will limit the total number of outbound calls to phone numbers
        # associated with this connection.
        channel_limit: nil,
        # Identifies the associated outbound voice profile.
        outbound_voice_profile_id: nil
      )
      end

      sig do
        override.returns(
          { channel_limit: Integer, outbound_voice_profile_id: String }
        )
      end
      def to_hash
      end
    end
  end
end
