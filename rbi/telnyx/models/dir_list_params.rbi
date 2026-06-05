# typed: strong

module Telnyx
  module Models
    class DirListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(Telnyx::DirListParams, Telnyx::Internal::AnyHash) }

      # Restrict results to a single enterprise.
      sig { returns(T.nilable(String)) }
      attr_reader :enterprise_id

      sig { params(enterprise_id: String).void }
      attr_writer :enterprise_id

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

      # Case-insensitive partial match on `display_name` or call reason.
      sig { returns(T.nilable(String)) }
      attr_reader :search

      sig { params(search: String).void }
      attr_writer :search

      # Sort field. Allowed values: `created_at`, `updated_at`, `display_name`,
      # `status`. Prefix with `-` for descending. Default `-created_at`.
      sig { returns(T.nilable(Telnyx::DirListParams::Sort::OrSymbol)) }
      attr_reader :sort

      sig { params(sort: Telnyx::DirListParams::Sort::OrSymbol).void }
      attr_writer :sort

      # Filter by DIR status.
      sig { returns(T.nilable(Telnyx::DirListParams::Status::OrSymbol)) }
      attr_reader :status

      sig { params(status: Telnyx::DirListParams::Status::OrSymbol).void }
      attr_writer :status

      sig do
        params(
          enterprise_id: String,
          filter_expiring_at_gte: Time,
          filter_expiring_at_lte: Time,
          page_number: Integer,
          page_size: Integer,
          search: String,
          sort: Telnyx::DirListParams::Sort::OrSymbol,
          status: Telnyx::DirListParams::Status::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Restrict results to a single enterprise.
        enterprise_id: nil,
        # Return only DIRs whose `expiring_at` is at or after this ISO-8601 timestamp.
        # Pairs with the `[lte]` variant to build renewal-window dashboards.
        filter_expiring_at_gte: nil,
        # Return only DIRs whose `expiring_at` is at or before this ISO-8601 timestamp.
        filter_expiring_at_lte: nil,
        # 1-based page number. Out-of-range values return an empty page with correct meta.
        page_number: nil,
        # Items per page. Maximum 250; values above are clamped to 250.
        page_size: nil,
        # Case-insensitive partial match on `display_name` or call reason.
        search: nil,
        # Sort field. Allowed values: `created_at`, `updated_at`, `display_name`,
        # `status`. Prefix with `-` for descending. Default `-created_at`.
        sort: nil,
        # Filter by DIR status.
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            enterprise_id: String,
            filter_expiring_at_gte: Time,
            filter_expiring_at_lte: Time,
            page_number: Integer,
            page_size: Integer,
            search: String,
            sort: Telnyx::DirListParams::Sort::OrSymbol,
            status: Telnyx::DirListParams::Status::OrSymbol,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
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

      # Filter by DIR status.
      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::DirListParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DRAFT = T.let(:draft, Telnyx::DirListParams::Status::TaggedSymbol)
        SUBMITTED =
          T.let(:submitted, Telnyx::DirListParams::Status::TaggedSymbol)
        IN_REVIEW =
          T.let(:in_review, Telnyx::DirListParams::Status::TaggedSymbol)
        VERIFIED = T.let(:verified, Telnyx::DirListParams::Status::TaggedSymbol)
        REJECTED = T.let(:rejected, Telnyx::DirListParams::Status::TaggedSymbol)
        UNSUCCESSFUL =
          T.let(:unsuccessful, Telnyx::DirListParams::Status::TaggedSymbol)
        SUSPENDED =
          T.let(:suspended, Telnyx::DirListParams::Status::TaggedSymbol)
        EXPIRED = T.let(:expired, Telnyx::DirListParams::Status::TaggedSymbol)
        INFRINGEMENT_CLAIMED =
          T.let(
            :infringement_claimed,
            Telnyx::DirListParams::Status::TaggedSymbol
          )
        PERMANENTLY_REJECTED =
          T.let(
            :permanently_rejected,
            Telnyx::DirListParams::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::DirListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
