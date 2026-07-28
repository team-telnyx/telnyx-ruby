# typed: strong

module Telnyx
  module Models
    module EmailInboxes
      class InboundThread < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::EmailInboxes::InboundThread,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :inbox_id

        # Mutable thread labels used for agent workflow state. Independent of the labels
        # on the thread's messages, and distinct from the send-time `tags` on outbound
        # messages.
        sig { returns(T::Array[String]) }
        attr_accessor :labels

        sig { returns(Time) }
        attr_accessor :last_message_at

        sig { returns(String) }
        attr_accessor :last_message_id

        # Total inbound and outbound messages in the thread.
        sig { returns(Integer) }
        attr_accessor :message_count

        sig { returns(T.nilable(String)) }
        attr_accessor :preview

        sig do
          returns(Telnyx::EmailInboxes::InboundThread::RecordType::TaggedSymbol)
        end
        attr_accessor :record_type

        sig { returns(T.nilable(String)) }
        attr_accessor :subject

        # Unread inbound messages; outbound messages never increment this count.
        sig { returns(Integer) }
        attr_accessor :unread_count

        sig { returns(Time) }
        attr_accessor :updated_at

        sig do
          params(
            id: String,
            created_at: Time,
            inbox_id: String,
            labels: T::Array[String],
            last_message_at: Time,
            last_message_id: String,
            message_count: Integer,
            preview: T.nilable(String),
            record_type:
              Telnyx::EmailInboxes::InboundThread::RecordType::OrSymbol,
            subject: T.nilable(String),
            unread_count: Integer,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          created_at:,
          inbox_id:,
          # Mutable thread labels used for agent workflow state. Independent of the labels
          # on the thread's messages, and distinct from the send-time `tags` on outbound
          # messages.
          labels:,
          last_message_at:,
          last_message_id:,
          # Total inbound and outbound messages in the thread.
          message_count:,
          preview:,
          record_type:,
          subject:,
          # Unread inbound messages; outbound messages never increment this count.
          unread_count:,
          updated_at:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              inbox_id: String,
              labels: T::Array[String],
              last_message_at: Time,
              last_message_id: String,
              message_count: Integer,
              preview: T.nilable(String),
              record_type:
                Telnyx::EmailInboxes::InboundThread::RecordType::TaggedSymbol,
              subject: T.nilable(String),
              unread_count: Integer,
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::EmailInboxes::InboundThread::RecordType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMAIL_THREAD =
            T.let(
              :email_thread,
              Telnyx::EmailInboxes::InboundThread::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::EmailInboxes::InboundThread::RecordType::TaggedSymbol
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
