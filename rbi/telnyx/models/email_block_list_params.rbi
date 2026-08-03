# typed: strong

module Telnyx
  module Models
    class EmailBlockListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::EmailBlockListParams, Telnyx::Internal::AnyHash)
        end

      # `created_at > value` (ISO 8601).
      sig { returns(T.nilable(Time)) }
      attr_reader :filter_created_after

      sig { params(filter_created_after: Time).void }
      attr_writer :filter_created_after

      # `created_at < value` (ISO 8601).
      sig { returns(T.nilable(Time)) }
      attr_reader :filter_created_before

      sig { params(filter_created_before: Time).void }
      attr_writer :filter_created_before

      # Exact-match filter on domain_id (UUID).
      sig { returns(T.nilable(String)) }
      attr_reader :filter_domain_id

      sig { params(filter_domain_id: String).void }
      attr_writer :filter_domain_id

      # Exact-match filter on reason.
      sig do
        returns(T.nilable(Telnyx::EmailBlockListParams::FilterReason::OrSymbol))
      end
      attr_reader :filter_reason

      sig do
        params(
          filter_reason: Telnyx::EmailBlockListParams::FilterReason::OrSymbol
        ).void
      end
      attr_writer :filter_reason

      # Opaque cursor (`Base.url_encode64` of `{"created_at","id"}`). Cursor mode;
      # mutually exclusive with `page[number]` and `page[before]`.
      sig { returns(T.nilable(String)) }
      attr_reader :page_after

      sig { params(page_after: String).void }
      attr_writer :page_after

      # Opaque cursor (see `page[after]`). Mutually exclusive with `page[after]` and
      # `page[number]`.
      sig { returns(T.nilable(String)) }
      attr_reader :page_before

      sig { params(page_before: String).void }
      attr_writer :page_before

      # Offset page number (≥1, default 1).
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      # Page size (1–100, default 25).
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # Sort field. Leading `-` = desc; only `created_at` is sortable. Default
      # `-created_at`. `--` is an error.
      sig { returns(T.nilable(Telnyx::EmailBlockListParams::Sort::OrSymbol)) }
      attr_reader :sort

      sig { params(sort: Telnyx::EmailBlockListParams::Sort::OrSymbol).void }
      attr_writer :sort

      sig do
        params(
          filter_created_after: Time,
          filter_created_before: Time,
          filter_domain_id: String,
          filter_reason: Telnyx::EmailBlockListParams::FilterReason::OrSymbol,
          page_after: String,
          page_before: String,
          page_number: Integer,
          page_size: Integer,
          sort: Telnyx::EmailBlockListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # `created_at > value` (ISO 8601).
        filter_created_after: nil,
        # `created_at < value` (ISO 8601).
        filter_created_before: nil,
        # Exact-match filter on domain_id (UUID).
        filter_domain_id: nil,
        # Exact-match filter on reason.
        filter_reason: nil,
        # Opaque cursor (`Base.url_encode64` of `{"created_at","id"}`). Cursor mode;
        # mutually exclusive with `page[number]` and `page[before]`.
        page_after: nil,
        # Opaque cursor (see `page[after]`). Mutually exclusive with `page[after]` and
        # `page[number]`.
        page_before: nil,
        # Offset page number (≥1, default 1).
        page_number: nil,
        # Page size (1–100, default 25).
        page_size: nil,
        # Sort field. Leading `-` = desc; only `created_at` is sortable. Default
        # `-created_at`. `--` is an error.
        sort: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter_created_after: Time,
            filter_created_before: Time,
            filter_domain_id: String,
            filter_reason: Telnyx::EmailBlockListParams::FilterReason::OrSymbol,
            page_after: String,
            page_before: String,
            page_number: Integer,
            page_size: Integer,
            sort: Telnyx::EmailBlockListParams::Sort::OrSymbol,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Exact-match filter on reason.
      module FilterReason
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::EmailBlockListParams::FilterReason)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        HARD_BOUNCE =
          T.let(
            :hard_bounce,
            Telnyx::EmailBlockListParams::FilterReason::TaggedSymbol
          )
        SPAM_COMPLAINT =
          T.let(
            :spam_complaint,
            Telnyx::EmailBlockListParams::FilterReason::TaggedSymbol
          )
        UNSUBSCRIBE =
          T.let(
            :unsubscribe,
            Telnyx::EmailBlockListParams::FilterReason::TaggedSymbol
          )
        INVALID =
          T.let(
            :invalid,
            Telnyx::EmailBlockListParams::FilterReason::TaggedSymbol
          )
        MANUAL_BLOCK =
          T.let(
            :manual_block,
            Telnyx::EmailBlockListParams::FilterReason::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::EmailBlockListParams::FilterReason::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Sort field. Leading `-` = desc; only `created_at` is sortable. Default
      # `-created_at`. `--` is an error.
      module Sort
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::EmailBlockListParams::Sort) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED_AT =
          T.let(:created_at, Telnyx::EmailBlockListParams::Sort::TaggedSymbol)
        CREATED_AT_DESC =
          T.let(
            :"-created_at",
            Telnyx::EmailBlockListParams::Sort::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::EmailBlockListParams::Sort::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
