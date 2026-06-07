# typed: strong

module Telnyx
  module Models
    module Enterprises
      class DirListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::Enterprises::DirListParams, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :enterprise_id

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

        # Return only DIRs whose `expiring_at` is at or after this ISO-8601 timestamp.
        sig { returns(T.nilable(Time)) }
        attr_reader :filter_expiring_at_gte

        sig { params(filter_expiring_at_gte: Time).void }
        attr_writer :filter_expiring_at_gte

        # Return only DIRs whose `expiring_at` is at or before this ISO-8601 timestamp.
        sig { returns(T.nilable(Time)) }
        attr_reader :filter_expiring_at_lte

        sig { params(filter_expiring_at_lte: Time).void }
        attr_writer :filter_expiring_at_lte

        # Convenience: returns DIRs whose `expiring_at` falls within the next N days
        # (1–365). Equivalent to setting `filter[expiring_at][gte]=<now>` +
        # `filter[expiring_at][lte]=<now+N>`. Mutually exclusive with the explicit
        # `[gte]`/`[lte]` filters — combining returns 400.
        sig { returns(T.nilable(Integer)) }
        attr_reader :filter_expiring_within_days

        sig { params(filter_expiring_within_days: Integer).void }
        attr_writer :filter_expiring_within_days

        # Filter by DIR status.
        sig do
          returns(
            T.nilable(
              Telnyx::Enterprises::DirListParams::FilterStatus::OrSymbol
            )
          )
        end
        attr_reader :filter_status

        sig do
          params(
            filter_status:
              Telnyx::Enterprises::DirListParams::FilterStatus::OrSymbol
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

        # Sort field. Allowed: `created_at`, `updated_at`, `display_name`, `status`,
        # `submitted_at`, `verified_at`, `expiring_at`. Prefix with `-` for descending.
        # Default `-created_at`.
        sig do
          returns(T.nilable(Telnyx::Enterprises::DirListParams::Sort::OrSymbol))
        end
        attr_reader :sort

        sig do
          params(sort: Telnyx::Enterprises::DirListParams::Sort::OrSymbol).void
        end
        attr_writer :sort

        sig do
          params(
            enterprise_id: String,
            filter_call_reason_contains: String,
            filter_display_name_contains: String,
            filter_expiring_at_gte: Time,
            filter_expiring_at_lte: Time,
            filter_expiring_within_days: Integer,
            filter_status:
              Telnyx::Enterprises::DirListParams::FilterStatus::OrSymbol,
            page_number: Integer,
            page_size: Integer,
            sort: Telnyx::Enterprises::DirListParams::Sort::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          enterprise_id:,
          # Case-insensitive partial match on call reason.
          filter_call_reason_contains: nil,
          # Case-insensitive partial match on display name.
          filter_display_name_contains: nil,
          # Return only DIRs whose `expiring_at` is at or after this ISO-8601 timestamp.
          filter_expiring_at_gte: nil,
          # Return only DIRs whose `expiring_at` is at or before this ISO-8601 timestamp.
          filter_expiring_at_lte: nil,
          # Convenience: returns DIRs whose `expiring_at` falls within the next N days
          # (1–365). Equivalent to setting `filter[expiring_at][gte]=<now>` +
          # `filter[expiring_at][lte]=<now+N>`. Mutually exclusive with the explicit
          # `[gte]`/`[lte]` filters — combining returns 400.
          filter_expiring_within_days: nil,
          # Filter by DIR status.
          filter_status: nil,
          # 1-based page number. Out-of-range values return an empty page with correct meta.
          page_number: nil,
          # Items per page. Maximum 250; values above are clamped to 250.
          page_size: nil,
          # Sort field. Allowed: `created_at`, `updated_at`, `display_name`, `status`,
          # `submitted_at`, `verified_at`, `expiring_at`. Prefix with `-` for descending.
          # Default `-created_at`.
          sort: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              enterprise_id: String,
              filter_call_reason_contains: String,
              filter_display_name_contains: String,
              filter_expiring_at_gte: Time,
              filter_expiring_at_lte: Time,
              filter_expiring_within_days: Integer,
              filter_status:
                Telnyx::Enterprises::DirListParams::FilterStatus::OrSymbol,
              page_number: Integer,
              page_size: Integer,
              sort: Telnyx::Enterprises::DirListParams::Sort::OrSymbol,
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
            T.type_alias do
              T.all(Symbol, Telnyx::Enterprises::DirListParams::FilterStatus)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DRAFT =
            T.let(
              :draft,
              Telnyx::Enterprises::DirListParams::FilterStatus::TaggedSymbol
            )
          SUBMITTED =
            T.let(
              :submitted,
              Telnyx::Enterprises::DirListParams::FilterStatus::TaggedSymbol
            )
          IN_REVIEW =
            T.let(
              :in_review,
              Telnyx::Enterprises::DirListParams::FilterStatus::TaggedSymbol
            )
          VERIFIED =
            T.let(
              :verified,
              Telnyx::Enterprises::DirListParams::FilterStatus::TaggedSymbol
            )
          REJECTED =
            T.let(
              :rejected,
              Telnyx::Enterprises::DirListParams::FilterStatus::TaggedSymbol
            )
          UNSUCCESSFUL =
            T.let(
              :unsuccessful,
              Telnyx::Enterprises::DirListParams::FilterStatus::TaggedSymbol
            )
          SUSPENDED =
            T.let(
              :suspended,
              Telnyx::Enterprises::DirListParams::FilterStatus::TaggedSymbol
            )
          EXPIRED =
            T.let(
              :expired,
              Telnyx::Enterprises::DirListParams::FilterStatus::TaggedSymbol
            )
          INFRINGEMENT_CLAIMED =
            T.let(
              :infringement_claimed,
              Telnyx::Enterprises::DirListParams::FilterStatus::TaggedSymbol
            )
          PERMANENTLY_REJECTED =
            T.let(
              :permanently_rejected,
              Telnyx::Enterprises::DirListParams::FilterStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Enterprises::DirListParams::FilterStatus::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Sort field. Allowed: `created_at`, `updated_at`, `display_name`, `status`,
        # `submitted_at`, `verified_at`, `expiring_at`. Prefix with `-` for descending.
        # Default `-created_at`.
        module Sort
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Enterprises::DirListParams::Sort)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREATED_AT =
            T.let(
              :created_at,
              Telnyx::Enterprises::DirListParams::Sort::TaggedSymbol
            )
          CREATED_AT_DESC =
            T.let(
              :"-created_at",
              Telnyx::Enterprises::DirListParams::Sort::TaggedSymbol
            )
          UPDATED_AT =
            T.let(
              :updated_at,
              Telnyx::Enterprises::DirListParams::Sort::TaggedSymbol
            )
          UPDATED_AT_DESC =
            T.let(
              :"-updated_at",
              Telnyx::Enterprises::DirListParams::Sort::TaggedSymbol
            )
          DISPLAY_NAME =
            T.let(
              :display_name,
              Telnyx::Enterprises::DirListParams::Sort::TaggedSymbol
            )
          MINUS_DISPLAY_NAME =
            T.let(
              :"-display_name",
              Telnyx::Enterprises::DirListParams::Sort::TaggedSymbol
            )
          STATUS =
            T.let(
              :status,
              Telnyx::Enterprises::DirListParams::Sort::TaggedSymbol
            )
          STATUS_DESC =
            T.let(
              :"-status",
              Telnyx::Enterprises::DirListParams::Sort::TaggedSymbol
            )
          SUBMITTED_AT =
            T.let(
              :submitted_at,
              Telnyx::Enterprises::DirListParams::Sort::TaggedSymbol
            )
          MINUS_SUBMITTED_AT =
            T.let(
              :"-submitted_at",
              Telnyx::Enterprises::DirListParams::Sort::TaggedSymbol
            )
          VERIFIED_AT =
            T.let(
              :verified_at,
              Telnyx::Enterprises::DirListParams::Sort::TaggedSymbol
            )
          MINUS_VERIFIED_AT =
            T.let(
              :"-verified_at",
              Telnyx::Enterprises::DirListParams::Sort::TaggedSymbol
            )
          EXPIRING_AT =
            T.let(
              :expiring_at,
              Telnyx::Enterprises::DirListParams::Sort::TaggedSymbol
            )
          MINUS_EXPIRING_AT =
            T.let(
              :"-expiring_at",
              Telnyx::Enterprises::DirListParams::Sort::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::Enterprises::DirListParams::Sort::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
