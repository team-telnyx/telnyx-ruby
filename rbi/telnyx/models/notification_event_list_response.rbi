# typed: strong

module Telnyx
  module Models
    class NotificationEventListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::NotificationEventListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # ISO 8601 formatted date indicating when the resource was created.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :enabled

      sig { params(enabled: T::Boolean).void }
      attr_writer :enabled

      # A human readable name.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig { returns(T.nilable(String)) }
      attr_reader :notification_category

      sig { params(notification_category: String).void }
      attr_writer :notification_category

      # ISO 8601 formatted date indicating when the resource was updated.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      # A UUID.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # An object representing the available notifications.
      sig do
        params(
          id: String,
          created_at: Time,
          enabled: T::Boolean,
          name: String,
          notification_category: String,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # A UUID.
        id: nil,
        # ISO 8601 formatted date indicating when the resource was created.
        created_at: nil,
        enabled: nil,
        # A human readable name.
        name: nil,
        notification_category: nil,
        # ISO 8601 formatted date indicating when the resource was updated.
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Time,
            enabled: T::Boolean,
            name: String,
            notification_category: String,
            updated_at: Time
          }
        )
      end
      def to_hash
      end
    end
  end
end
