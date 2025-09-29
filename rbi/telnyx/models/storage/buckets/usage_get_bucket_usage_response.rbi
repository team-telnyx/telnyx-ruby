# typed: strong

module Telnyx
  module Models
    module Storage
      module Buckets
        class UsageGetBucketUsageResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Storage::Buckets::UsageGetBucketUsageResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::Models::Storage::Buckets::UsageGetBucketUsageResponse::Data
                ]
              )
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                T::Array[
                  Telnyx::Models::Storage::Buckets::UsageGetBucketUsageResponse::Data::OrHash
                ]
            ).void
          end
          attr_writer :data

          sig do
            returns(T.nilable(Telnyx::Storage::Buckets::PaginationMetaSimple))
          end
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
                  Telnyx::Models::Storage::Buckets::UsageGetBucketUsageResponse::Data::OrHash
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
                    Telnyx::Models::Storage::Buckets::UsageGetBucketUsageResponse::Data
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
                  Telnyx::Models::Storage::Buckets::UsageGetBucketUsageResponse::Data,
                  Telnyx::Internal::AnyHash
                )
              end

            # The number of objects in the bucket
            sig { returns(T.nilable(Integer)) }
            attr_reader :num_objects

            sig { params(num_objects: Integer).void }
            attr_writer :num_objects

            # The size of the bucket in bytes
            sig { returns(T.nilable(Integer)) }
            attr_reader :size

            sig { params(size: Integer).void }
            attr_writer :size

            # The size of the bucket in kilobytes
            sig { returns(T.nilable(Integer)) }
            attr_reader :size_kb

            sig { params(size_kb: Integer).void }
            attr_writer :size_kb

            # The time the snapshot was taken
            sig { returns(T.nilable(Time)) }
            attr_reader :timestamp

            sig { params(timestamp: Time).void }
            attr_writer :timestamp

            sig do
              params(
                num_objects: Integer,
                size: Integer,
                size_kb: Integer,
                timestamp: Time
              ).returns(T.attached_class)
            end
            def self.new(
              # The number of objects in the bucket
              num_objects: nil,
              # The size of the bucket in bytes
              size: nil,
              # The size of the bucket in kilobytes
              size_kb: nil,
              # The time the snapshot was taken
              timestamp: nil
            )
            end

            sig do
              override.returns(
                {
                  num_objects: Integer,
                  size: Integer,
                  size_kb: Integer,
                  timestamp: Time
                }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
