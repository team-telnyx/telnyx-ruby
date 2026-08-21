# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailMessages#batch
    class EmailMessageBatchParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute messages
      #
      #   @return [Array<Telnyx::Models::EmailMessageBatchParams::Message>]
      required :messages, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::EmailMessageBatchParams::Message] }

      # @!attribute sandbox_mode
      #   Applies sandbox mode to all messages in the batch. Overrides any per-message
      #   sandbox_mode in the messages array.
      #
      #   @return [Boolean, nil]
      optional :sandbox_mode, Telnyx::Internal::Type::Boolean

      # @!attribute idempotency_key
      #
      #   @return [String, nil]
      optional :idempotency_key, String

      # @!method initialize(messages:, sandbox_mode: nil, idempotency_key: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::EmailMessageBatchParams} for more details.
      #
      #   @param messages [Array<Telnyx::Models::EmailMessageBatchParams::Message>]
      #
      #   @param sandbox_mode [Boolean] Applies sandbox mode to all messages in the batch. Overrides any per-message san
      #
      #   @param idempotency_key [String]
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Message < Telnyx::Internal::Type::BaseModel
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

        # @!method initialize(from:, to:, attachments: nil, bcc: nil, cc: nil, from_name: nil, group_id: nil, headers: nil, html_body: nil, ignore_suppression: nil, inline_css: nil, metadata: nil, reply_to: nil, sandbox_mode: nil, scheduled_at: nil, send_at: nil, subject: nil, tags: nil, template_id: nil, template_variables: nil, text_body: nil, tracking_settings: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::EmailMessageBatchParams::Message} for more details.
        #
        #   A single message in a batch create request. This schema mirrors
        #   `CreateEmailRequest` EXCEPT it does not accept the reply/forward threading
        #   parameters (`in_reply_to_message_id`, `reply_to_all`, `forward_of_message_id`) —
        #   those are single-send-only in Phase 1 (MSG-1491) and are not yet implemented on
        #   the batch endpoint. Recipient email addresses must be unique across `to`, `cc`,
        #   and `bcc` after case-insensitive normalization. Duplicate recipients return
        #   `400`.
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
        #   @param inline_css [Boolean]
        #
        #   @param metadata [Hash{Symbol=>Object}] Custom metadata. Write-only; not returned in responses.
        #
        #   @param reply_to [String, Telnyx::Models::EmailInboxes::EmailAddress] Reply-to address. If provided as an object with a name, only the email is stored
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
      end
    end
  end
end
