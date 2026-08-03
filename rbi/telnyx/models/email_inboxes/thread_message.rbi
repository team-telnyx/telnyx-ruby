# typed: strong

module Telnyx
  module Models
    module EmailInboxes
      class ThreadMessage < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::EmailInboxes::ThreadMessage,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T::Array[T::Hash[Symbol, T.anything]]) }
        attr_accessor :attachments

        sig { returns(T::Array[Telnyx::EmailInboxes::InboundEmailAddress]) }
        attr_accessor :bcc

        sig { returns(T::Array[Telnyx::EmailInboxes::InboundEmailAddress]) }
        attr_accessor :cc

        sig { returns(Time) }
        attr_accessor :created_at

        sig do
          returns(Telnyx::EmailInboxes::ThreadMessage::Direction::TaggedSymbol)
        end
        attr_accessor :direction

        sig { returns(Telnyx::EmailInboxes::InboundEmailAddress) }
        attr_reader :from

        sig do
          params(from: Telnyx::EmailInboxes::InboundEmailAddress::OrHash).void
        end
        attr_writer :from

        # Whether conservative plain-text extraction detected a quoted tail. False does
        # not prove that the source contains no quoted content.
        sig { returns(T::Boolean) }
        attr_accessor :has_quoted_text

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :headers

        # URL for an offloaded HTML body. Null means the body is not offloaded to a URL;
        # an inline HTML body may still exist but is not returned on list reads. Reply
        # extraction uses only the plain-text body during ingest.
        sig { returns(T.nilable(String)) }
        attr_accessor :html_body_url

        sig { returns(T.nilable(String)) }
        attr_accessor :in_reply_to

        sig { returns(String) }
        attr_accessor :inbox_id

        sig { returns(T::Array[T::Hash[Symbol, T.anything]]) }
        attr_accessor :inline_files

        # Mutable message labels used for agent workflow state (for example `spam`,
        # `needs_review`, `processed`). Distinct from the immutable send-time `tags` on
        # outbound messages: labels are never propagated to Email Detail Records or
        # Mission Control reporting. Always empty for outbound messages. Labels on a
        # message are independent of the labels on its thread.
        sig { returns(T::Array[String]) }
        attr_accessor :labels

        # RFC Message-ID header. Null is possible for legacy outbound messages.
        sig { returns(T.nilable(String)) }
        attr_accessor :message_id

        # Time the inbound message was marked read. Null means unread.
        sig { returns(T.nilable(Time)) }
        attr_accessor :read_at

        # Receipt time for inbound messages; null for outbound messages.
        sig { returns(T.nilable(Time)) }
        attr_accessor :received_at

        sig do
          returns(Telnyx::EmailInboxes::ThreadMessage::RecordType::TaggedSymbol)
        end
        attr_accessor :record_type

        # Ordered RFC Message-ID values from the References header.
        sig { returns(T::Array[String]) }
        attr_accessor :references

        # Conservatively extracted new-reply content persisted from the plain-text body
        # during ingest. Null means no plain-text extraction input was available or
        # extraction was skipped or failed; HTML bodies are not parsed.
        sig { returns(T.nilable(String)) }
        attr_accessor :reply_text

        sig { returns(T::Array[Telnyx::EmailInboxes::InboundEmailAddress]) }
        attr_accessor :reply_to

        # Creation/send-acceptance time for outbound messages; null for inbound messages.
        sig { returns(T.nilable(Time)) }
        attr_accessor :sent_at

        # Received for inbound messages; the current send status for outbound messages.
        sig { returns(String) }
        attr_accessor :status

        sig { returns(T.nilable(String)) }
        attr_accessor :subject

        # URL for an offloaded plain-text body. Null means the body is not offloaded to a
        # URL; an inline plain-text body may still exist but is not returned on list
        # reads. `reply_text` and `has_quoted_text` are persisted during ingest before any
        # body offload.
        sig { returns(T.nilable(String)) }
        attr_accessor :text_body_url

        sig { returns(String) }
        attr_accessor :thread_id

        sig { returns(T::Array[Telnyx::EmailInboxes::InboundEmailAddress]) }
        attr_accessor :to

        sig { returns(Time) }
        attr_accessor :updated_at

        sig do
          params(
            id: String,
            attachments: T::Array[T::Hash[Symbol, T.anything]],
            bcc: T::Array[Telnyx::EmailInboxes::InboundEmailAddress::OrHash],
            cc: T::Array[Telnyx::EmailInboxes::InboundEmailAddress::OrHash],
            created_at: Time,
            direction: Telnyx::EmailInboxes::ThreadMessage::Direction::OrSymbol,
            from: Telnyx::EmailInboxes::InboundEmailAddress::OrHash,
            has_quoted_text: T::Boolean,
            headers: T::Hash[Symbol, T.anything],
            html_body_url: T.nilable(String),
            in_reply_to: T.nilable(String),
            inbox_id: String,
            inline_files: T::Array[T::Hash[Symbol, T.anything]],
            labels: T::Array[String],
            message_id: T.nilable(String),
            read_at: T.nilable(Time),
            received_at: T.nilable(Time),
            record_type:
              Telnyx::EmailInboxes::ThreadMessage::RecordType::OrSymbol,
            references: T::Array[String],
            reply_text: T.nilable(String),
            reply_to:
              T::Array[Telnyx::EmailInboxes::InboundEmailAddress::OrHash],
            sent_at: T.nilable(Time),
            status: String,
            subject: T.nilable(String),
            text_body_url: T.nilable(String),
            thread_id: String,
            to: T::Array[Telnyx::EmailInboxes::InboundEmailAddress::OrHash],
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          attachments:,
          bcc:,
          cc:,
          created_at:,
          direction:,
          from:,
          # Whether conservative plain-text extraction detected a quoted tail. False does
          # not prove that the source contains no quoted content.
          has_quoted_text:,
          headers:,
          # URL for an offloaded HTML body. Null means the body is not offloaded to a URL;
          # an inline HTML body may still exist but is not returned on list reads. Reply
          # extraction uses only the plain-text body during ingest.
          html_body_url:,
          in_reply_to:,
          inbox_id:,
          inline_files:,
          # Mutable message labels used for agent workflow state (for example `spam`,
          # `needs_review`, `processed`). Distinct from the immutable send-time `tags` on
          # outbound messages: labels are never propagated to Email Detail Records or
          # Mission Control reporting. Always empty for outbound messages. Labels on a
          # message are independent of the labels on its thread.
          labels:,
          # RFC Message-ID header. Null is possible for legacy outbound messages.
          message_id:,
          # Time the inbound message was marked read. Null means unread.
          read_at:,
          # Receipt time for inbound messages; null for outbound messages.
          received_at:,
          record_type:,
          # Ordered RFC Message-ID values from the References header.
          references:,
          # Conservatively extracted new-reply content persisted from the plain-text body
          # during ingest. Null means no plain-text extraction input was available or
          # extraction was skipped or failed; HTML bodies are not parsed.
          reply_text:,
          reply_to:,
          # Creation/send-acceptance time for outbound messages; null for inbound messages.
          sent_at:,
          # Received for inbound messages; the current send status for outbound messages.
          status:,
          subject:,
          # URL for an offloaded plain-text body. Null means the body is not offloaded to a
          # URL; an inline plain-text body may still exist but is not returned on list
          # reads. `reply_text` and `has_quoted_text` are persisted during ingest before any
          # body offload.
          text_body_url:,
          thread_id:,
          to:,
          updated_at:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              attachments: T::Array[T::Hash[Symbol, T.anything]],
              bcc: T::Array[Telnyx::EmailInboxes::InboundEmailAddress],
              cc: T::Array[Telnyx::EmailInboxes::InboundEmailAddress],
              created_at: Time,
              direction:
                Telnyx::EmailInboxes::ThreadMessage::Direction::TaggedSymbol,
              from: Telnyx::EmailInboxes::InboundEmailAddress,
              has_quoted_text: T::Boolean,
              headers: T::Hash[Symbol, T.anything],
              html_body_url: T.nilable(String),
              in_reply_to: T.nilable(String),
              inbox_id: String,
              inline_files: T::Array[T::Hash[Symbol, T.anything]],
              labels: T::Array[String],
              message_id: T.nilable(String),
              read_at: T.nilable(Time),
              received_at: T.nilable(Time),
              record_type:
                Telnyx::EmailInboxes::ThreadMessage::RecordType::TaggedSymbol,
              references: T::Array[String],
              reply_text: T.nilable(String),
              reply_to: T::Array[Telnyx::EmailInboxes::InboundEmailAddress],
              sent_at: T.nilable(Time),
              status: String,
              subject: T.nilable(String),
              text_body_url: T.nilable(String),
              thread_id: String,
              to: T::Array[Telnyx::EmailInboxes::InboundEmailAddress],
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        module Direction
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::EmailInboxes::ThreadMessage::Direction)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INBOUND =
            T.let(
              :inbound,
              Telnyx::EmailInboxes::ThreadMessage::Direction::TaggedSymbol
            )
          OUTBOUND =
            T.let(
              :outbound,
              Telnyx::EmailInboxes::ThreadMessage::Direction::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::EmailInboxes::ThreadMessage::Direction::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::EmailInboxes::ThreadMessage::RecordType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMAIL_MESSAGE =
            T.let(
              :email_message,
              Telnyx::EmailInboxes::ThreadMessage::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::EmailInboxes::ThreadMessage::RecordType::TaggedSymbol
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
