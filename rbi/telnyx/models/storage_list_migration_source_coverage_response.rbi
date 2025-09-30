# typed: strong

module Telnyx
  module Models
    class StorageListMigrationSourceCoverageResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::StorageListMigrationSourceCoverageResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            T::Array[
              Telnyx::Models::StorageListMigrationSourceCoverageResponse::Data
            ]
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::StorageListMigrationSourceCoverageResponse::Data::OrHash
            ]
        ).void
      end
      attr_writer :data

      sig { returns(T.nilable(Telnyx::Storage::Buckets::PaginationMetaSimple)) }
      attr_reader :meta

      sig do
        params(
          meta: Telnyx::Storage::Buckets::PaginationMetaSimple::OrHash
        ).void
      end
      attr_writer :meta

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::StorageListMigrationSourceCoverageResponse::Data::OrHash
            ],
          meta: Telnyx::Storage::Buckets::PaginationMetaSimple::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          {
            data:
              T::Array[
                Telnyx::Models::StorageListMigrationSourceCoverageResponse::Data
              ],
            meta: Telnyx::Storage::Buckets::PaginationMetaSimple
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::StorageListMigrationSourceCoverageResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Cloud provider from which to migrate data.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::StorageListMigrationSourceCoverageResponse::Data::Provider::TaggedSymbol
            )
          )
        end
        attr_reader :provider

        sig do
          params(
            provider:
              Telnyx::Models::StorageListMigrationSourceCoverageResponse::Data::Provider::OrSymbol
          ).void
        end
        attr_writer :provider

        # Provider region from which to migrate data.
        sig { returns(T.nilable(String)) }
        attr_reader :source_region

        sig { params(source_region: String).void }
        attr_writer :source_region

        sig do
          params(
            provider:
              Telnyx::Models::StorageListMigrationSourceCoverageResponse::Data::Provider::OrSymbol,
            source_region: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Cloud provider from which to migrate data.
          provider: nil,
          # Provider region from which to migrate data.
          source_region: nil
        )
        end

        sig do
          override.returns(
            {
              provider:
                Telnyx::Models::StorageListMigrationSourceCoverageResponse::Data::Provider::TaggedSymbol,
              source_region: String
            }
          )
        end
        def to_hash
        end

        # Cloud provider from which to migrate data.
        module Provider
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::StorageListMigrationSourceCoverageResponse::Data::Provider
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AWS =
            T.let(
              :aws,
              Telnyx::Models::StorageListMigrationSourceCoverageResponse::Data::Provider::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::StorageListMigrationSourceCoverageResponse::Data::Provider::TaggedSymbol
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
