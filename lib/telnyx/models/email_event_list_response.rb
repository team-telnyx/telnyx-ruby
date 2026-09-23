# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailEvents#list
    class EmailEventListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::EmailEventListResponse::Data>]
      required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::EmailEventListResponse::Data] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::EmailEventListResponse::Meta]
      required :meta, -> { Telnyx::Models::EmailEventListResponse::Meta }

      # @!method initialize(data:, meta:)
      #   @param data [Array<Telnyx::Models::EmailEventListResponse::Data>]
      #   @param meta [Telnyx::Models::EmailEventListResponse::Meta]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Event UUID.
        #
        #   @return [String]
        required :id, String

        # @!attribute canonical_event_type
        #   Additive canonical outcome name, prefixed with `email.`. Gateway rejection is
        #   `email.gw_reject`, ambiguous injection timeout is `email.injection_timeout`, and
        #   MTA expiration is `email.expired`. Unchanged outcomes retain their names.
        #   Existing stored rows are translated only when recorded payload evidence proves
        #   the outcome; a legacy failed row is not guessed or sharpened.
        #
        #   @return [String]
        required :canonical_event_type, String

        # @!attribute event_type
        #   Legacy customer-visible event name, prefixed with `email.`. Gateway rejections
        #   render `email.failed`; MTA expirations render `email.bounced`. Webhook
        #   subscription allowlists match the legacy name.
        #
        #   @return [String]
        required :event_type, String

        # @!attribute occurred_at
        #
        #   @return [Time]
        required :occurred_at, Time

        # @!attribute payload
        #   Payload returned by GET /email_events. Every row includes id, status, and
        #   occurred_at. Recipient-scoped rows also include recipient_id, from, subject, and
        #   exactly one object-valued to, cc, or bcc field. Legacy or message-scoped rows
        #   can omit recipient_id and use object-valued or string-valued to/cc fields,
        #   including an empty string when no address exists; bcc is redacted. If the
        #   related message or recipient cannot be loaded, the minimal fallback can omit
        #   from, subject, and recipient fields. Additional persisted public evidence can be
        #   present.
        #
        #   @return [Telnyx::Models::EmailEventListResponse::Data::Payload]
        required :payload, -> { Telnyx::Models::EmailEventListResponse::Data::Payload }

        # @!attribute recipient_id
        #   Durable email recipient UUID. Present for recipient-scoped events, including
        #   each queued, sending, sandbox, cancelled, and daily_limit_exceeded fan-out
        #   event.
        #
        #   @return [String, nil]
        optional :recipient_id, String

        # @!method initialize(id:, canonical_event_type:, event_type:, occurred_at:, payload:, recipient_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::EmailEventListResponse::Data} for more details.
        #
        #   An account-polling event. The envelope is webhook-shaped, but polling preserves
        #   stored-event cardinality: queued, sending, sandbox, cancelled, and
        #   daily_limit_exceeded message events fan out per recipient; scheduled remains one
        #   message-scoped row. Payload fields vary among recipient-scoped, message-scoped,
        #   and minimal fallback rows.
        #
        #   @param id [String] Event UUID.
        #
        #   @param canonical_event_type [String] Additive canonical outcome name, prefixed with `email.`. Gateway rejection is `e
        #
        #   @param event_type [String] Legacy customer-visible event name, prefixed with `email.`. Gateway rejections r
        #
        #   @param occurred_at [Time]
        #
        #   @param payload [Telnyx::Models::EmailEventListResponse::Data::Payload] Payload returned by GET /email_events. Every row includes id, status, and occurr
        #
        #   @param recipient_id [String] Durable email recipient UUID. Present for recipient-scoped events, including eac

        # @see Telnyx::Models::EmailEventListResponse::Data#payload
        class Payload < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   Email message UUID.
          #
          #   @return [String]
          required :id, String

          # @!attribute occurred_at
          #
          #   @return [Time]
          required :occurred_at, Time

          # @!attribute status
          #   Stored event outcome slug, not the authoritative recipient status. Account
          #   polling returns the stored name, including suppression, scan, and quarantine
          #   lifecycle names. Webhooks retain legacy payload names: gateway rejections use
          #   failed and MTA expirations use bounced. New sharp stored rows can expose
          #   gw_reject, injection_timeout, or expired. Use the envelope canonical_event_type
          #   to identify the outcome across surfaces.
          #
          #   @return [Symbol, Telnyx::Models::EmailEventListResponse::Data::Payload::Status]
          required :status, enum: -> { Telnyx::Models::EmailEventListResponse::Data::Payload::Status }

          # @!attribute bcc
          #
          #   @return [Telnyx::Models::EmailWebhookRecipient, Symbol, Telnyx::Models::EmailEventListResponse::Data::Payload::Bcc, nil]
          optional :bcc, union: -> { Telnyx::Models::EmailEventListResponse::Data::Payload::Bcc }

          # @!attribute cc
          #   Legacy message-scoped address, or an empty string when absent.
          #
          #   @return [Telnyx::Models::EmailWebhookRecipient, String, nil]
          optional :cc, union: -> { Telnyx::Models::EmailEventListResponse::Data::Payload::Cc }

          # @!attribute from
          #   Sender projection in account event polling. The display name is explicitly null
          #   when the message has no sender name.
          #
          #   @return [Telnyx::Models::EmailEventListResponse::Data::Payload::From, nil]
          optional :from, -> { Telnyx::Models::EmailEventListResponse::Data::Payload::From }

          # @!attribute recipient_id
          #   Durable email recipient UUID. Present for recipient-scoped events.
          #
          #   @return [String, nil]
          optional :recipient_id, String

          # @!attribute subject
          #
          #   @return [String, nil]
          optional :subject, String

          # @!attribute to
          #   Legacy message-scoped address, or an empty string when absent.
          #
          #   @return [Telnyx::Models::EmailWebhookRecipient, String, nil]
          optional :to, union: -> { Telnyx::Models::EmailEventListResponse::Data::Payload::To }

          # @!method initialize(id:, occurred_at:, status:, bcc: nil, cc: nil, from: nil, recipient_id: nil, subject: nil, to: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::EmailEventListResponse::Data::Payload} for more details.
          #
          #   Payload returned by GET /email_events. Every row includes id, status, and
          #   occurred_at. Recipient-scoped rows also include recipient_id, from, subject, and
          #   exactly one object-valued to, cc, or bcc field. Legacy or message-scoped rows
          #   can omit recipient_id and use object-valued or string-valued to/cc fields,
          #   including an empty string when no address exists; bcc is redacted. If the
          #   related message or recipient cannot be loaded, the minimal fallback can omit
          #   from, subject, and recipient fields. Additional persisted public evidence can be
          #   present.
          #
          #   @param id [String] Email message UUID.
          #
          #   @param occurred_at [Time]
          #
          #   @param status [Symbol, Telnyx::Models::EmailEventListResponse::Data::Payload::Status] Stored event outcome slug, not the authoritative recipient status. Account polli
          #
          #   @param bcc [Telnyx::Models::EmailWebhookRecipient, Symbol, Telnyx::Models::EmailEventListResponse::Data::Payload::Bcc]
          #
          #   @param cc [Telnyx::Models::EmailWebhookRecipient, String] Legacy message-scoped address, or an empty string when absent.
          #
          #   @param from [Telnyx::Models::EmailEventListResponse::Data::Payload::From] Sender projection in account event polling. The display name is explicitly null
          #
          #   @param recipient_id [String] Durable email recipient UUID. Present for recipient-scoped events.
          #
          #   @param subject [String]
          #
          #   @param to [Telnyx::Models::EmailWebhookRecipient, String] Legacy message-scoped address, or an empty string when absent.

          # Stored event outcome slug, not the authoritative recipient status. Account
          # polling returns the stored name, including suppression, scan, and quarantine
          # lifecycle names. Webhooks retain legacy payload names: gateway rejections use
          # failed and MTA expirations use bounced. New sharp stored rows can expose
          # gw_reject, injection_timeout, or expired. Use the envelope canonical_event_type
          # to identify the outcome across surfaces.
          #
          # @see Telnyx::Models::EmailEventListResponse::Data::Payload#status
          module Status
            extend Telnyx::Internal::Type::Enum

            QUEUED = :queued
            DEFERRED = :deferred
            SCHEDULED = :scheduled
            CANCELLED = :cancelled
            SANDBOX = :sandbox
            SENDING = :sending
            SENT = :sent
            FAILED = :failed
            DELIVERED = :delivered
            BOUNCED = :bounced
            COMPLAINED = :complained
            SUPPRESSED = :suppressed
            REJECTED = :rejected
            OPENED = :opened
            CLICKED = :clicked
            UNSUBSCRIBED = :unsubscribed
            DAILY_LIMIT_EXCEEDED = :daily_limit_exceeded
            SCAN_DEFERRED = :scan_deferred
            QUARANTINED = :quarantined
            QUARANTINE_RELEASED = :quarantine_released
            QUARANTINE_RELEASE_DISPATCHED = :quarantine_release_dispatched
            QUARANTINE_REJECTED = :quarantine_rejected
            QUARANTINE_EXPIRED = :quarantine_expired
            GW_REJECT = :gw_reject
            INJECTION_TIMEOUT = :injection_timeout
            EXPIRED = :expired

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Telnyx::Models::EmailEventListResponse::Data::Payload#bcc
          module Bcc
            extend Telnyx::Internal::Type::Union

            variant -> { Telnyx::EmailWebhookRecipient }

            variant const: -> { Telnyx::Models::EmailEventListResponse::Data::Payload::Bcc::REDACTED }

            # @!method self.variants
            #   @return [Array(Telnyx::Models::EmailWebhookRecipient, Symbol)]

            define_sorbet_constant!(:Variants) do
              T.type_alias do
                T.any(
                  Telnyx::EmailWebhookRecipient,
                  Telnyx::Models::EmailEventListResponse::Data::Payload::Bcc::TaggedSymbol
                )
              end
            end

            # @!group

            REDACTED = :redacted

            # @!endgroup
          end

          # Legacy message-scoped address, or an empty string when absent.
          #
          # @see Telnyx::Models::EmailEventListResponse::Data::Payload#cc
          module Cc
            extend Telnyx::Internal::Type::Union

            variant -> { Telnyx::EmailWebhookRecipient }

            # Legacy message-scoped address, or an empty string when absent.
            variant String

            # @!method self.variants
            #   @return [Array(Telnyx::Models::EmailWebhookRecipient, String)]
          end

          # @see Telnyx::Models::EmailEventListResponse::Data::Payload#from
          class From < Telnyx::Internal::Type::BaseModel
            # @!attribute email
            #
            #   @return [String]
            required :email, String

            # @!attribute name
            #
            #   @return [String, nil]
            required :name, String, nil?: true

            # @!method initialize(email:, name:)
            #   Sender projection in account event polling. The display name is explicitly null
            #   when the message has no sender name.
            #
            #   @param email [String]
            #   @param name [String, nil]
          end

          # Legacy message-scoped address, or an empty string when absent.
          #
          # @see Telnyx::Models::EmailEventListResponse::Data::Payload#to
          module To
            extend Telnyx::Internal::Type::Union

            variant -> { Telnyx::EmailWebhookRecipient }

            # Legacy message-scoped address, or an empty string when absent.
            variant String

            # @!method self.variants
            #   @return [Array(Telnyx::Models::EmailWebhookRecipient, String)]
          end
        end
      end

      # @see Telnyx::Models::EmailEventListResponse#meta
      class Meta < Telnyx::Internal::Type::BaseModel
        # @!attribute page_size
        #
        #   @return [Integer]
        required :page_size, Integer

        # @!attribute time_range
        #
        #   @return [Telnyx::Models::TimeRange]
        required :time_range, -> { Telnyx::TimeRange }

        # @!attribute page_cursor
        #   Cursor for the next page, when more results are available.
        #
        #   @return [String, nil]
        optional :page_cursor, String

        # @!method initialize(page_size:, time_range:, page_cursor: nil)
        #   @param page_size [Integer]
        #
        #   @param time_range [Telnyx::Models::TimeRange]
        #
        #   @param page_cursor [String] Cursor for the next page, when more results are available.
      end
    end
  end
end
