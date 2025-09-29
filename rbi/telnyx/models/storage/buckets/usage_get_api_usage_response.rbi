# typed: strong

module Telnyx
  module Models
    module Storage
      module Buckets
        class UsageGetAPIUsageResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data
                ]
              )
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                T::Array[
                  Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data::OrHash
                ]
            ).void
          end
          attr_writer :data

          sig do
            params(
              data:
                T::Array[
                  Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(data: nil)
          end

          sig do
            override.returns(
              {
                data:
                  T::Array[
                    Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data
                  ]
              }
            )
          end
          def to_hash
          end

          class Data < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data,
                  Telnyx::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  T::Array[
                    Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data::Category
                  ]
                )
              )
            end
            attr_reader :categories

            sig do
              params(
                categories:
                  T::Array[
                    Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data::Category::OrHash
                  ]
              ).void
            end
            attr_writer :categories

            # The time the usage was recorded
            sig { returns(T.nilable(Time)) }
            attr_reader :timestamp

            sig { params(timestamp: Time).void }
            attr_writer :timestamp

            sig do
              returns(
                T.nilable(
                  Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data::Total
                )
              )
            end
            attr_reader :total

            sig do
              params(
                total:
                  Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data::Total::OrHash
              ).void
            end
            attr_writer :total

            sig do
              params(
                categories:
                  T::Array[
                    Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data::Category::OrHash
                  ],
                timestamp: Time,
                total:
                  Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data::Total::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              categories: nil,
              # The time the usage was recorded
              timestamp: nil,
              total: nil
            )
            end

            sig do
              override.returns(
                {
                  categories:
                    T::Array[
                      Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data::Category
                    ],
                  timestamp: Time,
                  total:
                    Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data::Total
                }
              )
            end
            def to_hash
            end

            class Category < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data::Category,
                    Telnyx::Internal::AnyHash
                  )
                end

              # The number of bytes received
              sig { returns(T.nilable(Integer)) }
              attr_reader :bytes_received

              sig { params(bytes_received: Integer).void }
              attr_writer :bytes_received

              # The number of bytes sent
              sig { returns(T.nilable(Integer)) }
              attr_reader :bytes_sent

              sig { params(bytes_sent: Integer).void }
              attr_writer :bytes_sent

              # The category of the bucket operation
              sig do
                returns(
                  T.nilable(
                    Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data::Category::Category::TaggedSymbol
                  )
                )
              end
              attr_reader :category

              sig do
                params(
                  category:
                    Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data::Category::Category::OrSymbol
                ).void
              end
              attr_writer :category

              # The number of operations
              sig { returns(T.nilable(Integer)) }
              attr_reader :ops

              sig { params(ops: Integer).void }
              attr_writer :ops

              # The number of successful operations
              sig { returns(T.nilable(Integer)) }
              attr_reader :successful_ops

              sig { params(successful_ops: Integer).void }
              attr_writer :successful_ops

              sig do
                params(
                  bytes_received: Integer,
                  bytes_sent: Integer,
                  category:
                    Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data::Category::Category::OrSymbol,
                  ops: Integer,
                  successful_ops: Integer
                ).returns(T.attached_class)
              end
              def self.new(
                # The number of bytes received
                bytes_received: nil,
                # The number of bytes sent
                bytes_sent: nil,
                # The category of the bucket operation
                category: nil,
                # The number of operations
                ops: nil,
                # The number of successful operations
                successful_ops: nil
              )
              end

              sig do
                override.returns(
                  {
                    bytes_received: Integer,
                    bytes_sent: Integer,
                    category:
                      Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data::Category::Category::TaggedSymbol,
                    ops: Integer,
                    successful_ops: Integer
                  }
                )
              end
              def to_hash
              end

              # The category of the bucket operation
              module Category
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data::Category::Category
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                LIST_BUCKET =
                  T.let(
                    :list_bucket,
                    Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data::Category::Category::TaggedSymbol
                  )
                LIST_BUCKETS =
                  T.let(
                    :list_buckets,
                    Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data::Category::Category::TaggedSymbol
                  )
                GET_BUCKET_LOCATION =
                  T.let(
                    :"get-bucket_location",
                    Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data::Category::Category::TaggedSymbol
                  )
                CREATE_BUCKET =
                  T.let(
                    :create_bucket,
                    Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data::Category::Category::TaggedSymbol
                  )
                STAT_BUCKET =
                  T.let(
                    :stat_bucket,
                    Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data::Category::Category::TaggedSymbol
                  )
                GET_BUCKET_VERSIONING =
                  T.let(
                    :get_bucket_versioning,
                    Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data::Category::Category::TaggedSymbol
                  )
                SET_BUCKET_VERSIONING =
                  T.let(
                    :set_bucket_versioning,
                    Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data::Category::Category::TaggedSymbol
                  )
                GET_OBJ =
                  T.let(
                    :get_obj,
                    Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data::Category::Category::TaggedSymbol
                  )
                PUT_OBJ =
                  T.let(
                    :put_obj,
                    Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data::Category::Category::TaggedSymbol
                  )
                DELETE_OBJ =
                  T.let(
                    :delete_obj,
                    Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data::Category::Category::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data::Category::Category::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class Total < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::Storage::Buckets::UsageGetAPIUsageResponse::Data::Total,
                    Telnyx::Internal::AnyHash
                  )
                end

              # The number of bytes received
              sig { returns(T.nilable(Integer)) }
              attr_reader :bytes_received

              sig { params(bytes_received: Integer).void }
              attr_writer :bytes_received

              # The number of bytes sent
              sig { returns(T.nilable(Integer)) }
              attr_reader :bytes_sent

              sig { params(bytes_sent: Integer).void }
              attr_writer :bytes_sent

              # The number of operations
              sig { returns(T.nilable(Integer)) }
              attr_reader :ops

              sig { params(ops: Integer).void }
              attr_writer :ops

              # The number of successful operations
              sig { returns(T.nilable(Integer)) }
              attr_reader :successful_ops

              sig { params(successful_ops: Integer).void }
              attr_writer :successful_ops

              sig do
                params(
                  bytes_received: Integer,
                  bytes_sent: Integer,
                  ops: Integer,
                  successful_ops: Integer
                ).returns(T.attached_class)
              end
              def self.new(
                # The number of bytes received
                bytes_received: nil,
                # The number of bytes sent
                bytes_sent: nil,
                # The number of operations
                ops: nil,
                # The number of successful operations
                successful_ops: nil
              )
              end

              sig do
                override.returns(
                  {
                    bytes_received: Integer,
                    bytes_sent: Integer,
                    ops: Integer,
                    successful_ops: Integer
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
end
