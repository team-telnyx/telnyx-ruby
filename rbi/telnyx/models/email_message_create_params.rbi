# typed: strong

module Telnyx
  module Models
    class EmailMessageCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::EmailMessageCreateParams, Telnyx::Internal::AnyHash)
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
          T.nilable(T::Array[T.any(String, Telnyx::EmailInboxes::EmailAddress)])
        )
      end
      attr_reader :bcc

      sig do
        params(
          bcc:
            T::Array[T.any(String, Telnyx::EmailInboxes::EmailAddress::OrHash)]
        ).void
      end
      attr_writer :bcc

      sig do
        returns(
          T.nilable(T::Array[T.any(String, Telnyx::EmailInboxes::EmailAddress)])
        )
      end
      attr_reader :cc

      sig do
        params(
          cc:
            T::Array[T.any(String, Telnyx::EmailInboxes::EmailAddress::OrHash)]
        ).void
      end
      attr_writer :cc

      # Telnyx message UUID of the message this send forwards. Forwarded messages start
      # a NEW thread per RFC 5322 — NO `In-Reply-To` or `References` headers are set on
      # the outbound MIME. The id is recorded in the message's metadata for EDR
      # provenance only.
      #
      # The id is validated as a UUID but is NOT looked up against the message store —
      # existence is the caller's responsibility (the forward is pure metadata; it does
      # not affect delivery). Cannot be combined with `in_reply_to_message_id` (422).
      sig { returns(T.nilable(String)) }
      attr_accessor :forward_of_message_id

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

      # Telnyx message UUID of the message this send replies to. When provided, the API
      # sets RFC 5322 `In-Reply-To` and `References` headers on the outbound MIME so the
      # recipient's mailbox (Gmail/Outlook) threads it correctly. The parent is looked
      # up under the caller's account scope; a UUID belonging to another account yields
      # a non-enumerating 404.
      #
      # Wire-only (Phase 1): the API sets the headers and does NOT resolve or mutate
      # `thread_id` on the server side. Messages sent without this parameter are
      # standalone (no threading headers injected).
      #
      # Cannot be combined with `forward_of_message_id` (422).
      sig { returns(T.nilable(String)) }
      attr_accessor :in_reply_to_message_id

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

      # Indicates a reply-all intent. In Phase 1 (wire-only) this does not change the
      # threading headers — recipient selection is customer- controlled (`to`/`cc`), and
      # a thread is not defined by its audience. When the referenced message has no
      # thread context, reply-all degrades to a plain reply (parent ID only in
      # `References`). The resolution engine (separate work) will expand the ancestor
      # chain at a later phase with no API change.
      #
      # Only meaningful alongside `in_reply_to_message_id`.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :reply_to_all

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

      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      sig do
        params(
          from: T.any(String, Telnyx::EmailInboxes::EmailAddress::OrHash),
          to:
            T::Array[T.any(String, Telnyx::EmailInboxes::EmailAddress::OrHash)],
          attachments: T::Array[Telnyx::AttachmentRequest::OrHash],
          bcc:
            T::Array[T.any(String, Telnyx::EmailInboxes::EmailAddress::OrHash)],
          cc:
            T::Array[T.any(String, Telnyx::EmailInboxes::EmailAddress::OrHash)],
          forward_of_message_id: T.nilable(String),
          from_name: String,
          group_id: T.nilable(String),
          headers: T::Hash[Symbol, String],
          html_body: String,
          ignore_suppression: T::Boolean,
          in_reply_to_message_id: T.nilable(String),
          inline_css: T::Boolean,
          metadata: T::Hash[Symbol, T.anything],
          reply_to: T.any(String, Telnyx::EmailInboxes::EmailAddress::OrHash),
          reply_to_all: T.nilable(T::Boolean),
          sandbox_mode: T::Boolean,
          scheduled_at: T.nilable(Time),
          send_at: Time,
          subject: String,
          tags: T::Array[String],
          template_id: String,
          template_variables: T::Hash[Symbol, T.anything],
          text_body: String,
          tracking_settings: Telnyx::TrackingSettings::OrHash,
          idempotency_key: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        from:,
        to:,
        attachments: nil,
        bcc: nil,
        cc: nil,
        # Telnyx message UUID of the message this send forwards. Forwarded messages start
        # a NEW thread per RFC 5322 — NO `In-Reply-To` or `References` headers are set on
        # the outbound MIME. The id is recorded in the message's metadata for EDR
        # provenance only.
        #
        # The id is validated as a UUID but is NOT looked up against the message store —
        # existence is the caller's responsibility (the forward is pure metadata; it does
        # not affect delivery). Cannot be combined with `in_reply_to_message_id` (422).
        forward_of_message_id: nil,
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
        # Telnyx message UUID of the message this send replies to. When provided, the API
        # sets RFC 5322 `In-Reply-To` and `References` headers on the outbound MIME so the
        # recipient's mailbox (Gmail/Outlook) threads it correctly. The parent is looked
        # up under the caller's account scope; a UUID belonging to another account yields
        # a non-enumerating 404.
        #
        # Wire-only (Phase 1): the API sets the headers and does NOT resolve or mutate
        # `thread_id` on the server side. Messages sent without this parameter are
        # standalone (no threading headers injected).
        #
        # Cannot be combined with `forward_of_message_id` (422).
        in_reply_to_message_id: nil,
        inline_css: nil,
        # Custom metadata. Write-only; not returned in responses.
        metadata: nil,
        # Reply-to address. If provided as an object with a name, only the email is
        # stored; the name is ignored.
        reply_to: nil,
        # Indicates a reply-all intent. In Phase 1 (wire-only) this does not change the
        # threading headers — recipient selection is customer- controlled (`to`/`cc`), and
        # a thread is not defined by its audience. When the referenced message has no
        # thread context, reply-all degrades to a plain reply (parent ID only in
        # `References`). The resolution engine (separate work) will expand the ancestor
        # chain at a later phase with no API change.
        #
        # Only meaningful alongside `in_reply_to_message_id`.
        reply_to_all: nil,
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
        tracking_settings: nil,
        idempotency_key: nil,
        request_options: {}
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
            forward_of_message_id: T.nilable(String),
            from_name: String,
            group_id: T.nilable(String),
            headers: T::Hash[Symbol, String],
            html_body: String,
            ignore_suppression: T::Boolean,
            in_reply_to_message_id: T.nilable(String),
            inline_css: T::Boolean,
            metadata: T::Hash[Symbol, T.anything],
            reply_to: T.any(String, Telnyx::EmailInboxes::EmailAddress),
            reply_to_all: T.nilable(T::Boolean),
            sandbox_mode: T::Boolean,
            scheduled_at: T.nilable(Time),
            send_at: Time,
            subject: String,
            tags: T::Array[String],
            template_id: String,
            template_variables: T::Hash[Symbol, T.anything],
            text_body: String,
            tracking_settings: Telnyx::TrackingSettings,
            idempotency_key: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
