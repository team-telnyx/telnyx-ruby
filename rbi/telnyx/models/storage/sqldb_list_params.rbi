# typed: strong

module Telnyx
  module Models
    module Storage
      class SqldbListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::Storage::SqldbListParams, Telnyx::Internal::AnyHash)
          end

        # Filter by exact name match.
        sig { returns(T.nilable(String)) }
        attr_reader :filter_name

        sig { params(filter_name: String).void }
        attr_writer :filter_name

        # Filter by provisioning status.
        sig do
          returns(
            T.nilable(Telnyx::Storage::SqldbListParams::FilterStatus::OrSymbol)
          )
        end
        attr_reader :filter_status

        sig do
          params(
            filter_status:
              Telnyx::Storage::SqldbListParams::FilterStatus::OrSymbol
          ).void
        end
        attr_writer :filter_status

        # The page number to load.
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_number

        sig { params(page_number: Integer).void }
        attr_writer :page_number

        # The size of the page. Values above 250 are treated as 250.
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_size

        sig { params(page_size: Integer).void }
        attr_writer :page_size

        # Sort field; prefix with `-` for descending order.
        sig do
          returns(T.nilable(Telnyx::Storage::SqldbListParams::Sort::OrSymbol))
        end
        attr_reader :sort

        sig do
          params(sort: Telnyx::Storage::SqldbListParams::Sort::OrSymbol).void
        end
        attr_writer :sort

        sig do
          params(
            filter_name: String,
            filter_status:
              Telnyx::Storage::SqldbListParams::FilterStatus::OrSymbol,
            page_number: Integer,
            page_size: Integer,
            sort: Telnyx::Storage::SqldbListParams::Sort::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter by exact name match.
          filter_name: nil,
          # Filter by provisioning status.
          filter_status: nil,
          # The page number to load.
          page_number: nil,
          # The size of the page. Values above 250 are treated as 250.
          page_size: nil,
          # Sort field; prefix with `-` for descending order.
          sort: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              filter_name: String,
              filter_status:
                Telnyx::Storage::SqldbListParams::FilterStatus::OrSymbol,
              page_number: Integer,
              page_size: Integer,
              sort: Telnyx::Storage::SqldbListParams::Sort::OrSymbol,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Filter by provisioning status.
        module FilterStatus
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Storage::SqldbListParams::FilterStatus)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :pending,
              Telnyx::Storage::SqldbListParams::FilterStatus::TaggedSymbol
            )
          PROVISION_OK =
            T.let(
              :provision_ok,
              Telnyx::Storage::SqldbListParams::FilterStatus::TaggedSymbol
            )
          PROVISION_FAILED =
            T.let(
              :provision_failed,
              Telnyx::Storage::SqldbListParams::FilterStatus::TaggedSymbol
            )
          DELETING =
            T.let(
              :deleting,
              Telnyx::Storage::SqldbListParams::FilterStatus::TaggedSymbol
            )
          DELETE_FAILED =
            T.let(
              :delete_failed,
              Telnyx::Storage::SqldbListParams::FilterStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Storage::SqldbListParams::FilterStatus::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Sort field; prefix with `-` for descending order.
        module Sort
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Storage::SqldbListParams::Sort)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NAME =
            T.let(:name, Telnyx::Storage::SqldbListParams::Sort::TaggedSymbol)
          NAME_DESC =
            T.let(
              :"-name",
              Telnyx::Storage::SqldbListParams::Sort::TaggedSymbol
            )
          STATUS =
            T.let(:status, Telnyx::Storage::SqldbListParams::Sort::TaggedSymbol)
          STATUS_DESC =
            T.let(
              :"-status",
              Telnyx::Storage::SqldbListParams::Sort::TaggedSymbol
            )
          CREATED_AT =
            T.let(
              :created_at,
              Telnyx::Storage::SqldbListParams::Sort::TaggedSymbol
            )
          CREATED_AT_DESC =
            T.let(
              :"-created_at",
              Telnyx::Storage::SqldbListParams::Sort::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::Storage::SqldbListParams::Sort::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
