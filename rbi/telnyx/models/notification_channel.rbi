# typed: strong

module Telnyx
  module Models
    class NotificationChannel < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::NotificationChannel, Telnyx::Internal::AnyHash)
        end

      # The destination associated with the channel type.
      sig { returns(T.nilable(String)) }
      attr_reader :channel_destination

      sig { params(channel_destination: String).void }
      attr_writer :channel_destination

      # A Channel Type ID
      sig do
        returns(
          T.nilable(Telnyx::NotificationChannel::ChannelTypeID::TaggedSymbol)
        )
      end
      attr_reader :channel_type_id

      sig do
        params(
          channel_type_id: Telnyx::NotificationChannel::ChannelTypeID::OrSymbol
        ).void
      end
      attr_writer :channel_type_id

      # A UUID reference to the associated Notification Profile.
      sig { returns(T.nilable(String)) }
      attr_reader :notification_profile_id

      sig { params(notification_profile_id: String).void }
      attr_writer :notification_profile_id

      # A UUID.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # ISO 8601 formatted date indicating when the resource was created.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # ISO 8601 formatted date indicating when the resource was updated.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      # A Notification Channel
      sig do
        params(
          id: String,
          channel_destination: String,
          channel_type_id: Telnyx::NotificationChannel::ChannelTypeID::OrSymbol,
          created_at: Time,
          notification_profile_id: String,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # A UUID.
        id: nil,
        # The destination associated with the channel type.
        channel_destination: nil,
        # A Channel Type ID
        channel_type_id: nil,
        # ISO 8601 formatted date indicating when the resource was created.
        created_at: nil,
        # A UUID reference to the associated Notification Profile.
        notification_profile_id: nil,
        # ISO 8601 formatted date indicating when the resource was updated.
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            channel_destination: String,
            channel_type_id:
              Telnyx::NotificationChannel::ChannelTypeID::TaggedSymbol,
            created_at: Time,
            notification_profile_id: String,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      # A Channel Type ID
      module ChannelTypeID
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::NotificationChannel::ChannelTypeID)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SMS =
          T.let(:sms, Telnyx::NotificationChannel::ChannelTypeID::TaggedSymbol)
        VOICE =
          T.let(
            :voice,
            Telnyx::NotificationChannel::ChannelTypeID::TaggedSymbol
          )
        EMAIL =
          T.let(
            :email,
            Telnyx::NotificationChannel::ChannelTypeID::TaggedSymbol
          )
        WEBHOOK =
          T.let(
            :webhook,
            Telnyx::NotificationChannel::ChannelTypeID::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::NotificationChannel::ChannelTypeID::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
