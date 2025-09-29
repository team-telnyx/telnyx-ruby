# typed: strong

module Telnyx
  module Models
    class NotificationSetting < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::NotificationSetting, Telnyx::Internal::AnyHash)
        end

      # A UUID reference to the associated Notification Channel.
      sig { returns(T.nilable(String)) }
      attr_reader :notification_channel_id

      sig { params(notification_channel_id: String).void }
      attr_writer :notification_channel_id

      # A UUID reference to the associated Notification Event Condition.
      sig { returns(T.nilable(String)) }
      attr_reader :notification_event_condition_id

      sig { params(notification_event_condition_id: String).void }
      attr_writer :notification_event_condition_id

      # A UUID reference to the associated Notification Profile.
      sig { returns(T.nilable(String)) }
      attr_reader :notification_profile_id

      sig { params(notification_profile_id: String).void }
      attr_writer :notification_profile_id

      sig do
        returns(T.nilable(T::Array[Telnyx::NotificationSetting::Parameter]))
      end
      attr_reader :parameters

      sig do
        params(
          parameters: T::Array[Telnyx::NotificationSetting::Parameter::OrHash]
        ).void
      end
      attr_writer :parameters

      # A UUID.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      sig { returns(T.nilable(String)) }
      attr_reader :associated_record_type

      sig { params(associated_record_type: String).void }
      attr_writer :associated_record_type

      sig { returns(T.nilable(String)) }
      attr_reader :associated_record_type_value

      sig { params(associated_record_type_value: String).void }
      attr_writer :associated_record_type_value

      # ISO 8601 formatted date indicating when the resource was created.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # Most preferences apply immediately; however, other may needs to propagate.
      sig do
        returns(T.nilable(Telnyx::NotificationSetting::Status::TaggedSymbol))
      end
      attr_reader :status

      sig { params(status: Telnyx::NotificationSetting::Status::OrSymbol).void }
      attr_writer :status

      # ISO 8601 formatted date indicating when the resource was updated.
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_at

      sig { params(updated_at: Time).void }
      attr_writer :updated_at

      sig do
        params(
          id: String,
          associated_record_type: String,
          associated_record_type_value: String,
          created_at: Time,
          notification_channel_id: String,
          notification_event_condition_id: String,
          notification_profile_id: String,
          parameters: T::Array[Telnyx::NotificationSetting::Parameter::OrHash],
          status: Telnyx::NotificationSetting::Status::OrSymbol,
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        # A UUID.
        id: nil,
        associated_record_type: nil,
        associated_record_type_value: nil,
        # ISO 8601 formatted date indicating when the resource was created.
        created_at: nil,
        # A UUID reference to the associated Notification Channel.
        notification_channel_id: nil,
        # A UUID reference to the associated Notification Event Condition.
        notification_event_condition_id: nil,
        # A UUID reference to the associated Notification Profile.
        notification_profile_id: nil,
        parameters: nil,
        # Most preferences apply immediately; however, other may needs to propagate.
        status: nil,
        # ISO 8601 formatted date indicating when the resource was updated.
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            associated_record_type: String,
            associated_record_type_value: String,
            created_at: Time,
            notification_channel_id: String,
            notification_event_condition_id: String,
            notification_profile_id: String,
            parameters: T::Array[Telnyx::NotificationSetting::Parameter],
            status: Telnyx::NotificationSetting::Status::TaggedSymbol,
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      class Parameter < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::NotificationSetting::Parameter,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(String)) }
        attr_reader :value

        sig { params(value: String).void }
        attr_writer :value

        sig { params(name: String, value: String).returns(T.attached_class) }
        def self.new(name: nil, value: nil)
        end

        sig { override.returns({ name: String, value: String }) }
        def to_hash
        end
      end

      # Most preferences apply immediately; however, other may needs to propagate.
      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::NotificationSetting::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ENABLED =
          T.let(:enabled, Telnyx::NotificationSetting::Status::TaggedSymbol)
        ENABLE_RECEIVED =
          T.let(
            :"enable-received",
            Telnyx::NotificationSetting::Status::TaggedSymbol
          )
        ENABLE_PENDING =
          T.let(
            :"enable-pending",
            Telnyx::NotificationSetting::Status::TaggedSymbol
          )
        ENABLE_SUBMTITED =
          T.let(
            :"enable-submtited",
            Telnyx::NotificationSetting::Status::TaggedSymbol
          )
        DELETE_RECEIVED =
          T.let(
            :"delete-received",
            Telnyx::NotificationSetting::Status::TaggedSymbol
          )
        DELETE_PENDING =
          T.let(
            :"delete-pending",
            Telnyx::NotificationSetting::Status::TaggedSymbol
          )
        DELETE_SUBMITTED =
          T.let(
            :"delete-submitted",
            Telnyx::NotificationSetting::Status::TaggedSymbol
          )
        DELETED =
          T.let(:deleted, Telnyx::NotificationSetting::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::NotificationSetting::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
