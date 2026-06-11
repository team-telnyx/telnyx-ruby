# typed: strong

module Telnyx
  module Models
    module Enterprises
      module Reputation
        class RemediationListParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Enterprises::Reputation::RemediationListParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :enterprise_id

          # Only requests created on or after this timestamp (ISO 8601).
          sig { returns(T.nilable(Time)) }
          attr_reader :filter_created_at_gte

          sig { params(filter_created_at_gte: Time).void }
          attr_writer :filter_created_at_gte

          # Only requests created on or before this timestamp (ISO 8601).
          sig { returns(T.nilable(Time)) }
          attr_reader :filter_created_at_lte

          sig { params(filter_created_at_lte: Time).void }
          attr_writer :filter_created_at_lte

          # Filter by customer-facing status.
          sig do
            returns(
              T.nilable(
                Telnyx::Enterprises::Reputation::RemediationListParams::FilterStatus::OrSymbol
              )
            )
          end
          attr_reader :filter_status

          sig do
            params(
              filter_status:
                Telnyx::Enterprises::Reputation::RemediationListParams::FilterStatus::OrSymbol
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

          sig do
            params(
              enterprise_id: String,
              filter_created_at_gte: Time,
              filter_created_at_lte: Time,
              filter_status:
                Telnyx::Enterprises::Reputation::RemediationListParams::FilterStatus::OrSymbol,
              page_number: Integer,
              page_size: Integer,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            enterprise_id:,
            # Only requests created on or after this timestamp (ISO 8601).
            filter_created_at_gte: nil,
            # Only requests created on or before this timestamp (ISO 8601).
            filter_created_at_lte: nil,
            # Filter by customer-facing status.
            filter_status: nil,
            # 1-based page number. Out-of-range values return an empty page with correct meta.
            page_number: nil,
            # Items per page. Maximum 250; values above are clamped to 250.
            page_size: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                enterprise_id: String,
                filter_created_at_gte: Time,
                filter_created_at_lte: Time,
                filter_status:
                  Telnyx::Enterprises::Reputation::RemediationListParams::FilterStatus::OrSymbol,
                page_number: Integer,
                page_size: Integer,
                request_options: Telnyx::RequestOptions
              }
            )
          end
          def to_hash
          end

          # Filter by customer-facing status.
          module FilterStatus
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Enterprises::Reputation::RemediationListParams::FilterStatus
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING =
              T.let(
                :pending,
                Telnyx::Enterprises::Reputation::RemediationListParams::FilterStatus::TaggedSymbol
              )
            IN_PROGRESS =
              T.let(
                :in_progress,
                Telnyx::Enterprises::Reputation::RemediationListParams::FilterStatus::TaggedSymbol
              )
            COMPLETED =
              T.let(
                :completed,
                Telnyx::Enterprises::Reputation::RemediationListParams::FilterStatus::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                Telnyx::Enterprises::Reputation::RemediationListParams::FilterStatus::TaggedSymbol
              )
            CANCELLED =
              T.let(
                :cancelled,
                Telnyx::Enterprises::Reputation::RemediationListParams::FilterStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Enterprises::Reputation::RemediationListParams::FilterStatus::TaggedSymbol
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
end
