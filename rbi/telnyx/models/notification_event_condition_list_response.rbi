# typed: strong

module Telnyx
  module Models
    class NotificationEventConditionListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::NotificationEventConditionListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            T::Array[
              Telnyx::Models::NotificationEventConditionListResponse::Data
            ]
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::NotificationEventConditionListResponse::Data::OrHash
            ]
        ).void
      end
      attr_writer :data

      sig { returns(T.nilable(Telnyx::PaginationMeta)) }
      attr_reader :meta

      sig { params(meta: Telnyx::PaginationMeta::OrHash).void }
      attr_writer :meta

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::NotificationEventConditionListResponse::Data::OrHash
            ],
          meta: Telnyx::PaginationMeta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          {
            data:
              T::Array[
                Telnyx::Models::NotificationEventConditionListResponse::Data
              ],
            meta: Telnyx::PaginationMeta
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::NotificationEventConditionListResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Dictates whether a notification channel id needs to be provided when creating a
        # notficiation setting.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :allow_multiple_channels

        sig { params(allow_multiple_channels: T::Boolean).void }
        attr_writer :allow_multiple_channels

        sig do
          returns(
            T.nilable(
              Telnyx::Models::NotificationEventConditionListResponse::Data::AssociatedRecordType::TaggedSymbol
            )
          )
        end
        attr_reader :associated_record_type

        sig do
          params(
            associated_record_type:
              Telnyx::Models::NotificationEventConditionListResponse::Data::AssociatedRecordType::OrSymbol
          ).void
        end
        attr_writer :associated_record_type

        # Dictates whether a notification setting will take effect immediately.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :asynchronous

        sig { params(asynchronous: T::Boolean).void }
        attr_writer :asynchronous

        # ISO 8601 formatted date indicating when the resource was created.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :enabled

        sig { params(enabled: T::Boolean).void }
        attr_writer :enabled

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(String)) }
        attr_reader :notification_event_id

        sig { params(notification_event_id: String).void }
        attr_writer :notification_event_id

        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::Models::NotificationEventConditionListResponse::Data::Parameter
              ]
            )
          )
        end
        attr_reader :parameters

        sig do
          params(
            parameters:
              T::Array[
                Telnyx::Models::NotificationEventConditionListResponse::Data::Parameter::OrHash
              ]
          ).void
        end
        attr_writer :parameters

        # Dictates the supported notification channel types that can be emitted.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :supported_channels

        sig { params(supported_channels: T::Array[String]).void }
        attr_writer :supported_channels

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

        sig do
          params(
            id: String,
            allow_multiple_channels: T::Boolean,
            associated_record_type:
              Telnyx::Models::NotificationEventConditionListResponse::Data::AssociatedRecordType::OrSymbol,
            asynchronous: T::Boolean,
            created_at: Time,
            description: String,
            enabled: T::Boolean,
            name: String,
            notification_event_id: String,
            parameters:
              T::Array[
                Telnyx::Models::NotificationEventConditionListResponse::Data::Parameter::OrHash
              ],
            supported_channels: T::Array[String],
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # A UUID.
          id: nil,
          # Dictates whether a notification channel id needs to be provided when creating a
          # notficiation setting.
          allow_multiple_channels: nil,
          associated_record_type: nil,
          # Dictates whether a notification setting will take effect immediately.
          asynchronous: nil,
          # ISO 8601 formatted date indicating when the resource was created.
          created_at: nil,
          description: nil,
          enabled: nil,
          name: nil,
          notification_event_id: nil,
          parameters: nil,
          # Dictates the supported notification channel types that can be emitted.
          supported_channels: nil,
          # ISO 8601 formatted date indicating when the resource was updated.
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              allow_multiple_channels: T::Boolean,
              associated_record_type:
                Telnyx::Models::NotificationEventConditionListResponse::Data::AssociatedRecordType::TaggedSymbol,
              asynchronous: T::Boolean,
              created_at: Time,
              description: String,
              enabled: T::Boolean,
              name: String,
              notification_event_id: String,
              parameters:
                T::Array[
                  Telnyx::Models::NotificationEventConditionListResponse::Data::Parameter
                ],
              supported_channels: T::Array[String],
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        module AssociatedRecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::NotificationEventConditionListResponse::Data::AssociatedRecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ACCOUNT =
            T.let(
              :account,
              Telnyx::Models::NotificationEventConditionListResponse::Data::AssociatedRecordType::TaggedSymbol
            )
          PHONE_NUMBER =
            T.let(
              :phone_number,
              Telnyx::Models::NotificationEventConditionListResponse::Data::AssociatedRecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::NotificationEventConditionListResponse::Data::AssociatedRecordType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Parameter < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::NotificationEventConditionListResponse::Data::Parameter,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :data_type

          sig { params(data_type: String).void }
          attr_writer :data_type

          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :optional

          sig { params(optional: T::Boolean).void }
          attr_writer :optional

          sig do
            params(
              data_type: String,
              name: String,
              optional: T::Boolean
            ).returns(T.attached_class)
          end
          def self.new(data_type: nil, name: nil, optional: nil)
          end

          sig do
            override.returns(
              { data_type: String, name: String, optional: T::Boolean }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
