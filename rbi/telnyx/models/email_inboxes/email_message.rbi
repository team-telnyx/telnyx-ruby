# typed: strong

module Telnyx
  module Models
    module EmailInboxes
      class EmailMessage < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::EmailInboxes::EmailMessage, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(T::Array[Telnyx::EmailInboxes::EmailMessage::Attachment])
        end
        attr_accessor :attachments

        sig { returns(T::Array[Telnyx::EmailInboxes::EmailAddress]) }
        attr_accessor :bcc

        sig { returns(T::Array[Telnyx::EmailInboxes::EmailAddress]) }
        attr_accessor :cc

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T::Array[Telnyx::MessageEvent]) }
        attr_accessor :events

        sig { returns(Telnyx::EmailInboxes::EmailAddress) }
        attr_reader :from

        sig { params(from: Telnyx::EmailInboxes::EmailAddress::OrHash).void }
        attr_writer :from

        sig do
          returns(Telnyx::EmailInboxes::EmailMessage::RecordType::TaggedSymbol)
        end
        attr_accessor :record_type

        sig { returns(T.nilable(String)) }
        attr_accessor :reply_to

        # Current status of an email message. Lifecycle statuses (queued, scheduled, etc.)
        # are set on creation. Delivery statuses (delivered, bounced, etc.) are updated by
        # delivery event consumers.
        sig do
          returns(Telnyx::EmailInboxes::EmailMessage::Status::TaggedSymbol)
        end
        attr_accessor :status

        sig { returns(String) }
        attr_accessor :subject

        sig { returns(T.nilable(String)) }
        attr_accessor :template_id

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :template_variables

        sig { returns(T::Array[Telnyx::EmailInboxes::EmailAddress]) }
        attr_accessor :to

        # Present when true in the immediate create response. Not persisted; absent on
        # subsequent GET requests.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :inline_css

        sig { params(inline_css: T::Boolean).void }
        attr_writer :inline_css

        # Per-status recipient counts for the message. Present only for outbound messages
        # with recipient rows. Keys are recipient statuses, values are counts. Example:
        # `{"delivered": 998, "bounced": 2}`.
        sig { returns(T.nilable(T::Hash[Symbol, Integer])) }
        attr_reader :recipient_statuses

        sig { params(recipient_statuses: T::Hash[Symbol, Integer]).void }
        attr_writer :recipient_statuses

        # Present when sandbox mode was used.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :sandbox

        sig { params(sandbox: T::Boolean).void }
        attr_writer :sandbox

        # Present when a scheduled_at value was stored. Persists even after the scheduled
        # send has been processed or cancelled.
        sig { returns(T.nilable(Time)) }
        attr_reader :scheduled_at

        sig { params(scheduled_at: Time).void }
        attr_writer :scheduled_at

        sig do
          params(
            id: String,
            attachments:
              T::Array[Telnyx::EmailInboxes::EmailMessage::Attachment::OrHash],
            bcc: T::Array[Telnyx::EmailInboxes::EmailAddress::OrHash],
            cc: T::Array[Telnyx::EmailInboxes::EmailAddress::OrHash],
            created_at: Time,
            events: T::Array[Telnyx::MessageEvent::OrHash],
            from: Telnyx::EmailInboxes::EmailAddress::OrHash,
            record_type:
              Telnyx::EmailInboxes::EmailMessage::RecordType::OrSymbol,
            reply_to: T.nilable(String),
            status: Telnyx::EmailInboxes::EmailMessage::Status::OrSymbol,
            subject: String,
            template_id: T.nilable(String),
            template_variables: T::Hash[Symbol, T.anything],
            to: T::Array[Telnyx::EmailInboxes::EmailAddress::OrHash],
            inline_css: T::Boolean,
            recipient_statuses: T::Hash[Symbol, Integer],
            sandbox: T::Boolean,
            scheduled_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          attachments:,
          bcc:,
          cc:,
          created_at:,
          events:,
          from:,
          record_type:,
          reply_to:,
          # Current status of an email message. Lifecycle statuses (queued, scheduled, etc.)
          # are set on creation. Delivery statuses (delivered, bounced, etc.) are updated by
          # delivery event consumers.
          status:,
          subject:,
          template_id:,
          template_variables:,
          to:,
          # Present when true in the immediate create response. Not persisted; absent on
          # subsequent GET requests.
          inline_css: nil,
          # Per-status recipient counts for the message. Present only for outbound messages
          # with recipient rows. Keys are recipient statuses, values are counts. Example:
          # `{"delivered": 998, "bounced": 2}`.
          recipient_statuses: nil,
          # Present when sandbox mode was used.
          sandbox: nil,
          # Present when a scheduled_at value was stored. Persists even after the scheduled
          # send has been processed or cancelled.
          scheduled_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              attachments:
                T::Array[Telnyx::EmailInboxes::EmailMessage::Attachment],
              bcc: T::Array[Telnyx::EmailInboxes::EmailAddress],
              cc: T::Array[Telnyx::EmailInboxes::EmailAddress],
              created_at: Time,
              events: T::Array[Telnyx::MessageEvent],
              from: Telnyx::EmailInboxes::EmailAddress,
              record_type:
                Telnyx::EmailInboxes::EmailMessage::RecordType::TaggedSymbol,
              reply_to: T.nilable(String),
              status: Telnyx::EmailInboxes::EmailMessage::Status::TaggedSymbol,
              subject: String,
              template_id: T.nilable(String),
              template_variables: T::Hash[Symbol, T.anything],
              to: T::Array[Telnyx::EmailInboxes::EmailAddress],
              inline_css: T::Boolean,
              recipient_statuses: T::Hash[Symbol, Integer],
              sandbox: T::Boolean,
              scheduled_at: Time
            }
          )
        end
        def to_hash
        end

        class Attachment < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::EmailInboxes::EmailMessage::Attachment,
                Telnyx::Internal::AnyHash
              )
            end

          # MIME Content-ID for inline references.
          sig { returns(T.nilable(String)) }
          attr_accessor :content_id

          sig { returns(String) }
          attr_accessor :content_type

          # MIME disposition (e.g. `attachment` or `inline`). Runtime passes through the
          # stored value without enforcing an enum.
          sig { returns(String) }
          attr_accessor :disposition

          sig { returns(String) }
          attr_accessor :filename

          # SHA-256 hex digest of the attachment content.
          sig { returns(T.nilable(String)) }
          attr_accessor :sha256

          # Attachment size in bytes.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :size_bytes

          # Telnyx-hosted public URL for the attachment content.
          sig { returns(T.nilable(String)) }
          attr_accessor :url

          # EDR-aligned attachment metadata. The base64 `content` is never returned.
          sig do
            params(
              content_id: T.nilable(String),
              content_type: String,
              disposition: String,
              filename: String,
              sha256: T.nilable(String),
              size_bytes: T.nilable(Integer),
              url: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # MIME Content-ID for inline references.
            content_id:,
            content_type:,
            # MIME disposition (e.g. `attachment` or `inline`). Runtime passes through the
            # stored value without enforcing an enum.
            disposition:,
            filename:,
            # SHA-256 hex digest of the attachment content.
            sha256:,
            # Attachment size in bytes.
            size_bytes:,
            # Telnyx-hosted public URL for the attachment content.
            url:
          )
          end

          sig do
            override.returns(
              {
                content_id: T.nilable(String),
                content_type: String,
                disposition: String,
                filename: String,
                sha256: T.nilable(String),
                size_bytes: T.nilable(Integer),
                url: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end

        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::EmailInboxes::EmailMessage::RecordType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMAIL_MESSAGE =
            T.let(
              :email_message,
              Telnyx::EmailInboxes::EmailMessage::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::EmailInboxes::EmailMessage::RecordType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Current status of an email message. Lifecycle statuses (queued, scheduled, etc.)
        # are set on creation. Delivery statuses (delivered, bounced, etc.) are updated by
        # delivery event consumers.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::EmailInboxes::EmailMessage::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          QUEUED =
            T.let(
              :queued,
              Telnyx::EmailInboxes::EmailMessage::Status::TaggedSymbol
            )
          SCHEDULED =
            T.let(
              :scheduled,
              Telnyx::EmailInboxes::EmailMessage::Status::TaggedSymbol
            )
          CANCELLED =
            T.let(
              :cancelled,
              Telnyx::EmailInboxes::EmailMessage::Status::TaggedSymbol
            )
          SANDBOX =
            T.let(
              :sandbox,
              Telnyx::EmailInboxes::EmailMessage::Status::TaggedSymbol
            )
          SENDING =
            T.let(
              :sending,
              Telnyx::EmailInboxes::EmailMessage::Status::TaggedSymbol
            )
          SENT =
            T.let(
              :sent,
              Telnyx::EmailInboxes::EmailMessage::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              Telnyx::EmailInboxes::EmailMessage::Status::TaggedSymbol
            )
          DEFERRED =
            T.let(
              :deferred,
              Telnyx::EmailInboxes::EmailMessage::Status::TaggedSymbol
            )
          DELIVERED =
            T.let(
              :delivered,
              Telnyx::EmailInboxes::EmailMessage::Status::TaggedSymbol
            )
          BOUNCED =
            T.let(
              :bounced,
              Telnyx::EmailInboxes::EmailMessage::Status::TaggedSymbol
            )
          COMPLAINED =
            T.let(
              :complained,
              Telnyx::EmailInboxes::EmailMessage::Status::TaggedSymbol
            )
          REJECTED =
            T.let(
              :rejected,
              Telnyx::EmailInboxes::EmailMessage::Status::TaggedSymbol
            )
          OPENED =
            T.let(
              :opened,
              Telnyx::EmailInboxes::EmailMessage::Status::TaggedSymbol
            )
          CLICKED =
            T.let(
              :clicked,
              Telnyx::EmailInboxes::EmailMessage::Status::TaggedSymbol
            )
          UNSUBSCRIBED =
            T.let(
              :unsubscribed,
              Telnyx::EmailInboxes::EmailMessage::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::EmailInboxes::EmailMessage::Status::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
