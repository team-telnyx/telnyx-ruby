# typed: strong

module Telnyx
  module Models
    class EmailEventListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::EmailEventListParams, Telnyx::Internal::AnyHash)
        end

      # Filter events for a specific email message UUID. Invalid UUID values are
      # silently ignored (no filter applied).
      sig { returns(T.nilable(String)) }
      attr_reader :email_id

      sig { params(email_id: String).void }
      attr_writer :email_id

      # Comma-separated list of event types to include. Also accepts repeated query
      # parameters (e.g. event_type=delivered&event_type=bounced). Unknown values return
      # no matches.
      sig do
        returns(T.nilable(Telnyx::EmailEventListParams::EventType::Variants))
      end
      attr_reader :event_type

      sig do
        params(
          event_type: Telnyx::EmailEventListParams::EventType::Variants
        ).void
      end
      attr_writer :event_type

      # Inclusive ISO 8601 start timestamp. Defaults to 30 days ago when omitted.
      sig { returns(T.nilable(Time)) }
      attr_reader :from

      sig { params(from: Time).void }
      attr_writer :from

      # Opaque URL-safe Base64 cursor returned by a previous list response.
      sig { returns(T.nilable(String)) }
      attr_reader :page_cursor

      sig { params(page_cursor: String).void }
      attr_writer :page_cursor

      # Number of results to return. Defaults to 25; maximum is 100. Invalid values are
      # clamped to the valid range.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # Inclusive ISO 8601 end timestamp. When `from` is provided without `to`, defaults
      # to `from + 30 days`.
      sig { returns(T.nilable(Time)) }
      attr_reader :to

      sig { params(to: Time).void }
      attr_writer :to

      sig do
        params(
          email_id: String,
          event_type: Telnyx::EmailEventListParams::EventType::Variants,
          from: Time,
          page_cursor: String,
          page_size: Integer,
          to: Time,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter events for a specific email message UUID. Invalid UUID values are
        # silently ignored (no filter applied).
        email_id: nil,
        # Comma-separated list of event types to include. Also accepts repeated query
        # parameters (e.g. event_type=delivered&event_type=bounced). Unknown values return
        # no matches.
        event_type: nil,
        # Inclusive ISO 8601 start timestamp. Defaults to 30 days ago when omitted.
        from: nil,
        # Opaque URL-safe Base64 cursor returned by a previous list response.
        page_cursor: nil,
        # Number of results to return. Defaults to 25; maximum is 100. Invalid values are
        # clamped to the valid range.
        page_size: nil,
        # Inclusive ISO 8601 end timestamp. When `from` is provided without `to`, defaults
        # to `from + 30 days`.
        to: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            email_id: String,
            event_type: Telnyx::EmailEventListParams::EventType::Variants,
            from: Time,
            page_cursor: String,
            page_size: Integer,
            to: Time,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Comma-separated list of event types to include. Also accepts repeated query
      # parameters (e.g. event_type=delivered&event_type=bounced). Unknown values return
      # no matches.
      module EventType
        extend Telnyx::Internal::Type::Union

        Variants = T.type_alias { T.any(String, T::Array[String]) }

        sig do
          override.returns(
            T::Array[Telnyx::EmailEventListParams::EventType::Variants]
          )
        end
        def self.variants
        end

        StringArray =
          T.let(
            Telnyx::Internal::Type::ArrayOf[String],
            Telnyx::Internal::Type::Converter
          )
      end
    end
  end
end
