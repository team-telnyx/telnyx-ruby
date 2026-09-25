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
      #
      # Dual-name compatibility: values are accepted bare or `email.`-prefixed. A legacy
      # value keeps matching the rows it matched pre-rename — no widening: `failed` also
      # matches the rows that now store the canonical names of the outcomes it covered
      # (`gw_reject`, `injection_timeout`, `expired`); `bounced` matches stored
      # `bounced` rows only (recipient-scoped Expirations stored `failed` pre-rename and
      # never matched `bounced`, so `expired` is deliberately not a `bounced`
      # expansion). A canonical value matches its own rows plus legacy rows whose
      # recorded payload evidence proves that outcome (`expired` also surfaces legacy
      # `bounced` rows with `bounce_category: transient`). The additive
      # `canonical_event_type` field in each response row names the canonical outcome.
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

      # Number of results to return. Defaults to 25; maximum is 100. Invalid values are
      # clamped to the valid range.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # Opaque URL-safe Base64 cursor returned by a previous event list response. The
      # legacy `page[after]` and flat `page_cursor` forms are also accepted.
      sig { returns(T.nilable(String)) }
      attr_reader :page_cursor

      sig { params(page_cursor: String).void }
      attr_writer :page_cursor

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
          page_size: Integer,
          page_cursor: String,
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
        #
        # Dual-name compatibility: values are accepted bare or `email.`-prefixed. A legacy
        # value keeps matching the rows it matched pre-rename — no widening: `failed` also
        # matches the rows that now store the canonical names of the outcomes it covered
        # (`gw_reject`, `injection_timeout`, `expired`); `bounced` matches stored
        # `bounced` rows only (recipient-scoped Expirations stored `failed` pre-rename and
        # never matched `bounced`, so `expired` is deliberately not a `bounced`
        # expansion). A canonical value matches its own rows plus legacy rows whose
        # recorded payload evidence proves that outcome (`expired` also surfaces legacy
        # `bounced` rows with `bounce_category: transient`). The additive
        # `canonical_event_type` field in each response row names the canonical outcome.
        event_type: nil,
        # Inclusive ISO 8601 start timestamp. Defaults to 30 days ago when omitted.
        from: nil,
        # Number of results to return. Defaults to 25; maximum is 100. Invalid values are
        # clamped to the valid range.
        page_size: nil,
        # Opaque URL-safe Base64 cursor returned by a previous event list response. The
        # legacy `page[after]` and flat `page_cursor` forms are also accepted.
        page_cursor: nil,
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
            page_size: Integer,
            page_cursor: String,
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
      #
      # Dual-name compatibility: values are accepted bare or `email.`-prefixed. A legacy
      # value keeps matching the rows it matched pre-rename — no widening: `failed` also
      # matches the rows that now store the canonical names of the outcomes it covered
      # (`gw_reject`, `injection_timeout`, `expired`); `bounced` matches stored
      # `bounced` rows only (recipient-scoped Expirations stored `failed` pre-rename and
      # never matched `bounced`, so `expired` is deliberately not a `bounced`
      # expansion). A canonical value matches its own rows plus legacy rows whose
      # recorded payload evidence proves that outcome (`expired` also surfaces legacy
      # `bounced` rows with `bounce_category: transient`). The additive
      # `canonical_event_type` field in each response row names the canonical outcome.
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
