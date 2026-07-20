# typed: strong

module Telnyx
  module Models
    class InboundMessage < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::InboundMessage, Telnyx::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T::Array[T::Hash[Symbol, T.anything]]) }
      attr_accessor :attachments

      sig { returns(T::Array[Telnyx::InboundMessage::Bcc]) }
      attr_accessor :bcc

      sig { returns(T::Array[Telnyx::InboundMessage::Cc]) }
      attr_accessor :cc

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(Telnyx::InboundMessage::Direction::OrSymbol) }
      attr_accessor :direction

      sig { returns(Telnyx::InboundMessage::From) }
      attr_reader :from

      sig { params(from: Telnyx::InboundMessage::From::OrHash).void }
      attr_writer :from

      # Whether conservative plain-text extraction detected a quoted tail. False does
      # not prove that the source contains no quoted content.
      sig { returns(T::Boolean) }
      attr_accessor :has_quoted_text

      sig { returns(T::Hash[Symbol, T.anything]) }
      attr_accessor :headers

      # URL for an offloaded HTML body. Null means the body is not offloaded to a URL;
      # an inline HTML body may still exist but is not returned on list reads.
      # `reply_text` and `has_quoted_text` are computed from the inline plain-text body
      # when present.
      sig { returns(T.nilable(String)) }
      attr_accessor :html_body_url

      sig { returns(T.nilable(String)) }
      attr_accessor :in_reply_to

      sig { returns(String) }
      attr_accessor :inbox_id

      sig { returns(T::Array[T::Hash[Symbol, T.anything]]) }
      attr_accessor :inline_files

      # RFC Message-ID header.
      sig { returns(String) }
      attr_accessor :message_id

      sig { returns(T.nilable(Time)) }
      attr_accessor :read_at

      sig { returns(Time) }
      attr_accessor :received_at

      sig { returns(Telnyx::InboundMessage::RecordType::OrSymbol) }
      attr_accessor :record_type

      # Ordered RFC Message-ID values from the References header.
      sig { returns(T::Array[String]) }
      attr_accessor :references

      # Conservatively extracted new-reply content from the available plain-text body.
      # Null means no plain-text body was available because it was absent or offloaded;
      # HTML bodies are not parsed.
      sig { returns(T.nilable(String)) }
      attr_accessor :reply_text

      sig { returns(T::Array[Telnyx::InboundMessage::ReplyTo]) }
      attr_accessor :reply_to

      sig { returns(Telnyx::InboundMessage::Status::OrSymbol) }
      attr_accessor :status

      sig { returns(T.nilable(String)) }
      attr_accessor :subject

      # URL for an offloaded plain-text body. Null means the body is not offloaded to a
      # URL; an inline plain-text body may still exist but is not returned on list
      # reads. `reply_text` and `has_quoted_text` are computed from the inline
      # plain-text body when present.
      sig { returns(T.nilable(String)) }
      attr_accessor :text_body_url

      sig { returns(String) }
      attr_accessor :thread_id

      sig { returns(T::Array[Telnyx::InboundMessage::To]) }
      attr_accessor :to

      sig { returns(Time) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          attachments: T::Array[T::Hash[Symbol, T.anything]],
          bcc: T::Array[Telnyx::InboundMessage::Bcc::OrHash],
          cc: T::Array[Telnyx::InboundMessage::Cc::OrHash],
          created_at: Time,
          direction: Telnyx::InboundMessage::Direction::OrSymbol,
          from: Telnyx::InboundMessage::From::OrHash,
          has_quoted_text: T::Boolean,
          headers: T::Hash[Symbol, T.anything],
          html_body_url: T.nilable(String),
          in_reply_to: T.nilable(String),
          inbox_id: String,
          inline_files: T::Array[T::Hash[Symbol, T.anything]],
          message_id: String,
          read_at: T.nilable(Time),
          received_at: Time,
          record_type: Telnyx::InboundMessage::RecordType::OrSymbol,
          references: T::Array[String],
          reply_text: T.nilable(String),
          reply_to: T::Array[Telnyx::InboundMessage::ReplyTo::OrHash],
          status: Telnyx::InboundMessage::Status::OrSymbol,
          subject: T.nilable(String),
          text_body_url: T.nilable(String),
          thread_id: String,
          to: T::Array[Telnyx::InboundMessage::To::OrHash],
          updated_at: Time
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        attachments:,
        bcc:,
        cc:,
        created_at:,
        direction:,
        from:,
        # Whether conservative plain-text extraction detected a quoted tail. False does
        # not prove that the source contains no quoted content.
        has_quoted_text:,
        headers:,
        # URL for an offloaded HTML body. Null means the body is not offloaded to a URL;
        # an inline HTML body may still exist but is not returned on list reads.
        # `reply_text` and `has_quoted_text` are computed from the inline plain-text body
        # when present.
        html_body_url:,
        in_reply_to:,
        inbox_id:,
        inline_files:,
        # RFC Message-ID header.
        message_id:,
        read_at:,
        received_at:,
        record_type:,
        # Ordered RFC Message-ID values from the References header.
        references:,
        # Conservatively extracted new-reply content from the available plain-text body.
        # Null means no plain-text body was available because it was absent or offloaded;
        # HTML bodies are not parsed.
        reply_text:,
        reply_to:,
        status:,
        subject:,
        # URL for an offloaded plain-text body. Null means the body is not offloaded to a
        # URL; an inline plain-text body may still exist but is not returned on list
        # reads. `reply_text` and `has_quoted_text` are computed from the inline
        # plain-text body when present.
        text_body_url:,
        thread_id:,
        to:,
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            attachments: T::Array[T::Hash[Symbol, T.anything]],
            bcc: T::Array[Telnyx::InboundMessage::Bcc],
            cc: T::Array[Telnyx::InboundMessage::Cc],
            created_at: Time,
            direction: Telnyx::InboundMessage::Direction::OrSymbol,
            from: Telnyx::InboundMessage::From,
            has_quoted_text: T::Boolean,
            headers: T::Hash[Symbol, T.anything],
            html_body_url: T.nilable(String),
            in_reply_to: T.nilable(String),
            inbox_id: String,
            inline_files: T::Array[T::Hash[Symbol, T.anything]],
            message_id: String,
            read_at: T.nilable(Time),
            received_at: Time,
            record_type: Telnyx::InboundMessage::RecordType::OrSymbol,
            references: T::Array[String],
            reply_text: T.nilable(String),
            reply_to: T::Array[Telnyx::InboundMessage::ReplyTo],
            status: Telnyx::InboundMessage::Status::OrSymbol,
            subject: T.nilable(String),
            text_body_url: T.nilable(String),
            thread_id: String,
            to: T::Array[Telnyx::InboundMessage::To],
            updated_at: Time
          }
        )
      end
      def to_hash
      end

      class Bcc < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::InboundMessage::Bcc, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :email

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { params(email: String, name: String).returns(T.attached_class) }
        def self.new(email:, name: nil)
        end

        sig { override.returns({ email: String, name: String }) }
        def to_hash
        end
      end

      class Cc < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::InboundMessage::Cc, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :email

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { params(email: String, name: String).returns(T.attached_class) }
        def self.new(email:, name: nil)
        end

        sig { override.returns({ email: String, name: String }) }
        def to_hash
        end
      end

      module Direction
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::InboundMessage::Direction) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INBOUND =
          T.let(:inbound, Telnyx::InboundMessage::Direction::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::InboundMessage::Direction::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class From < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::InboundMessage::From, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :email

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { params(email: String, name: String).returns(T.attached_class) }
        def self.new(email:, name: nil)
        end

        sig { override.returns({ email: String, name: String }) }
        def to_hash
        end
      end

      module RecordType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::InboundMessage::RecordType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EMAIL_MESSAGE =
          T.let(
            :email_message,
            Telnyx::InboundMessage::RecordType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::InboundMessage::RecordType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class ReplyTo < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::InboundMessage::ReplyTo, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :email

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { params(email: String, name: String).returns(T.attached_class) }
        def self.new(email:, name: nil)
        end

        sig { override.returns({ email: String, name: String }) }
        def to_hash
        end
      end

      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::InboundMessage::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RECEIVED =
          T.let(:received, Telnyx::InboundMessage::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::InboundMessage::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class To < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::InboundMessage::To, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :email

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { params(email: String, name: String).returns(T.attached_class) }
        def self.new(email:, name: nil)
        end

        sig { override.returns({ email: String, name: String }) }
        def to_hash
        end
      end
    end
  end
end
