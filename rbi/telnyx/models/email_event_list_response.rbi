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

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :email_id

        sig { returns(Time) }
        attr_accessor :occurred_at

        sig do
          returns(
            Telnyx::Models::EmailEventListResponse::Data::RecordType::TaggedSymbol
          )
        end
        attr_accessor :record_type

        sig { returns(Telnyx::EmailEventType::TaggedSymbol) }
        attr_accessor :type

        # Summary of the associated email message. Present when the email_message preload
        # is available.
        sig do
          returns(
            T.nilable(Telnyx::Models::EmailEventListResponse::Data::Email)
          )
        end
        attr_reader :email

        sig do
          params(
            email: Telnyx::Models::EmailEventListResponse::Data::Email::OrHash
          ).void
        end
        attr_writer :email

        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :payload

        sig { params(payload: T::Hash[Symbol, T.anything]).void }
        attr_writer :payload

        sig do
          params(
            id: String,
            email_id: String,
            occurred_at: Time,
            record_type:
              Telnyx::Models::EmailEventListResponse::Data::RecordType::OrSymbol,
            type: Telnyx::EmailEventType::OrSymbol,
            email: Telnyx::Models::EmailEventListResponse::Data::Email::OrHash,
            payload: T::Hash[Symbol, T.anything]
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          email_id:,
          occurred_at:,
          record_type:,
          type:,
          # Summary of the associated email message. Present when the email_message preload
          # is available.
          email: nil,
          payload: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              email_id: String,
              occurred_at: Time,
              record_type:
                Telnyx::Models::EmailEventListResponse::Data::RecordType::TaggedSymbol,
              type: Telnyx::EmailEventType::TaggedSymbol,
              email: Telnyx::Models::EmailEventListResponse::Data::Email,
              payload: T::Hash[Symbol, T.anything]
            }
          )
        end
        def to_hash
        end

        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::EmailEventListResponse::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMAIL_EVENT =
            T.let(
              :email_event,
              Telnyx::Models::EmailEventListResponse::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::EmailEventListResponse::Data::RecordType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Email < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::EmailEventListResponse::Data::Email,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T::Array[Telnyx::EmailInboxes::EmailAddress]) }
          attr_accessor :cc

          sig { returns(Telnyx::EmailInboxes::EmailAddress) }
          attr_reader :from

          sig { params(from: Telnyx::EmailInboxes::EmailAddress::OrHash).void }
          attr_writer :from

          sig { returns(String) }
          attr_accessor :subject

          sig { returns(T::Array[Telnyx::EmailInboxes::EmailAddress]) }
          attr_accessor :to

          # Summary of the associated email message. Present when the email_message preload
          # is available.
          sig do
            params(
              cc: T::Array[Telnyx::EmailInboxes::EmailAddress::OrHash],
              from: Telnyx::EmailInboxes::EmailAddress::OrHash,
              subject: String,
              to: T::Array[Telnyx::EmailInboxes::EmailAddress::OrHash]
            ).returns(T.attached_class)
          end
          def self.new(cc:, from:, subject:, to:)
          end

          sig do
            override.returns(
              {
                cc: T::Array[Telnyx::EmailInboxes::EmailAddress],
                from: Telnyx::EmailInboxes::EmailAddress,
                subject: String,
                to: T::Array[Telnyx::EmailInboxes::EmailAddress]
              }
            )
          end
          def to_hash
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
