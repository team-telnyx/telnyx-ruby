# typed: strong

module Telnyx
  module Models
    module EmailMessages
      class EmailRecipient < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::EmailMessages::EmailRecipient,
              Telnyx::Internal::AnyHash
            )
          end

        # Recipient UUID.
        sig { returns(String) }
        attr_accessor :id

        # Recipient email address. Null for BCC recipients (redacted for privacy).
        sig { returns(T.nilable(String)) }
        attr_accessor :address

        # Whether this recipient's delivery is billable (set on queue acceptance).
        sig { returns(T::Boolean) }
        attr_accessor :billable

        sig do
          returns(Telnyx::EmailMessages::EmailRecipient::Kind::TaggedSymbol)
        end
        attr_accessor :kind

        # Parent email message UUID.
        sig { returns(String) }
        attr_accessor :message_id

        sig do
          returns(
            Telnyx::EmailMessages::EmailRecipient::RecordType::TaggedSymbol
          )
        end
        attr_accessor :record_type

        # Current per-recipient delivery status.
        sig do
          returns(Telnyx::EmailMessages::EmailRecipient::Status::TaggedSymbol)
        end
        attr_accessor :status

        sig { returns(T.nilable(Time)) }
        attr_accessor :delivered_at

        sig { returns(T.nilable(Time)) }
        attr_accessor :failed_at

        sig { returns(T.nilable(Time)) }
        attr_accessor :sent_at

        # SMTP response code when available (e.g. 550 for bounces).
        sig { returns(T.nilable(Integer)) }
        attr_accessor :smtp_code

        # SMTP response message when available.
        sig { returns(T.nilable(String)) }
        attr_accessor :smtp_response

        sig do
          params(
            id: String,
            address: T.nilable(String),
            billable: T::Boolean,
            kind: Telnyx::EmailMessages::EmailRecipient::Kind::OrSymbol,
            message_id: String,
            record_type:
              Telnyx::EmailMessages::EmailRecipient::RecordType::OrSymbol,
            status: Telnyx::EmailMessages::EmailRecipient::Status::OrSymbol,
            delivered_at: T.nilable(Time),
            failed_at: T.nilable(Time),
            sent_at: T.nilable(Time),
            smtp_code: T.nilable(Integer),
            smtp_response: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Recipient UUID.
          id:,
          # Recipient email address. Null for BCC recipients (redacted for privacy).
          address:,
          # Whether this recipient's delivery is billable (set on queue acceptance).
          billable:,
          kind:,
          # Parent email message UUID.
          message_id:,
          record_type:,
          # Current per-recipient delivery status.
          status:,
          delivered_at: nil,
          failed_at: nil,
          sent_at: nil,
          # SMTP response code when available (e.g. 550 for bounces).
          smtp_code: nil,
          # SMTP response message when available.
          smtp_response: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              address: T.nilable(String),
              billable: T::Boolean,
              kind: Telnyx::EmailMessages::EmailRecipient::Kind::TaggedSymbol,
              message_id: String,
              record_type:
                Telnyx::EmailMessages::EmailRecipient::RecordType::TaggedSymbol,
              status:
                Telnyx::EmailMessages::EmailRecipient::Status::TaggedSymbol,
              delivered_at: T.nilable(Time),
              failed_at: T.nilable(Time),
              sent_at: T.nilable(Time),
              smtp_code: T.nilable(Integer),
              smtp_response: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        module Kind
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::EmailMessages::EmailRecipient::Kind)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TO =
            T.let(
              :to,
              Telnyx::EmailMessages::EmailRecipient::Kind::TaggedSymbol
            )
          CC =
            T.let(
              :cc,
              Telnyx::EmailMessages::EmailRecipient::Kind::TaggedSymbol
            )
          BCC =
            T.let(
              :bcc,
              Telnyx::EmailMessages::EmailRecipient::Kind::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::EmailMessages::EmailRecipient::Kind::TaggedSymbol
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
              T.all(Symbol, Telnyx::EmailMessages::EmailRecipient::RecordType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMAIL_RECIPIENT =
            T.let(
              :email_recipient,
              Telnyx::EmailMessages::EmailRecipient::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::EmailMessages::EmailRecipient::RecordType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Current per-recipient delivery status.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::EmailMessages::EmailRecipient::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          QUEUED =
            T.let(
              :queued,
              Telnyx::EmailMessages::EmailRecipient::Status::TaggedSymbol
            )
          SENDING =
            T.let(
              :sending,
              Telnyx::EmailMessages::EmailRecipient::Status::TaggedSymbol
            )
          SENT =
            T.let(
              :sent,
              Telnyx::EmailMessages::EmailRecipient::Status::TaggedSymbol
            )
          DEFERRED =
            T.let(
              :deferred,
              Telnyx::EmailMessages::EmailRecipient::Status::TaggedSymbol
            )
          DELIVERED =
            T.let(
              :delivered,
              Telnyx::EmailMessages::EmailRecipient::Status::TaggedSymbol
            )
          BOUNCED =
            T.let(
              :bounced,
              Telnyx::EmailMessages::EmailRecipient::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              Telnyx::EmailMessages::EmailRecipient::Status::TaggedSymbol
            )
          GW_REJECT =
            T.let(
              :gw_reject,
              Telnyx::EmailMessages::EmailRecipient::Status::TaggedSymbol
            )
          CANCELLED =
            T.let(
              :cancelled,
              Telnyx::EmailMessages::EmailRecipient::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::EmailMessages::EmailRecipient::Status::TaggedSymbol
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
