# typed: strong

module Telnyx
  module Models
    class EmailBlockRetrieveExportParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::EmailBlockRetrieveExportParams,
            Telnyx::Internal::AnyHash
          )
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
        returns(
          T.nilable(
            Telnyx::EmailBlockRetrieveExportParams::FilterReason::OrSymbol
          )
        )
      end
      attr_reader :filter_reason

      sig do
        params(
          filter_reason:
            Telnyx::EmailBlockRetrieveExportParams::FilterReason::OrSymbol
        ).void
      end
      attr_writer :filter_reason

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
      sig do
        returns(
          T.nilable(Telnyx::EmailBlockRetrieveExportParams::Sort::OrSymbol)
        )
      end
      attr_reader :sort

      sig do
        params(
          sort: Telnyx::EmailBlockRetrieveExportParams::Sort::OrSymbol
        ).void
      end
      attr_writer :sort

      sig do
        params(
          filter_created_after: Time,
          filter_created_before: Time,
          filter_domain_id: String,
          filter_reason:
            Telnyx::EmailBlockRetrieveExportParams::FilterReason::OrSymbol,
          page_number: Integer,
          page_size: Integer,
          sort: Telnyx::EmailBlockRetrieveExportParams::Sort::OrSymbol,
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
            filter_reason:
              Telnyx::EmailBlockRetrieveExportParams::FilterReason::OrSymbol,
            page_number: Integer,
            page_size: Integer,
            sort: Telnyx::EmailBlockRetrieveExportParams::Sort::OrSymbol,
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
            T.all(Symbol, Telnyx::EmailBlockRetrieveExportParams::FilterReason)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        HARD_BOUNCE =
          T.let(
            :hard_bounce,
            Telnyx::EmailBlockRetrieveExportParams::FilterReason::TaggedSymbol
          )
        SPAM_COMPLAINT =
          T.let(
            :spam_complaint,
            Telnyx::EmailBlockRetrieveExportParams::FilterReason::TaggedSymbol
          )
        UNSUBSCRIBE =
          T.let(
            :unsubscribe,
            Telnyx::EmailBlockRetrieveExportParams::FilterReason::TaggedSymbol
          )
        INVALID =
          T.let(
            :invalid,
            Telnyx::EmailBlockRetrieveExportParams::FilterReason::TaggedSymbol
          )
        MANUAL_BLOCK =
          T.let(
            :manual_block,
            Telnyx::EmailBlockRetrieveExportParams::FilterReason::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::EmailBlockRetrieveExportParams::FilterReason::TaggedSymbol
            ]
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
          T.type_alias do
            T.all(Symbol, Telnyx::EmailBlockRetrieveExportParams::Sort)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED_AT =
          T.let(
            :created_at,
            Telnyx::EmailBlockRetrieveExportParams::Sort::TaggedSymbol
          )
        CREATED_AT_DESC =
          T.let(
            :"-created_at",
            Telnyx::EmailBlockRetrieveExportParams::Sort::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::EmailBlockRetrieveExportParams::Sort::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
