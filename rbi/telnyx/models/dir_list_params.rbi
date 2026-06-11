# typed: strong

module Telnyx
  module Models
    class DirListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(Telnyx::DirListParams, Telnyx::Internal::AnyHash) }

      # Case-insensitive partial match on call reason.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_call_reason_contains

      sig { params(filter_call_reason_contains: String).void }
      attr_writer :filter_call_reason_contains

      # Case-insensitive partial match on display name.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_display_name_contains

      sig { params(filter_display_name_contains: String).void }
      attr_writer :filter_display_name_contains

      # Filter by enterprise ID.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_enterprise_id

      sig { params(filter_enterprise_id: String).void }
      attr_writer :filter_enterprise_id

      # Return only DIRs whose `expiring_at` is at or after this ISO-8601 timestamp.
      # Pairs with the `[lte]` variant to build renewal-window dashboards.
      sig { returns(T.nilable(Time)) }
      attr_reader :filter_expiring_at_gte

      sig { params(filter_expiring_at_gte: Time).void }
      attr_writer :filter_expiring_at_gte

      # Return only DIRs whose `expiring_at` is at or before this ISO-8601 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :filter_expiring_at_lte

      sig { params(filter_expiring_at_lte: Time).void }
      attr_writer :filter_expiring_at_lte

      # Filter by DIR status.
      sig { returns(T.nilable(Telnyx::DirListParams::FilterStatus::OrSymbol)) }
      attr_reader :filter_status

      sig do
        params(
          filter_status: Telnyx::DirListParams::FilterStatus::OrSymbol
        ).void
      end
      attr_writer :filter_status

      # 1-based page number. Out-of-range values return an empty page with correct meta.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_number

      sig { params(page_number: Integer).void }
      attr_writer :page_number

      # Items per page. Maximum 250; values above are clamped to 250.
      sig { returns(T.nilable(Integer)) }
      attr_reader :page_size

      sig { params(page_size: Integer).void }
      attr_writer :page_size

      # Sort field. Allowed values: `created_at`, `updated_at`, `display_name`,
      # `status`. Prefix with `-` for descending. Default `-created_at`.
      sig { returns(T.nilable(Telnyx::DirListParams::Sort::OrSymbol)) }
      attr_reader :sort

      sig { params(sort: Telnyx::DirListParams::Sort::OrSymbol).void }
      attr_writer :sort

      sig do
        params(
          filter_call_reason_contains: String,
          filter_display_name_contains: String,
          filter_enterprise_id: String,
          filter_expiring_at_gte: Time,
          filter_expiring_at_lte: Time,
          filter_status: Telnyx::DirListParams::FilterStatus::OrSymbol,
          page_number: Integer,
          page_size: Integer,
          sort: Telnyx::DirListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Case-insensitive partial match on call reason.
        filter_call_reason_contains: nil,
        # Case-insensitive partial match on display name.
        filter_display_name_contains: nil,
        # Filter by enterprise ID.
        filter_enterprise_id: nil,
        # Return only DIRs whose `expiring_at` is at or after this ISO-8601 timestamp.
        # Pairs with the `[lte]` variant to build renewal-window dashboards.
        filter_expiring_at_gte: nil,
        # Return only DIRs whose `expiring_at` is at or before this ISO-8601 timestamp.
        filter_expiring_at_lte: nil,
        # Filter by DIR status.
        filter_status: nil,
        # 1-based page number. Out-of-range values return an empty page with correct meta.
        page_number: nil,
        # Items per page. Maximum 250; values above are clamped to 250.
        page_size: nil,
        # Sort field. Allowed values: `created_at`, `updated_at`, `display_name`,
        # `status`. Prefix with `-` for descending. Default `-created_at`.
        sort: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filter_call_reason_contains: String,
            filter_display_name_contains: String,
            filter_enterprise_id: String,
            filter_expiring_at_gte: Time,
            filter_expiring_at_lte: Time,
            filter_status: Telnyx::DirListParams::FilterStatus::OrSymbol,
            page_number: Integer,
            page_size: Integer,
            sort: Telnyx::DirListParams::Sort::OrSymbol,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Filter by DIR status.
      module FilterStatus
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::DirListParams::FilterStatus) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DRAFT = T.let(:draft, Telnyx::DirListParams::FilterStatus::TaggedSymbol)
        SUBMITTED =
          T.let(:submitted, Telnyx::DirListParams::FilterStatus::TaggedSymbol)
        IN_REVIEW =
          T.let(:in_review, Telnyx::DirListParams::FilterStatus::TaggedSymbol)
        VERIFIED =
          T.let(:verified, Telnyx::DirListParams::FilterStatus::TaggedSymbol)
        REJECTED =
          T.let(:rejected, Telnyx::DirListParams::FilterStatus::TaggedSymbol)
        UNSUCCESSFUL =
          T.let(
            :unsuccessful,
            Telnyx::DirListParams::FilterStatus::TaggedSymbol
          )
        SUSPENDED =
          T.let(:suspended, Telnyx::DirListParams::FilterStatus::TaggedSymbol)
        EXPIRED =
          T.let(:expired, Telnyx::DirListParams::FilterStatus::TaggedSymbol)
        INFRINGEMENT_CLAIMED =
          T.let(
            :infringement_claimed,
            Telnyx::DirListParams::FilterStatus::TaggedSymbol
          )
        PERMANENTLY_REJECTED =
          T.let(
            :permanently_rejected,
            Telnyx::DirListParams::FilterStatus::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::DirListParams::FilterStatus::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Sort field. Allowed values: `created_at`, `updated_at`, `display_name`,
      # `status`. Prefix with `-` for descending. Default `-created_at`.
      module Sort
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::DirListParams::Sort) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED_AT =
          T.let(:created_at, Telnyx::DirListParams::Sort::TaggedSymbol)
        CREATED_AT_DESC =
          T.let(:"-created_at", Telnyx::DirListParams::Sort::TaggedSymbol)
        UPDATED_AT =
          T.let(:updated_at, Telnyx::DirListParams::Sort::TaggedSymbol)
        UPDATED_AT_DESC =
          T.let(:"-updated_at", Telnyx::DirListParams::Sort::TaggedSymbol)
        DISPLAY_NAME =
          T.let(:display_name, Telnyx::DirListParams::Sort::TaggedSymbol)
        MINUS_DISPLAY_NAME =
          T.let(:"-display_name", Telnyx::DirListParams::Sort::TaggedSymbol)
        STATUS = T.let(:status, Telnyx::DirListParams::Sort::TaggedSymbol)
        STATUS_DESC =
          T.let(:"-status", Telnyx::DirListParams::Sort::TaggedSymbol)

        sig do
          override.returns(T::Array[Telnyx::DirListParams::Sort::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
