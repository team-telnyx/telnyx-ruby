# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailMessages#create
    class EmailMessageCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute from
      #
      #   @return [String, Telnyx::Models::EmailInboxes::EmailAddress]
      required :from, union: -> { Telnyx::EmailAddressInput }

      # @!attribute to
      #
      #   @return [Array<String, Telnyx::Models::EmailInboxes::EmailAddress>]
      required :to, -> { Telnyx::Internal::Type::ArrayOf[union: Telnyx::EmailAddressInput] }

      # @!attribute attachments
      #
      #   @return [Array<Telnyx::Models::AttachmentRequest>, nil]
      optional :attachments, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AttachmentRequest] }

      # @!attribute bcc
      #
      #   @return [Array<String, Telnyx::Models::EmailInboxes::EmailAddress>, nil]
      optional :bcc, -> { Telnyx::Internal::Type::ArrayOf[union: Telnyx::EmailAddressInput] }

      # @!attribute cc
      #
      #   @return [Array<String, Telnyx::Models::EmailInboxes::EmailAddress>, nil]
      optional :cc, -> { Telnyx::Internal::Type::ArrayOf[union: Telnyx::EmailAddressInput] }

      # @!attribute forward_of_message_id
      #   Telnyx message UUID of the message this send forwards. Forwarded messages start
      #   a NEW thread per RFC 5322 — NO `In-Reply-To` or `References` headers are set on
      #   the outbound MIME. The id is recorded in the message's metadata for EDR
      #   provenance only.
      #
      #   The id is validated as a UUID but is NOT looked up against the message store —
      #   existence is the caller's responsibility (the forward is pure metadata; it does
      #   not affect delivery). Cannot be combined with `in_reply_to_message_id` (422).
      #
      #   @return [String, nil]
      optional :forward_of_message_id, String, nil?: true

      # @!attribute from_name
      #   Optional display name for string `from`; overrides `from.name` when provided.
      #
      #   @return [String, nil]
      optional :from_name, String

      # @!attribute group_id
      #   Optional unsubscribe-group UUID used for group-scoped suppression checks and
      #   unsubscribe handling.
      #
      #   @return [String, nil]
      optional :group_id, String, nil?: true

      # @!attribute headers
      #   Custom email headers. Write-only; not returned in responses.
      #
      #   @return [Hash{Symbol=>String}, nil]
      optional :headers, Telnyx::Internal::Type::HashOf[String]

      # @!attribute html_body
      #   HTML email body. Returned only by `GET /email_messages/{id}`; omitted from
      #   create and list responses.
      #
      #   @return [String, nil]
      optional :html_body, String

      # @!attribute ignore_suppression
      #   When true, allows delivery to recipients whose suppressions explicitly permit an
      #   override. Hard bounces, spam complaints, and invalid-address suppressions cannot
      #   be overridden. Requires the `email:override` API scope.
      #
      #   @return [Boolean, nil]
      optional :ignore_suppression, Telnyx::Internal::Type::Boolean

      # @!attribute in_reply_to_message_id
      #   Telnyx message UUID of the message this send replies to. When provided, the API
      #   sets RFC 5322 `In-Reply-To` and `References` headers on the outbound MIME so the
      #   recipient's mailbox (Gmail/Outlook) threads it correctly. The parent is looked
      #   up under the caller's account scope; a UUID belonging to another account yields
      #   a non-enumerating 404.
      #
      #   Wire-only (Phase 1): the API sets the headers and does NOT resolve or mutate
      #   `thread_id` on the server side. Messages sent without this parameter are
      #   standalone (no threading headers injected).
      #
      #   Cannot be combined with `forward_of_message_id` (422).
      #
      #   @return [String, nil]
      optional :in_reply_to_message_id, String, nil?: true

      # @!attribute inline_css
      #
      #   @return [Boolean, nil]
      optional :inline_css, Telnyx::Internal::Type::Boolean

      # @!attribute metadata
      #   Custom metadata. Write-only; not returned in responses.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :metadata, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

      # @!attribute reply_to
      #   Reply-to address. If provided as an object with a name, only the email is
      #   stored; the name is ignored.
      #
      #   @return [String, Telnyx::Models::EmailInboxes::EmailAddress, nil]
      optional :reply_to, union: -> { Telnyx::EmailAddressInput }

      # @!attribute reply_to_all
      #   Indicates a reply-all intent. In Phase 1 (wire-only) this does not change the
      #   threading headers — recipient selection is customer- controlled (`to`/`cc`), and
      #   a thread is not defined by its audience. When the referenced message has no
      #   thread context, reply-all degrades to a plain reply (parent ID only in
      #   `References`). The resolution engine (separate work) will expand the ancestor
      #   chain at a later phase with no API change.
      #
      #   Only meaningful alongside `in_reply_to_message_id`.
      #
      #   @return [Boolean, nil]
      optional :reply_to_all, Telnyx::Internal::Type::Boolean, nil?: true

      # @!attribute sandbox_mode
      #
      #   @return [Boolean, nil]
      optional :sandbox_mode, Telnyx::Internal::Type::Boolean

      # @!attribute scheduled_at
      #   Future ISO 8601 time to schedule sending. Invalid or past timestamps are
      #   silently ignored and the email is sent immediately. The legacy alias `send_at`
      #   is still accepted for backward compatibility; when both are provided,
      #   `scheduled_at` wins.
      #
      #   @return [Time, nil]
      optional :scheduled_at, Time, nil?: true

      # @!attribute send_at
      #   @deprecated Use scheduled_at instead.
      #
      #   Deprecated alias for `scheduled_at`.
      #
      #   @return [Time, nil]
      optional :send_at, Time

      # @!attribute subject
      #   Required unless `template_id` is supplied. When using a template, the template's
      #   subject is rendered; if the template has no subject or renders empty, the
      #   request returns 400.
      #
      #   @return [String, nil]
      optional :subject, String

      # @!attribute tags
      #   Tags for categorization and reporting. Stored on the message and propagated to
      #   Email Detail Records. Not returned in API responses.
      #
      #   @return [Array<String>, nil]
      optional :tags, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute template_id
      #
      #   @return [String, nil]
      optional :template_id, String

      # @!attribute template_variables
      #   Variables for Liquid template rendering. Non-object values may cause a 422
      #   validation error on message creation, but are silently treated as an empty
      #   object for template rendering.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :template_variables, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

      # @!attribute text_body
      #   Plain text email body. Returned only by `GET /email_messages/{id}`; omitted from
      #   create and list responses.
      #
      #   @return [String, nil]
      optional :text_body, String

      # @!attribute tracking_settings
      #   Per-send open and click tracking overrides. Omitted properties inherit the
      #   sender domain's tracking settings.
      #
      #   @return [Telnyx::Models::TrackingSettings, nil]
      optional :tracking_settings, -> { Telnyx::TrackingSettings }

      # @!attribute idempotency_key
      #
      #   @return [String, nil]
      optional :idempotency_key, String

      # @!method initialize(from:, to:, attachments: nil, bcc: nil, cc: nil, forward_of_message_id: nil, from_name: nil, group_id: nil, headers: nil, html_body: nil, ignore_suppression: nil, in_reply_to_message_id: nil, inline_css: nil, metadata: nil, reply_to: nil, reply_to_all: nil, sandbox_mode: nil, scheduled_at: nil, send_at: nil, subject: nil, tags: nil, template_id: nil, template_variables: nil, text_body: nil, tracking_settings: nil, idempotency_key: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::EmailMessageCreateParams} for more details.
      #
      #   @param from [String, Telnyx::Models::EmailInboxes::EmailAddress]
      #
      #   @param to [Array<String, Telnyx::Models::EmailInboxes::EmailAddress>]
      #
      #   @param attachments [Array<Telnyx::Models::AttachmentRequest>]
      #
      #   @param bcc [Array<String, Telnyx::Models::EmailInboxes::EmailAddress>]
      #
      #   @param cc [Array<String, Telnyx::Models::EmailInboxes::EmailAddress>]
      #
      #   @param forward_of_message_id [String, nil] Telnyx message UUID of the message this send forwards. Forwarded
      #
      #   @param from_name [String] Optional display name for string `from`; overrides `from.name` when provided.
      #
      #   @param group_id [String, nil] Optional unsubscribe-group UUID used for group-scoped suppression checks and uns
      #
      #   @param headers [Hash{Symbol=>String}] Custom email headers. Write-only; not returned in responses.
      #
      #   @param html_body [String] HTML email body. Returned only by `GET /email_messages/{id}`; omitted from creat
      #
      #   @param ignore_suppression [Boolean] When true, allows delivery to recipients whose suppressions explicitly
      #
      #   @param in_reply_to_message_id [String, nil] Telnyx message UUID of the message this send replies to. When provided,
      #
      #   @param inline_css [Boolean]
      #
      #   @param metadata [Hash{Symbol=>Object}] Custom metadata. Write-only; not returned in responses.
      #
      #   @param reply_to [String, Telnyx::Models::EmailInboxes::EmailAddress] Reply-to address. If provided as an object with a name, only the email is stored
      #
      #   @param reply_to_all [Boolean, nil] Indicates a reply-all intent. In Phase 1 (wire-only) this does not
      #
      #   @param sandbox_mode [Boolean]
      #
      #   @param scheduled_at [Time, nil] Future ISO 8601 time to schedule sending. Invalid or past timestamps
      #
      #   @param send_at [Time] Deprecated alias for `scheduled_at`.
      #
      #   @param subject [String] Required unless `template_id` is supplied. When using a template, the template's
      #
      #   @param tags [Array<String>] Tags for categorization and reporting. Stored on the message and propagated to E
      #
      #   @param template_id [String]
      #
      #   @param template_variables [Hash{Symbol=>Object}] Variables for Liquid template rendering. Non-object values may cause a 422 valid
      #
      #   @param text_body [String] Plain text email body. Returned only by `GET /email_messages/{id}`; omitted from
      #
      #   @param tracking_settings [Telnyx::Models::TrackingSettings] Per-send open and click tracking overrides. Omitted properties inherit the sende
      #
      #   @param idempotency_key [String]
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
