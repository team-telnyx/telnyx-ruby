# typed: strong

module Telnyx
  module Models
    module EmailInboxes
      class EmailDraft < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::EmailInboxes::EmailDraft, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :inbox_id

        sig do
          returns(Telnyx::EmailInboxes::EmailDraft::RecordType::TaggedSymbol)
        end
        attr_accessor :record_type

        # `draft` until the draft is sent. A sent draft is retained for audit and becomes
        # immutable.
        sig { returns(Telnyx::EmailInboxes::EmailDraft::Status::TaggedSymbol) }
        attr_accessor :status

        sig { returns(T.nilable(T::Array[T::Hash[Symbol, T.anything]])) }
        attr_reader :attachments

        sig { params(attachments: T::Array[T::Hash[Symbol, T.anything]]).void }
        attr_writer :attachments

        sig { returns(T.nilable(T::Array[Telnyx::EmailInboxes::EmailAddress])) }
        attr_reader :bcc

        sig do
          params(bcc: T::Array[Telnyx::EmailInboxes::EmailAddress::OrHash]).void
        end
        attr_writer :bcc

        sig { returns(T.nilable(T::Array[Telnyx::EmailInboxes::EmailAddress])) }
        attr_reader :cc

        sig do
          params(cc: T::Array[Telnyx::EmailInboxes::EmailAddress::OrHash]).void
        end
        attr_writer :cc

        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # Sender address. Defaults to the inbox address at send time when null.
        sig { returns(T.nilable(String)) }
        attr_accessor :from

        sig { returns(T.nilable(String)) }
        attr_accessor :from_name

        # Custom headers. Reply drafts carry `In-Reply-To` and `References`.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :headers

        sig { params(headers: T::Hash[Symbol, String]).void }
        attr_writer :headers

        sig { returns(T.nilable(String)) }
        attr_accessor :html_body

        # Mutable mailbox-state labels. Not propagated to Email Detail Records.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :labels

        sig { params(labels: T::Array[String]).void }
        attr_writer :labels

        # Arbitrary customer-defined metadata.
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, T.anything]).void }
        attr_writer :metadata

        sig { returns(T.nilable(String)) }
        attr_accessor :reply_to

        # Inbound message this draft replies to. Server-owned; set only on reply drafts.
        sig { returns(T.nilable(String)) }
        attr_accessor :reply_to_message_id

        sig { returns(T.nilable(Time)) }
        attr_accessor :sent_at

        # The email message created when this draft was sent.
        sig { returns(T.nilable(String)) }
        attr_accessor :sent_message_id

        sig { returns(T.nilable(String)) }
        attr_accessor :subject

        # Transport/reporting attribution tags, propagated to Email Detail Records at send
        # time.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :tags

        sig { params(tags: T::Array[String]).void }
        attr_writer :tags

        sig { returns(T.nilable(String)) }
        attr_accessor :text_body

        # Conversation thread inherited from the parent message.
        sig { returns(T.nilable(String)) }
        attr_accessor :thread_id

        sig { returns(T.nilable(T::Array[Telnyx::EmailInboxes::EmailAddress])) }
        attr_reader :to

        sig do
          params(to: T::Array[Telnyx::EmailInboxes::EmailAddress::OrHash]).void
        end
        attr_writer :to

        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        # An unsent, mutable draft message belonging to an inbox.
        sig do
          params(
            id: String,
            inbox_id: String,
            record_type: Telnyx::EmailInboxes::EmailDraft::RecordType::OrSymbol,
            status: Telnyx::EmailInboxes::EmailDraft::Status::OrSymbol,
            attachments: T::Array[T::Hash[Symbol, T.anything]],
            bcc: T::Array[Telnyx::EmailInboxes::EmailAddress::OrHash],
            cc: T::Array[Telnyx::EmailInboxes::EmailAddress::OrHash],
            created_at: Time,
            from: T.nilable(String),
            from_name: T.nilable(String),
            headers: T::Hash[Symbol, String],
            html_body: T.nilable(String),
            labels: T::Array[String],
            metadata: T::Hash[Symbol, T.anything],
            reply_to: T.nilable(String),
            reply_to_message_id: T.nilable(String),
            sent_at: T.nilable(Time),
            sent_message_id: T.nilable(String),
            subject: T.nilable(String),
            tags: T::Array[String],
            text_body: T.nilable(String),
            thread_id: T.nilable(String),
            to: T::Array[Telnyx::EmailInboxes::EmailAddress::OrHash],
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          inbox_id:,
          record_type:,
          # `draft` until the draft is sent. A sent draft is retained for audit and becomes
          # immutable.
          status:,
          attachments: nil,
          bcc: nil,
          cc: nil,
          created_at: nil,
          # Sender address. Defaults to the inbox address at send time when null.
          from: nil,
          from_name: nil,
          # Custom headers. Reply drafts carry `In-Reply-To` and `References`.
          headers: nil,
          html_body: nil,
          # Mutable mailbox-state labels. Not propagated to Email Detail Records.
          labels: nil,
          # Arbitrary customer-defined metadata.
          metadata: nil,
          reply_to: nil,
          # Inbound message this draft replies to. Server-owned; set only on reply drafts.
          reply_to_message_id: nil,
          sent_at: nil,
          # The email message created when this draft was sent.
          sent_message_id: nil,
          subject: nil,
          # Transport/reporting attribution tags, propagated to Email Detail Records at send
          # time.
          tags: nil,
          text_body: nil,
          # Conversation thread inherited from the parent message.
          thread_id: nil,
          to: nil,
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              inbox_id: String,
              record_type:
                Telnyx::EmailInboxes::EmailDraft::RecordType::TaggedSymbol,
              status: Telnyx::EmailInboxes::EmailDraft::Status::TaggedSymbol,
              attachments: T::Array[T::Hash[Symbol, T.anything]],
              bcc: T::Array[Telnyx::EmailInboxes::EmailAddress],
              cc: T::Array[Telnyx::EmailInboxes::EmailAddress],
              created_at: Time,
              from: T.nilable(String),
              from_name: T.nilable(String),
              headers: T::Hash[Symbol, String],
              html_body: T.nilable(String),
              labels: T::Array[String],
              metadata: T::Hash[Symbol, T.anything],
              reply_to: T.nilable(String),
              reply_to_message_id: T.nilable(String),
              sent_at: T.nilable(Time),
              sent_message_id: T.nilable(String),
              subject: T.nilable(String),
              tags: T::Array[String],
              text_body: T.nilable(String),
              thread_id: T.nilable(String),
              to: T::Array[Telnyx::EmailInboxes::EmailAddress],
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
              T.all(Symbol, Telnyx::EmailInboxes::EmailDraft::RecordType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMAIL_DRAFT =
            T.let(
              :email_draft,
              Telnyx::EmailInboxes::EmailDraft::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::EmailInboxes::EmailDraft::RecordType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # `draft` until the draft is sent. A sent draft is retained for audit and becomes
        # immutable.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::EmailInboxes::EmailDraft::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DRAFT =
            T.let(
              :draft,
              Telnyx::EmailInboxes::EmailDraft::Status::TaggedSymbol
            )
          SENDING =
            T.let(
              :sending,
              Telnyx::EmailInboxes::EmailDraft::Status::TaggedSymbol
            )
          SENT =
            T.let(:sent, Telnyx::EmailInboxes::EmailDraft::Status::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::EmailInboxes::EmailDraft::Status::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
