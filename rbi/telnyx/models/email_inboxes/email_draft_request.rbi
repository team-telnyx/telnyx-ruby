# typed: strong

module Telnyx
  module Models
    module EmailInboxes
      class EmailDraftRequest < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::EmailInboxes::EmailDraftRequest,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Array[T::Hash[Symbol, T.anything]])) }
        attr_reader :attachments

        sig { params(attachments: T::Array[T::Hash[Symbol, T.anything]]).void }
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

        sig { returns(T.nilable(String)) }
        attr_reader :from_email

        sig { params(from_email: String).void }
        attr_writer :from_email

        sig { returns(T.nilable(String)) }
        attr_reader :from_name

        sig { params(from_name: String).void }
        attr_writer :from_name

        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_reader :headers

        sig { params(headers: T::Hash[Symbol, String]).void }
        attr_writer :headers

        # Alias for `html_body`, matching the send endpoint.
        sig { returns(T.nilable(String)) }
        attr_reader :html

        sig { params(html: String).void }
        attr_writer :html

        sig { returns(T.nilable(String)) }
        attr_reader :html_body

        sig { params(html_body: String).void }
        attr_writer :html_body

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :labels

        sig { params(labels: T::Array[String]).void }
        attr_writer :labels

        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, T.anything]).void }
        attr_writer :metadata

        sig { returns(T.nilable(String)) }
        attr_reader :reply_to

        sig { params(reply_to: String).void }
        attr_writer :reply_to

        sig { returns(T.nilable(String)) }
        attr_reader :subject

        sig { params(subject: String).void }
        attr_writer :subject

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :tags

        sig { params(tags: T::Array[String]).void }
        attr_writer :tags

        # Alias for `text_body`, matching the send endpoint.
        sig { returns(T.nilable(String)) }
        attr_reader :text

        sig { params(text: String).void }
        attr_writer :text

        sig { returns(T.nilable(String)) }
        attr_reader :text_body

        sig { params(text_body: String).void }
        attr_writer :text_body

        sig do
          returns(
            T.nilable(
              T::Array[T.any(String, Telnyx::EmailInboxes::EmailAddress)]
            )
          )
        end
        attr_reader :to

        sig do
          params(
            to:
              T::Array[
                T.any(String, Telnyx::EmailInboxes::EmailAddress::OrHash)
              ]
          ).void
        end
        attr_writer :to

        # All fields are optional — a draft may be saved incomplete. `account_id`,
        # `inbox_id`, `status`, `sent_at`, `sent_message_id`, `reply_to_message_id` and
        # `thread_id` are server-owned and ignored if supplied.
        sig do
          params(
            attachments: T::Array[T::Hash[Symbol, T.anything]],
            bcc:
              T::Array[
                T.any(String, Telnyx::EmailInboxes::EmailAddress::OrHash)
              ],
            cc:
              T::Array[
                T.any(String, Telnyx::EmailInboxes::EmailAddress::OrHash)
              ],
            from_email: String,
            from_name: String,
            headers: T::Hash[Symbol, String],
            html: String,
            html_body: String,
            labels: T::Array[String],
            metadata: T::Hash[Symbol, T.anything],
            reply_to: String,
            subject: String,
            tags: T::Array[String],
            text: String,
            text_body: String,
            to:
              T::Array[
                T.any(String, Telnyx::EmailInboxes::EmailAddress::OrHash)
              ]
          ).returns(T.attached_class)
        end
        def self.new(
          attachments: nil,
          bcc: nil,
          cc: nil,
          from_email: nil,
          from_name: nil,
          headers: nil,
          # Alias for `html_body`, matching the send endpoint.
          html: nil,
          html_body: nil,
          labels: nil,
          metadata: nil,
          reply_to: nil,
          subject: nil,
          tags: nil,
          # Alias for `text_body`, matching the send endpoint.
          text: nil,
          text_body: nil,
          to: nil
        )
        end

        sig do
          override.returns(
            {
              attachments: T::Array[T::Hash[Symbol, T.anything]],
              bcc: T::Array[T.any(String, Telnyx::EmailInboxes::EmailAddress)],
              cc: T::Array[T.any(String, Telnyx::EmailInboxes::EmailAddress)],
              from_email: String,
              from_name: String,
              headers: T::Hash[Symbol, String],
              html: String,
              html_body: String,
              labels: T::Array[String],
              metadata: T::Hash[Symbol, T.anything],
              reply_to: String,
              subject: String,
              tags: T::Array[String],
              text: String,
              text_body: String,
              to: T::Array[T.any(String, Telnyx::EmailInboxes::EmailAddress)]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
