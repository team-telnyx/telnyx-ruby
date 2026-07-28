# typed: strong

module Telnyx
  module Models
    class EmailMessageBatchParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::EmailMessageBatchParams, Telnyx::Internal::AnyHash)
        end

      sig { returns(T::Array[Telnyx::EmailMessageBatchParams::Message]) }
      attr_accessor :messages

      # Applies sandbox mode to all messages in the batch. Overrides any per-message
      # sandbox_mode in the messages array.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :sandbox_mode

      sig { params(sandbox_mode: T::Boolean).void }
      attr_writer :sandbox_mode

      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      sig do
        params(
          messages: T::Array[Telnyx::EmailMessageBatchParams::Message::OrHash],
          sandbox_mode: T::Boolean,
          idempotency_key: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        messages:,
        # Applies sandbox mode to all messages in the batch. Overrides any per-message
        # sandbox_mode in the messages array.
        sandbox_mode: nil,
        idempotency_key: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            messages: T::Array[Telnyx::EmailMessageBatchParams::Message],
            sandbox_mode: T::Boolean,
            idempotency_key: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Message < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::EmailMessageBatchParams::Message,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.any(String, Telnyx::EmailInboxes::EmailAddress)) }
        attr_accessor :from

        sig do
          returns(T::Array[T.any(String, Telnyx::EmailInboxes::EmailAddress)])
        end
        attr_accessor :to

        sig { returns(T.nilable(T::Array[Telnyx::AttachmentRequest])) }
        attr_reader :attachments

        sig do
          params(attachments: T::Array[Telnyx::AttachmentRequest::OrHash]).void
        end
        attr_writer :attachments

        sig do
          returns(
            T.nilable(
              T::Array[T.any(String, Telnyx::EmailInboxes::EmailAddress)]
            )
          )
        end
        attr_reader :bcc

        sig do
          params(
            bcc:
              T::Array[
                T.any(String, Telnyx::EmailInboxes::EmailAddress::OrHash)
              ]
          ).void
        end
        attr_writer :bcc

        sig do
          returns(
            T.nilable(
              T::Array[T.any(String, Telnyx::EmailInboxes::EmailAddress)]
            )
          )
        end
        attr_reader :cc

        sig do
          params(
            cc:
              T::Array[
                T.any(String, Telnyx::EmailInboxes::EmailAddress::OrHash)
              ]
          ).void
        end
        attr_writer :cc

        # Optional display name for string `from`; overrides `from.name` when provided.
        sig { returns(T.nilable(String)) }
        attr_reader :from_name

        sig { params(from_name: String).void }
        attr_writer :from_name

        # Optional unsubscribe-group UUID used for group-scoped suppression checks and
        # unsubscribe handling.
        sig { returns(T.nilable(String)) }
        attr_accessor :group_id

        # Custom email headers. Write-only; not returned in responses.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :headers

        sig { params(headers: T::Hash[Symbol, String]).void }
        attr_writer :headers

        # HTML email body. Returned only by `GET /email_messages/{id}`; omitted from
        # create and list responses.
        sig { returns(T.nilable(String)) }
        attr_reader :html_body

        sig { params(html_body: String).void }
        attr_writer :html_body

        # When true, allows delivery to recipients whose suppressions explicitly permit an
        # override. Hard bounces, spam complaints, and invalid-address suppressions cannot
        # be overridden. Requires the `email:override` API scope.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :ignore_suppression

        sig { params(ignore_suppression: T::Boolean).void }
        attr_writer :ignore_suppression

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :inline_css

        sig { params(inline_css: T::Boolean).void }
        attr_writer :inline_css

        # Custom metadata. Write-only; not returned in responses.
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, T.anything]).void }
        attr_writer :metadata

        # Reply-to address. If provided as an object with a name, only the email is
        # stored; the name is ignored.
        sig do
          returns(T.nilable(T.any(String, Telnyx::EmailInboxes::EmailAddress)))
        end
        attr_reader :reply_to

        sig do
          params(
            reply_to: T.any(String, Telnyx::EmailInboxes::EmailAddress::OrHash)
          ).void
        end
        attr_writer :reply_to

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :sandbox_mode

        sig { params(sandbox_mode: T::Boolean).void }
        attr_writer :sandbox_mode

        # Future ISO 8601 time to schedule sending. Invalid or past timestamps are
        # silently ignored and the email is sent immediately. The legacy alias `send_at`
        # is still accepted for backward compatibility; when both are provided,
        # `scheduled_at` wins.
        sig { returns(T.nilable(Time)) }
        attr_accessor :scheduled_at

        # Deprecated alias for `scheduled_at`.
        sig { returns(T.nilable(Time)) }
        attr_reader :send_at

        sig { params(send_at: Time).void }
        attr_writer :send_at

        # Required unless `template_id` is supplied. When using a template, the template's
        # subject is rendered; if the template has no subject or renders empty, the
        # request returns 400.
        sig { returns(T.nilable(String)) }
        attr_reader :subject

        sig { params(subject: String).void }
        attr_writer :subject

        # Tags for categorization and reporting. Stored on the message and propagated to
        # Email Detail Records. Not returned in API responses.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :tags

        sig { params(tags: T::Array[String]).void }
        attr_writer :tags

        sig { returns(T.nilable(String)) }
        attr_reader :template_id

        sig { params(template_id: String).void }
        attr_writer :template_id

        # Variables for Liquid template rendering. Non-object values may cause a 422
        # validation error on message creation, but are silently treated as an empty
        # object for template rendering.
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :template_variables

        sig { params(template_variables: T::Hash[Symbol, T.anything]).void }
        attr_writer :template_variables

        # Plain text email body. Returned only by `GET /email_messages/{id}`; omitted from
        # create and list responses.
        sig { returns(T.nilable(String)) }
        attr_reader :text_body

        sig { params(text_body: String).void }
        attr_writer :text_body

        # Per-send open and click tracking overrides. Omitted properties inherit the
        # sender domain's tracking settings.
        sig { returns(T.nilable(Telnyx::TrackingSettings)) }
        attr_reader :tracking_settings

        sig { params(tracking_settings: Telnyx::TrackingSettings::OrHash).void }
        attr_writer :tracking_settings

        # A single message in a batch create request. This schema mirrors
        # `CreateEmailRequest` EXCEPT it does not accept the reply/forward threading
        # parameters (`in_reply_to_message_id`, `reply_to_all`, `forward_of_message_id`) —
        # those are single-send-only in Phase 1 (MSG-1491) and are not yet implemented on
        # the batch endpoint. Recipient email addresses must be unique across `to`, `cc`,
        # and `bcc` after case-insensitive normalization. Duplicate recipients return
        # `400`.
        sig do
          params(
            from: T.any(String, Telnyx::EmailInboxes::EmailAddress::OrHash),
            to:
              T::Array[
                T.any(String, Telnyx::EmailInboxes::EmailAddress::OrHash)
              ],
            attachments: T::Array[Telnyx::AttachmentRequest::OrHash],
            bcc:
              T::Array[
                T.any(String, Telnyx::EmailInboxes::EmailAddress::OrHash)
              ],
            cc:
              T::Array[
                T.any(String, Telnyx::EmailInboxes::EmailAddress::OrHash)
              ],
            from_name: String,
            group_id: T.nilable(String),
            headers: T::Hash[Symbol, String],
            html_body: String,
            ignore_suppression: T::Boolean,
            inline_css: T::Boolean,
            metadata: T::Hash[Symbol, T.anything],
            reply_to: T.any(String, Telnyx::EmailInboxes::EmailAddress::OrHash),
            sandbox_mode: T::Boolean,
            scheduled_at: T.nilable(Time),
            send_at: Time,
            subject: String,
            tags: T::Array[String],
            template_id: String,
            template_variables: T::Hash[Symbol, T.anything],
            text_body: String,
            tracking_settings: Telnyx::TrackingSettings::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          from:,
          to:,
          attachments: nil,
          bcc: nil,
          cc: nil,
          # Optional display name for string `from`; overrides `from.name` when provided.
          from_name: nil,
          # Optional unsubscribe-group UUID used for group-scoped suppression checks and
          # unsubscribe handling.
          group_id: nil,
          # Custom email headers. Write-only; not returned in responses.
          headers: nil,
          # HTML email body. Returned only by `GET /email_messages/{id}`; omitted from
          # create and list responses.
          html_body: nil,
          # When true, allows delivery to recipients whose suppressions explicitly permit an
          # override. Hard bounces, spam complaints, and invalid-address suppressions cannot
          # be overridden. Requires the `email:override` API scope.
          ignore_suppression: nil,
          inline_css: nil,
          # Custom metadata. Write-only; not returned in responses.
          metadata: nil,
          # Reply-to address. If provided as an object with a name, only the email is
          # stored; the name is ignored.
          reply_to: nil,
          sandbox_mode: nil,
          # Future ISO 8601 time to schedule sending. Invalid or past timestamps are
          # silently ignored and the email is sent immediately. The legacy alias `send_at`
          # is still accepted for backward compatibility; when both are provided,
          # `scheduled_at` wins.
          scheduled_at: nil,
          # Deprecated alias for `scheduled_at`.
          send_at: nil,
          # Required unless `template_id` is supplied. When using a template, the template's
          # subject is rendered; if the template has no subject or renders empty, the
          # request returns 400.
          subject: nil,
          # Tags for categorization and reporting. Stored on the message and propagated to
          # Email Detail Records. Not returned in API responses.
          tags: nil,
          template_id: nil,
          # Variables for Liquid template rendering. Non-object values may cause a 422
          # validation error on message creation, but are silently treated as an empty
          # object for template rendering.
          template_variables: nil,
          # Plain text email body. Returned only by `GET /email_messages/{id}`; omitted from
          # create and list responses.
          text_body: nil,
          # Per-send open and click tracking overrides. Omitted properties inherit the
          # sender domain's tracking settings.
          tracking_settings: nil
        )
        end

        sig do
          override.returns(
            {
              from: T.any(String, Telnyx::EmailInboxes::EmailAddress),
              to: T::Array[T.any(String, Telnyx::EmailInboxes::EmailAddress)],
              attachments: T::Array[Telnyx::AttachmentRequest],
              bcc: T::Array[T.any(String, Telnyx::EmailInboxes::EmailAddress)],
              cc: T::Array[T.any(String, Telnyx::EmailInboxes::EmailAddress)],
              from_name: String,
              group_id: T.nilable(String),
              headers: T::Hash[Symbol, String],
              html_body: String,
              ignore_suppression: T::Boolean,
              inline_css: T::Boolean,
              metadata: T::Hash[Symbol, T.anything],
              reply_to: T.any(String, Telnyx::EmailInboxes::EmailAddress),
              sandbox_mode: T::Boolean,
              scheduled_at: T.nilable(Time),
              send_at: Time,
              subject: String,
              tags: T::Array[String],
              template_id: String,
              template_variables: T::Hash[Symbol, T.anything],
              text_body: String,
              tracking_settings: Telnyx::TrackingSettings
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
