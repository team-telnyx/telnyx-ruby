# typed: strong

module Telnyx
  module Models
    class EmailEventListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::EmailEventListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Telnyx::Models::EmailEventListResponse::Data]) }
      attr_accessor :data

      sig { returns(Telnyx::Models::EmailEventListResponse::Meta) }
      attr_reader :meta

      sig do
        params(meta: Telnyx::Models::EmailEventListResponse::Meta::OrHash).void
      end
      attr_writer :meta

      sig do
        params(
          data: T::Array[Telnyx::Models::EmailEventListResponse::Data::OrHash],
          meta: Telnyx::Models::EmailEventListResponse::Meta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:, meta:)
      end

      sig do
        override.returns(
          {
            data: T::Array[Telnyx::Models::EmailEventListResponse::Data],
            meta: Telnyx::Models::EmailEventListResponse::Meta
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::EmailEventListResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Event UUID.
        sig { returns(String) }
        attr_accessor :id

        # Additive canonical outcome name, prefixed with `email.`. Gateway rejection is
        # `email.gw_reject`, ambiguous injection timeout is `email.injection_timeout`, and
        # MTA expiration is `email.expired`. Unchanged outcomes retain their names.
        # Existing stored rows are translated only when recorded payload evidence proves
        # the outcome; a legacy failed row is not guessed or sharpened.
        sig { returns(String) }
        attr_accessor :canonical_event_type

        # Legacy customer-visible event name, prefixed with `email.`. Gateway rejections
        # render `email.failed`; MTA expirations render `email.bounced`. Webhook
        # subscription allowlists match the legacy name.
        sig { returns(String) }
        attr_accessor :event_type

        sig { returns(Time) }
        attr_accessor :occurred_at

        # Payload returned by GET /email_events. Every row includes id, status, and
        # occurred_at. Recipient-scoped rows also include recipient_id, from, subject, and
        # exactly one object-valued to, cc, or bcc field. Legacy or message-scoped rows
        # can omit recipient_id and use object-valued or string-valued to/cc fields,
        # including an empty string when no address exists; bcc is redacted. If the
        # related message or recipient cannot be loaded, the minimal fallback can omit
        # from, subject, and recipient fields. Additional persisted public evidence can be
        # present.
        sig { returns(Telnyx::Models::EmailEventListResponse::Data::Payload) }
        attr_reader :payload

        sig do
          params(
            payload:
              Telnyx::Models::EmailEventListResponse::Data::Payload::OrHash
          ).void
        end
        attr_writer :payload

        # Durable email recipient UUID. Present for recipient-scoped events, including
        # each queued, sending, sandbox, cancelled, and daily_limit_exceeded fan-out
        # event.
        sig { returns(T.nilable(String)) }
        attr_reader :recipient_id

        sig { params(recipient_id: String).void }
        attr_writer :recipient_id

        # An account-polling event. The envelope is webhook-shaped, but polling preserves
        # stored-event cardinality: queued, sending, sandbox, cancelled, and
        # daily_limit_exceeded message events fan out per recipient; scheduled remains one
        # message-scoped row. Payload fields vary among recipient-scoped, message-scoped,
        # and minimal fallback rows.
        sig do
          params(
            id: String,
            canonical_event_type: String,
            event_type: String,
            occurred_at: Time,
            payload:
              Telnyx::Models::EmailEventListResponse::Data::Payload::OrHash,
            recipient_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Event UUID.
          id:,
          # Additive canonical outcome name, prefixed with `email.`. Gateway rejection is
          # `email.gw_reject`, ambiguous injection timeout is `email.injection_timeout`, and
          # MTA expiration is `email.expired`. Unchanged outcomes retain their names.
          # Existing stored rows are translated only when recorded payload evidence proves
          # the outcome; a legacy failed row is not guessed or sharpened.
          canonical_event_type:,
          # Legacy customer-visible event name, prefixed with `email.`. Gateway rejections
          # render `email.failed`; MTA expirations render `email.bounced`. Webhook
          # subscription allowlists match the legacy name.
          event_type:,
          occurred_at:,
          # Payload returned by GET /email_events. Every row includes id, status, and
          # occurred_at. Recipient-scoped rows also include recipient_id, from, subject, and
          # exactly one object-valued to, cc, or bcc field. Legacy or message-scoped rows
          # can omit recipient_id and use object-valued or string-valued to/cc fields,
          # including an empty string when no address exists; bcc is redacted. If the
          # related message or recipient cannot be loaded, the minimal fallback can omit
          # from, subject, and recipient fields. Additional persisted public evidence can be
          # present.
          payload:,
          # Durable email recipient UUID. Present for recipient-scoped events, including
          # each queued, sending, sandbox, cancelled, and daily_limit_exceeded fan-out
          # event.
          recipient_id: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              canonical_event_type: String,
              event_type: String,
              occurred_at: Time,
              payload: Telnyx::Models::EmailEventListResponse::Data::Payload,
              recipient_id: String
            }
          )
        end
        def to_hash
        end

        class Payload < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::EmailEventListResponse::Data::Payload,
                Telnyx::Internal::AnyHash
              )
            end

          # Email message UUID.
          sig { returns(String) }
          attr_accessor :id

          sig { returns(Time) }
          attr_accessor :occurred_at

          # Stored event outcome slug, not the authoritative recipient status. Account
          # polling returns the stored name, including suppression, scan, and quarantine
          # lifecycle names. Webhooks retain legacy payload names: gateway rejections use
          # failed and MTA expirations use bounced. New sharp stored rows can expose
          # gw_reject, injection_timeout, or expired. Use the envelope canonical_event_type
          # to identify the outcome across surfaces.
          sig do
            returns(
              Telnyx::Models::EmailEventListResponse::Data::Payload::Status::TaggedSymbol
            )
          end
          attr_accessor :status

          sig do
            returns(
              T.nilable(
                Telnyx::Models::EmailEventListResponse::Data::Payload::Bcc::Variants
              )
            )
          end
          attr_reader :bcc

          sig do
            params(
              bcc:
                T.any(
                  Telnyx::EmailWebhookRecipient::OrHash,
                  Telnyx::Models::EmailEventListResponse::Data::Payload::Bcc::OrSymbol
                )
            ).void
          end
          attr_writer :bcc

          # Legacy message-scoped address, or an empty string when absent.
          sig do
            returns(
              T.nilable(
                Telnyx::Models::EmailEventListResponse::Data::Payload::Cc::Variants
              )
            )
          end
          attr_reader :cc

          sig do
            params(
              cc: T.any(Telnyx::EmailWebhookRecipient::OrHash, String)
            ).void
          end
          attr_writer :cc

          # Sender projection in account event polling. The display name is explicitly null
          # when the message has no sender name.
          sig do
            returns(
              T.nilable(
                Telnyx::Models::EmailEventListResponse::Data::Payload::From
              )
            )
          end
          attr_reader :from

          sig do
            params(
              from:
                Telnyx::Models::EmailEventListResponse::Data::Payload::From::OrHash
            ).void
          end
          attr_writer :from

          # Durable email recipient UUID. Present for recipient-scoped events.
          sig { returns(T.nilable(String)) }
          attr_reader :recipient_id

          sig { params(recipient_id: String).void }
          attr_writer :recipient_id

          sig { returns(T.nilable(String)) }
          attr_reader :subject

          sig { params(subject: String).void }
          attr_writer :subject

          # Legacy message-scoped address, or an empty string when absent.
          sig do
            returns(
              T.nilable(
                Telnyx::Models::EmailEventListResponse::Data::Payload::To::Variants
              )
            )
          end
          attr_reader :to

          sig do
            params(
              to: T.any(Telnyx::EmailWebhookRecipient::OrHash, String)
            ).void
          end
          attr_writer :to

          # Payload returned by GET /email_events. Every row includes id, status, and
          # occurred_at. Recipient-scoped rows also include recipient_id, from, subject, and
          # exactly one object-valued to, cc, or bcc field. Legacy or message-scoped rows
          # can omit recipient_id and use object-valued or string-valued to/cc fields,
          # including an empty string when no address exists; bcc is redacted. If the
          # related message or recipient cannot be loaded, the minimal fallback can omit
          # from, subject, and recipient fields. Additional persisted public evidence can be
          # present.
          sig do
            params(
              id: String,
              occurred_at: Time,
              status:
                Telnyx::Models::EmailEventListResponse::Data::Payload::Status::OrSymbol,
              bcc:
                T.any(
                  Telnyx::EmailWebhookRecipient::OrHash,
                  Telnyx::Models::EmailEventListResponse::Data::Payload::Bcc::OrSymbol
                ),
              cc: T.any(Telnyx::EmailWebhookRecipient::OrHash, String),
              from:
                Telnyx::Models::EmailEventListResponse::Data::Payload::From::OrHash,
              recipient_id: String,
              subject: String,
              to: T.any(Telnyx::EmailWebhookRecipient::OrHash, String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Email message UUID.
            id:,
            occurred_at:,
            # Stored event outcome slug, not the authoritative recipient status. Account
            # polling returns the stored name, including suppression, scan, and quarantine
            # lifecycle names. Webhooks retain legacy payload names: gateway rejections use
            # failed and MTA expirations use bounced. New sharp stored rows can expose
            # gw_reject, injection_timeout, or expired. Use the envelope canonical_event_type
            # to identify the outcome across surfaces.
            status:,
            bcc: nil,
            # Legacy message-scoped address, or an empty string when absent.
            cc: nil,
            # Sender projection in account event polling. The display name is explicitly null
            # when the message has no sender name.
            from: nil,
            # Durable email recipient UUID. Present for recipient-scoped events.
            recipient_id: nil,
            subject: nil,
            # Legacy message-scoped address, or an empty string when absent.
            to: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                occurred_at: Time,
                status:
                  Telnyx::Models::EmailEventListResponse::Data::Payload::Status::TaggedSymbol,
                bcc:
                  Telnyx::Models::EmailEventListResponse::Data::Payload::Bcc::Variants,
                cc:
                  Telnyx::Models::EmailEventListResponse::Data::Payload::Cc::Variants,
                from:
                  Telnyx::Models::EmailEventListResponse::Data::Payload::From,
                recipient_id: String,
                subject: String,
                to:
                  Telnyx::Models::EmailEventListResponse::Data::Payload::To::Variants
              }
            )
          end
          def to_hash
          end

          # Stored event outcome slug, not the authoritative recipient status. Account
          # polling returns the stored name, including suppression, scan, and quarantine
          # lifecycle names. Webhooks retain legacy payload names: gateway rejections use
          # failed and MTA expirations use bounced. New sharp stored rows can expose
          # gw_reject, injection_timeout, or expired. Use the envelope canonical_event_type
          # to identify the outcome across surfaces.
          module Status
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::EmailEventListResponse::Data::Payload::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            QUEUED =
              T.let(
                :queued,
                Telnyx::Models::EmailEventListResponse::Data::Payload::Status::TaggedSymbol
              )
            DEFERRED =
              T.let(
                :deferred,
                Telnyx::Models::EmailEventListResponse::Data::Payload::Status::TaggedSymbol
              )
            SCHEDULED =
              T.let(
                :scheduled,
                Telnyx::Models::EmailEventListResponse::Data::Payload::Status::TaggedSymbol
              )
            CANCELLED =
              T.let(
                :cancelled,
                Telnyx::Models::EmailEventListResponse::Data::Payload::Status::TaggedSymbol
              )
            SANDBOX =
              T.let(
                :sandbox,
                Telnyx::Models::EmailEventListResponse::Data::Payload::Status::TaggedSymbol
              )
            SENDING =
              T.let(
                :sending,
                Telnyx::Models::EmailEventListResponse::Data::Payload::Status::TaggedSymbol
              )
            SENT =
              T.let(
                :sent,
                Telnyx::Models::EmailEventListResponse::Data::Payload::Status::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                Telnyx::Models::EmailEventListResponse::Data::Payload::Status::TaggedSymbol
              )
            DELIVERED =
              T.let(
                :delivered,
                Telnyx::Models::EmailEventListResponse::Data::Payload::Status::TaggedSymbol
              )
            BOUNCED =
              T.let(
                :bounced,
                Telnyx::Models::EmailEventListResponse::Data::Payload::Status::TaggedSymbol
              )
            COMPLAINED =
              T.let(
                :complained,
                Telnyx::Models::EmailEventListResponse::Data::Payload::Status::TaggedSymbol
              )
            SUPPRESSED =
              T.let(
                :suppressed,
                Telnyx::Models::EmailEventListResponse::Data::Payload::Status::TaggedSymbol
              )
            REJECTED =
              T.let(
                :rejected,
                Telnyx::Models::EmailEventListResponse::Data::Payload::Status::TaggedSymbol
              )
            OPENED =
              T.let(
                :opened,
                Telnyx::Models::EmailEventListResponse::Data::Payload::Status::TaggedSymbol
              )
            CLICKED =
              T.let(
                :clicked,
                Telnyx::Models::EmailEventListResponse::Data::Payload::Status::TaggedSymbol
              )
            UNSUBSCRIBED =
              T.let(
                :unsubscribed,
                Telnyx::Models::EmailEventListResponse::Data::Payload::Status::TaggedSymbol
              )
            DAILY_LIMIT_EXCEEDED =
              T.let(
                :daily_limit_exceeded,
                Telnyx::Models::EmailEventListResponse::Data::Payload::Status::TaggedSymbol
              )
            SCAN_DEFERRED =
              T.let(
                :scan_deferred,
                Telnyx::Models::EmailEventListResponse::Data::Payload::Status::TaggedSymbol
              )
            QUARANTINED =
              T.let(
                :quarantined,
                Telnyx::Models::EmailEventListResponse::Data::Payload::Status::TaggedSymbol
              )
            QUARANTINE_RELEASED =
              T.let(
                :quarantine_released,
                Telnyx::Models::EmailEventListResponse::Data::Payload::Status::TaggedSymbol
              )
            QUARANTINE_RELEASE_DISPATCHED =
              T.let(
                :quarantine_release_dispatched,
                Telnyx::Models::EmailEventListResponse::Data::Payload::Status::TaggedSymbol
              )
            QUARANTINE_REJECTED =
              T.let(
                :quarantine_rejected,
                Telnyx::Models::EmailEventListResponse::Data::Payload::Status::TaggedSymbol
              )
            QUARANTINE_EXPIRED =
              T.let(
                :quarantine_expired,
                Telnyx::Models::EmailEventListResponse::Data::Payload::Status::TaggedSymbol
              )
            GW_REJECT =
              T.let(
                :gw_reject,
                Telnyx::Models::EmailEventListResponse::Data::Payload::Status::TaggedSymbol
              )
            INJECTION_TIMEOUT =
              T.let(
                :injection_timeout,
                Telnyx::Models::EmailEventListResponse::Data::Payload::Status::TaggedSymbol
              )
            EXPIRED =
              T.let(
                :expired,
                Telnyx::Models::EmailEventListResponse::Data::Payload::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::EmailEventListResponse::Data::Payload::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module Bcc
            extend Telnyx::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  Telnyx::EmailWebhookRecipient,
                  Telnyx::Models::EmailEventListResponse::Data::Payload::Bcc::TaggedSymbol
                )
              end

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::EmailEventListResponse::Data::Payload::Bcc::Variants
                ]
              )
            end
            def self.variants
            end

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::EmailEventListResponse::Data::Payload::Bcc
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            REDACTED =
              T.let(
                :redacted,
                Telnyx::Models::EmailEventListResponse::Data::Payload::Bcc::TaggedSymbol
              )
          end

          # Legacy message-scoped address, or an empty string when absent.
          module Cc
            extend Telnyx::Internal::Type::Union

            Variants =
              T.type_alias { T.any(Telnyx::EmailWebhookRecipient, String) }

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::EmailEventListResponse::Data::Payload::Cc::Variants
                ]
              )
            end
            def self.variants
            end
          end

          class From < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::EmailEventListResponse::Data::Payload::From,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :email

            sig { returns(T.nilable(String)) }
            attr_accessor :name

            # Sender projection in account event polling. The display name is explicitly null
            # when the message has no sender name.
            sig do
              params(email: String, name: T.nilable(String)).returns(
                T.attached_class
              )
            end
            def self.new(email:, name:)
            end

            sig { override.returns({ email: String, name: T.nilable(String) }) }
            def to_hash
            end
          end

          # Legacy message-scoped address, or an empty string when absent.
          module To
            extend Telnyx::Internal::Type::Union

            Variants =
              T.type_alias { T.any(Telnyx::EmailWebhookRecipient, String) }

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::EmailEventListResponse::Data::Payload::To::Variants
                ]
              )
            end
            def self.variants
            end
          end
        end
      end

      class Meta < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::EmailEventListResponse::Meta,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :page_size

        sig { returns(Telnyx::TimeRange) }
        attr_reader :time_range

        sig { params(time_range: Telnyx::TimeRange::OrHash).void }
        attr_writer :time_range

        # Cursor for the next page, when more results are available.
        sig { returns(T.nilable(String)) }
        attr_reader :page_cursor

        sig { params(page_cursor: String).void }
        attr_writer :page_cursor

        sig do
          params(
            page_size: Integer,
            time_range: Telnyx::TimeRange::OrHash,
            page_cursor: String
          ).returns(T.attached_class)
        end
        def self.new(
          page_size:,
          time_range:,
          # Cursor for the next page, when more results are available.
          page_cursor: nil
        )
        end

        sig do
          override.returns(
            {
              page_size: Integer,
              time_range: Telnyx::TimeRange,
              page_cursor: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
