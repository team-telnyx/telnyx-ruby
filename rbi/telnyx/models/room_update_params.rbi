# typed: strong

module Telnyx
  module Models
    class RoomUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::RoomUpdateParams, Telnyx::Internal::AnyHash)
        end

      # Enable or disable recording for that room.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :enable_recording

      sig { params(enable_recording: T::Boolean).void }
      attr_writer :enable_recording

      # The maximum amount of participants allowed in a room. If new participants try to
      # join after that limit is reached, their request will be rejected.
      sig { returns(T.nilable(Integer)) }
      attr_reader :max_participants

      sig { params(max_participants: Integer).void }
      attr_writer :max_participants

      # The unique (within the Telnyx account scope) name of the room.
      sig { returns(T.nilable(String)) }
      attr_reader :unique_name

      sig { params(unique_name: String).void }
      attr_writer :unique_name

      # The failover URL where webhooks related to this room will be sent if sending to
      # the primary URL fails. Must include a scheme, such as 'https'.
      sig { returns(T.nilable(String)) }
      attr_reader :webhook_event_failover_url

      sig { params(webhook_event_failover_url: String).void }
      attr_writer :webhook_event_failover_url

      # The URL where webhooks related to this room will be sent. Must include a scheme,
      # such as 'https'.
      sig { returns(T.nilable(String)) }
      attr_reader :webhook_event_url

      sig { params(webhook_event_url: String).void }
      attr_writer :webhook_event_url

      # Specifies how many seconds to wait before timing out a webhook.
      sig { returns(T.nilable(Integer)) }
      attr_reader :webhook_timeout_secs

      sig { params(webhook_timeout_secs: Integer).void }
      attr_writer :webhook_timeout_secs

      sig do
        params(
          enable_recording: T::Boolean,
          max_participants: Integer,
          unique_name: String,
          webhook_event_failover_url: String,
          webhook_event_url: String,
          webhook_timeout_secs: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Enable or disable recording for that room.
        enable_recording: nil,
        # The maximum amount of participants allowed in a room. If new participants try to
        # join after that limit is reached, their request will be rejected.
        max_participants: nil,
        # The unique (within the Telnyx account scope) name of the room.
        unique_name: nil,
        # The failover URL where webhooks related to this room will be sent if sending to
        # the primary URL fails. Must include a scheme, such as 'https'.
        webhook_event_failover_url: nil,
        # The URL where webhooks related to this room will be sent. Must include a scheme,
        # such as 'https'.
        webhook_event_url: nil,
        # Specifies how many seconds to wait before timing out a webhook.
        webhook_timeout_secs: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            enable_recording: T::Boolean,
            max_participants: Integer,
            unique_name: String,
            webhook_event_failover_url: String,
            webhook_event_url: String,
            webhook_timeout_secs: Integer,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
