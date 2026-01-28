# typed: strong

module Telnyx
  module Models
    class NotificationEventConditionListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::NotificationEventConditionListParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Consolidated filter parameter (deepObject style). Originally:
      # filter[associated_record_type][eq], filter[channel_type_id][eq],
      # filter[notification_profile_id][eq], filter[notification_channel][eq],
      # filter[notification_event_condition_id][eq], filter[status][eq]
      sig do
        returns(T.nilable(Telnyx::NotificationEventConditionListParams::Filter))
      end
      attr_reader :filter

      sig do
        params(
          filter: Telnyx::NotificationEventConditionListParams::Filter::OrHash
        ).void
      end
      attr_writer :filter

      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      sig do
        params(
          filter: Telnyx::NotificationEventConditionListParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[associated_record_type][eq], filter[channel_type_id][eq],
        # filter[notification_profile_id][eq], filter[notification_channel][eq],
        # filter[notification_event_condition_id][eq], filter[status][eq]
        filter: nil,
        page_number: nil,
        page_size: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter: Telnyx::NotificationEventConditionListParams::Filter,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Filter < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::NotificationEventConditionListParams::Filter,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Telnyx::NotificationEventConditionListParams::Filter::AssociatedRecordType
            )
          )
        end
        attr_reader :associated_record_type

        sig do
          params(
            associated_record_type:
              Telnyx::NotificationEventConditionListParams::Filter::AssociatedRecordType::OrHash
          ).void
        end
        attr_writer :associated_record_type

        sig do
          returns(
            T.nilable(
              Telnyx::NotificationEventConditionListParams::Filter::ChannelTypeID
            )
          )
        end
        attr_reader :channel_type_id

        sig do
          params(
            channel_type_id:
              Telnyx::NotificationEventConditionListParams::Filter::ChannelTypeID::OrHash
          ).void
        end
        attr_writer :channel_type_id

        sig do
          returns(
            T.nilable(
              Telnyx::NotificationEventConditionListParams::Filter::NotificationChannel
            )
          )
        end
        attr_reader :notification_channel

        sig do
          params(
            notification_channel:
              Telnyx::NotificationEventConditionListParams::Filter::NotificationChannel::OrHash
          ).void
        end
        attr_writer :notification_channel

        sig do
          returns(
            T.nilable(
              Telnyx::NotificationEventConditionListParams::Filter::NotificationEventConditionID
            )
          )
        end
        attr_reader :notification_event_condition_id

        sig do
          params(
            notification_event_condition_id:
              Telnyx::NotificationEventConditionListParams::Filter::NotificationEventConditionID::OrHash
          ).void
        end
        attr_writer :notification_event_condition_id

        sig do
          returns(
            T.nilable(
              Telnyx::NotificationEventConditionListParams::Filter::NotificationProfileID
            )
          )
        end
        attr_reader :notification_profile_id

        sig do
          params(
            notification_profile_id:
              Telnyx::NotificationEventConditionListParams::Filter::NotificationProfileID::OrHash
          ).void
        end
        attr_writer :notification_profile_id

        sig do
          returns(
            T.nilable(
              Telnyx::NotificationEventConditionListParams::Filter::Status
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              Telnyx::NotificationEventConditionListParams::Filter::Status::OrHash
          ).void
        end
        attr_writer :status

        # Consolidated filter parameter (deepObject style). Originally:
        # filter[associated_record_type][eq], filter[channel_type_id][eq],
        # filter[notification_profile_id][eq], filter[notification_channel][eq],
        # filter[notification_event_condition_id][eq], filter[status][eq]
        sig do
          params(
            associated_record_type:
              Telnyx::NotificationEventConditionListParams::Filter::AssociatedRecordType::OrHash,
            channel_type_id:
              Telnyx::NotificationEventConditionListParams::Filter::ChannelTypeID::OrHash,
            notification_channel:
              Telnyx::NotificationEventConditionListParams::Filter::NotificationChannel::OrHash,
            notification_event_condition_id:
              Telnyx::NotificationEventConditionListParams::Filter::NotificationEventConditionID::OrHash,
            notification_profile_id:
              Telnyx::NotificationEventConditionListParams::Filter::NotificationProfileID::OrHash,
            status:
              Telnyx::NotificationEventConditionListParams::Filter::Status::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          associated_record_type: nil,
          channel_type_id: nil,
          notification_channel: nil,
          notification_event_condition_id: nil,
          notification_profile_id: nil,
          status: nil
        )
        end

        sig do
          override.returns(
            {
              associated_record_type:
                Telnyx::NotificationEventConditionListParams::Filter::AssociatedRecordType,
              channel_type_id:
                Telnyx::NotificationEventConditionListParams::Filter::ChannelTypeID,
              notification_channel:
                Telnyx::NotificationEventConditionListParams::Filter::NotificationChannel,
              notification_event_condition_id:
                Telnyx::NotificationEventConditionListParams::Filter::NotificationEventConditionID,
              notification_profile_id:
                Telnyx::NotificationEventConditionListParams::Filter::NotificationProfileID,
              status:
                Telnyx::NotificationEventConditionListParams::Filter::Status
            }
          )
        end
        def to_hash
        end

        class AssociatedRecordType < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::NotificationEventConditionListParams::Filter::AssociatedRecordType,
                Telnyx::Internal::AnyHash
              )
            end

          # Filter by the associated record type
          sig do
            returns(
              T.nilable(
                Telnyx::NotificationEventConditionListParams::Filter::AssociatedRecordType::Eq::OrSymbol
              )
            )
          end
          attr_reader :eq

          sig do
            params(
              eq:
                Telnyx::NotificationEventConditionListParams::Filter::AssociatedRecordType::Eq::OrSymbol
            ).void
          end
          attr_writer :eq

          sig do
            params(
              eq:
                Telnyx::NotificationEventConditionListParams::Filter::AssociatedRecordType::Eq::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Filter by the associated record type
            eq: nil
          )
          end

          sig do
            override.returns(
              {
                eq:
                  Telnyx::NotificationEventConditionListParams::Filter::AssociatedRecordType::Eq::OrSymbol
              }
            )
          end
          def to_hash
          end

          # Filter by the associated record type
          module Eq
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::NotificationEventConditionListParams::Filter::AssociatedRecordType::Eq
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ACCOUNT =
              T.let(
                :account,
                Telnyx::NotificationEventConditionListParams::Filter::AssociatedRecordType::Eq::TaggedSymbol
              )
            PHONE_NUMBER =
              T.let(
                :phone_number,
                Telnyx::NotificationEventConditionListParams::Filter::AssociatedRecordType::Eq::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::NotificationEventConditionListParams::Filter::AssociatedRecordType::Eq::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class ChannelTypeID < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::NotificationEventConditionListParams::Filter::ChannelTypeID,
                Telnyx::Internal::AnyHash
              )
            end

          # Filter by the id of a channel type
          sig do
            returns(
              T.nilable(
                Telnyx::NotificationEventConditionListParams::Filter::ChannelTypeID::Eq::OrSymbol
              )
            )
          end
          attr_reader :eq

          sig do
            params(
              eq:
                Telnyx::NotificationEventConditionListParams::Filter::ChannelTypeID::Eq::OrSymbol
            ).void
          end
          attr_writer :eq

          sig do
            params(
              eq:
                Telnyx::NotificationEventConditionListParams::Filter::ChannelTypeID::Eq::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Filter by the id of a channel type
            eq: nil
          )
          end

          sig do
            override.returns(
              {
                eq:
                  Telnyx::NotificationEventConditionListParams::Filter::ChannelTypeID::Eq::OrSymbol
              }
            )
          end
          def to_hash
          end

          # Filter by the id of a channel type
          module Eq
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::NotificationEventConditionListParams::Filter::ChannelTypeID::Eq
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            WEBHOOK =
              T.let(
                :webhook,
                Telnyx::NotificationEventConditionListParams::Filter::ChannelTypeID::Eq::TaggedSymbol
              )
            SMS =
              T.let(
                :sms,
                Telnyx::NotificationEventConditionListParams::Filter::ChannelTypeID::Eq::TaggedSymbol
              )
            EMAIL =
              T.let(
                :email,
                Telnyx::NotificationEventConditionListParams::Filter::ChannelTypeID::Eq::TaggedSymbol
              )
            VOICE =
              T.let(
                :voice,
                Telnyx::NotificationEventConditionListParams::Filter::ChannelTypeID::Eq::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::NotificationEventConditionListParams::Filter::ChannelTypeID::Eq::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class NotificationChannel < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::NotificationEventConditionListParams::Filter::NotificationChannel,
                Telnyx::Internal::AnyHash
              )
            end

          # Filter by the id of a notification channel
          sig { returns(T.nilable(String)) }
          attr_reader :eq

          sig { params(eq: String).void }
          attr_writer :eq

          sig { params(eq: String).returns(T.attached_class) }
          def self.new(
            # Filter by the id of a notification channel
            eq: nil
          )
          end

          sig { override.returns({ eq: String }) }
          def to_hash
          end
        end

        class NotificationEventConditionID < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::NotificationEventConditionListParams::Filter::NotificationEventConditionID,
                Telnyx::Internal::AnyHash
              )
            end

          # Filter by the id of a notification channel
          sig { returns(T.nilable(String)) }
          attr_reader :eq

          sig { params(eq: String).void }
          attr_writer :eq

          sig { params(eq: String).returns(T.attached_class) }
          def self.new(
            # Filter by the id of a notification channel
            eq: nil
          )
          end

          sig { override.returns({ eq: String }) }
          def to_hash
          end
        end

        class NotificationProfileID < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::NotificationEventConditionListParams::Filter::NotificationProfileID,
                Telnyx::Internal::AnyHash
              )
            end

          # Filter by the id of a notification profile
          sig { returns(T.nilable(String)) }
          attr_reader :eq

          sig { params(eq: String).void }
          attr_writer :eq

          sig { params(eq: String).returns(T.attached_class) }
          def self.new(
            # Filter by the id of a notification profile
            eq: nil
          )
          end

          sig { override.returns({ eq: String }) }
          def to_hash
          end
        end

        class Status < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::NotificationEventConditionListParams::Filter::Status,
                Telnyx::Internal::AnyHash
              )
            end

          # The status of a notification setting
          sig do
            returns(
              T.nilable(
                Telnyx::NotificationEventConditionListParams::Filter::Status::Eq::OrSymbol
              )
            )
          end
          attr_reader :eq

          sig do
            params(
              eq:
                Telnyx::NotificationEventConditionListParams::Filter::Status::Eq::OrSymbol
            ).void
          end
          attr_writer :eq

          sig do
            params(
              eq:
                Telnyx::NotificationEventConditionListParams::Filter::Status::Eq::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The status of a notification setting
            eq: nil
          )
          end

          sig do
            override.returns(
              {
                eq:
                  Telnyx::NotificationEventConditionListParams::Filter::Status::Eq::OrSymbol
              }
            )
          end
          def to_hash
          end

          # The status of a notification setting
          module Eq
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::NotificationEventConditionListParams::Filter::Status::Eq
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ENABLED =
              T.let(
                :enabled,
                Telnyx::NotificationEventConditionListParams::Filter::Status::Eq::TaggedSymbol
              )
            ENABLE_RECEIVED =
              T.let(
                :"enable-received",
                Telnyx::NotificationEventConditionListParams::Filter::Status::Eq::TaggedSymbol
              )
            ENABLE_PENDING =
              T.let(
                :"enable-pending",
                Telnyx::NotificationEventConditionListParams::Filter::Status::Eq::TaggedSymbol
              )
            ENABLE_SUBMTITED =
              T.let(
                :"enable-submtited",
                Telnyx::NotificationEventConditionListParams::Filter::Status::Eq::TaggedSymbol
              )
            DELETE_RECEIVED =
              T.let(
                :"delete-received",
                Telnyx::NotificationEventConditionListParams::Filter::Status::Eq::TaggedSymbol
              )
            DELETE_PENDING =
              T.let(
                :"delete-pending",
                Telnyx::NotificationEventConditionListParams::Filter::Status::Eq::TaggedSymbol
              )
            DELETE_SUBMITTED =
              T.let(
                :"delete-submitted",
                Telnyx::NotificationEventConditionListParams::Filter::Status::Eq::TaggedSymbol
              )
            DELETED =
              T.let(
                :deleted,
                Telnyx::NotificationEventConditionListParams::Filter::Status::Eq::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::NotificationEventConditionListParams::Filter::Status::Eq::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
