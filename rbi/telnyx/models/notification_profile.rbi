# typed: strong

module Telnyx
  module Models
    class NotificationProfile < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::NotificationProfile, Telnyx::Internal::AnyHash)
        end

      # A human readable name.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

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

      # A Collection of Notification Channels
      sig do
        params(
          id: String,
          created_at: Time,
          name: String,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # A UUID.
        id: nil,
        # ISO 8601 formatted date indicating when the resource was created.
        created_at: nil,
        # A human readable name.
        name: nil,
        # ISO 8601 formatted date indicating when the resource was updated.
        updated_at: nil
      )
      end

      sig do
        override.returns(
          { id: String, created_at: Time, name: String, updated_at: Time }
        )
      end
      def to_hash
      end
    end
  end
end
