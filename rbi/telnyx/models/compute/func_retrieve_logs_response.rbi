# typed: strong

module Telnyx
  module Models
    module Compute
      module FuncRetrieveLogsResponse
        extend Telnyx::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncRuntimeLogsResponse,
              Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncInvocationLogsResponse
            )
          end

        class FuncRuntimeLogsResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncRuntimeLogsResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncRuntimeLogsResponse::Data
                ]
              )
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                T::Array[
                  Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncRuntimeLogsResponse::Data::OrHash
                ]
            ).void
          end
          attr_writer :data

          sig { returns(T.nilable(Telnyx::Compute::LogsMeta)) }
          attr_reader :meta

          sig { params(meta: Telnyx::Compute::LogsMeta::OrHash).void }
          attr_writer :meta

          sig do
            params(
              data:
                T::Array[
                  Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncRuntimeLogsResponse::Data::OrHash
                ],
              meta: Telnyx::Compute::LogsMeta::OrHash
            ).returns(T.attached_class)
          end
          def self.new(data: nil, meta: nil)
          end

          sig do
            override.returns(
              {
                data:
                  T::Array[
                    Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncRuntimeLogsResponse::Data
                  ],
                meta: Telnyx::Compute::LogsMeta
              }
            )
          end
          def to_hash
          end

          class Data < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncRuntimeLogsResponse::Data,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :level

            sig { params(level: String).void }
            attr_writer :level

            sig { returns(T.nilable(String)) }
            attr_reader :message

            sig { params(message: String).void }
            attr_writer :message

            sig do
              returns(
                T.nilable(
                  Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncRuntimeLogsResponse::Data::RecordType::TaggedSymbol
                )
              )
            end
            attr_reader :record_type

            sig do
              params(
                record_type:
                  Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncRuntimeLogsResponse::Data::RecordType::OrSymbol
              ).void
            end
            attr_writer :record_type

            sig { returns(T.nilable(Time)) }
            attr_reader :timestamp

            sig { params(timestamp: Time).void }
            attr_writer :timestamp

            sig do
              params(
                level: String,
                message: String,
                record_type:
                  Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncRuntimeLogsResponse::Data::RecordType::OrSymbol,
                timestamp: Time
              ).returns(T.attached_class)
            end
            def self.new(
              level: nil,
              message: nil,
              record_type: nil,
              timestamp: nil
            )
            end

            sig do
              override.returns(
                {
                  level: String,
                  message: String,
                  record_type:
                    Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncRuntimeLogsResponse::Data::RecordType::TaggedSymbol,
                  timestamp: Time
                }
              )
            end
            def to_hash
            end

            module RecordType
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncRuntimeLogsResponse::Data::RecordType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              COMPUTE_FUNC_RUNTIME_LOG =
                T.let(
                  :compute_func_runtime_log,
                  Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncRuntimeLogsResponse::Data::RecordType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncRuntimeLogsResponse::Data::RecordType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        class FuncInvocationLogsResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncInvocationLogsResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncInvocationLogsResponse::Data
                ]
              )
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                T::Array[
                  Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncInvocationLogsResponse::Data::OrHash
                ]
            ).void
          end
          attr_writer :data

          sig { returns(T.nilable(Telnyx::Compute::LogsMeta)) }
          attr_reader :meta

          sig { params(meta: Telnyx::Compute::LogsMeta::OrHash).void }
          attr_writer :meta

          sig do
            params(
              data:
                T::Array[
                  Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncInvocationLogsResponse::Data::OrHash
                ],
              meta: Telnyx::Compute::LogsMeta::OrHash
            ).returns(T.attached_class)
          end
          def self.new(data: nil, meta: nil)
          end

          sig do
            override.returns(
              {
                data:
                  T::Array[
                    Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncInvocationLogsResponse::Data
                  ],
                meta: Telnyx::Compute::LogsMeta
              }
            )
          end
          def to_hash
          end

          class Data < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncInvocationLogsResponse::Data,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Float)) }
            attr_reader :duration_ms

            sig { params(duration_ms: Float).void }
            attr_writer :duration_ms

            sig { returns(T.nilable(String)) }
            attr_reader :method_

            sig { params(method_: String).void }
            attr_writer :method_

            sig { returns(T.nilable(String)) }
            attr_reader :path

            sig { params(path: String).void }
            attr_writer :path

            sig do
              returns(
                T.nilable(
                  Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncInvocationLogsResponse::Data::RecordType::TaggedSymbol
                )
              )
            end
            attr_reader :record_type

            sig do
              params(
                record_type:
                  Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncInvocationLogsResponse::Data::RecordType::OrSymbol
              ).void
            end
            attr_writer :record_type

            sig { returns(T.nilable(String)) }
            attr_reader :region

            sig { params(region: String).void }
            attr_writer :region

            sig { returns(T.nilable(Integer)) }
            attr_reader :request_size_bytes

            sig { params(request_size_bytes: Integer).void }
            attr_writer :request_size_bytes

            sig { returns(T.nilable(Integer)) }
            attr_reader :response_size_bytes

            sig { params(response_size_bytes: Integer).void }
            attr_writer :response_size_bytes

            sig { returns(T.nilable(Integer)) }
            attr_reader :status_code

            sig { params(status_code: Integer).void }
            attr_writer :status_code

            sig { returns(T.nilable(Time)) }
            attr_reader :timestamp

            sig { params(timestamp: Time).void }
            attr_writer :timestamp

            sig do
              params(
                duration_ms: Float,
                method_: String,
                path: String,
                record_type:
                  Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncInvocationLogsResponse::Data::RecordType::OrSymbol,
                region: String,
                request_size_bytes: Integer,
                response_size_bytes: Integer,
                status_code: Integer,
                timestamp: Time
              ).returns(T.attached_class)
            end
            def self.new(
              duration_ms: nil,
              method_: nil,
              path: nil,
              record_type: nil,
              region: nil,
              request_size_bytes: nil,
              response_size_bytes: nil,
              status_code: nil,
              timestamp: nil
            )
            end

            sig do
              override.returns(
                {
                  duration_ms: Float,
                  method_: String,
                  path: String,
                  record_type:
                    Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncInvocationLogsResponse::Data::RecordType::TaggedSymbol,
                  region: String,
                  request_size_bytes: Integer,
                  response_size_bytes: Integer,
                  status_code: Integer,
                  timestamp: Time
                }
              )
            end
            def to_hash
            end

            module RecordType
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncInvocationLogsResponse::Data::RecordType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              COMPUTE_FUNC_INVOCATION_LOG =
                T.let(
                  :compute_func_invocation_log,
                  Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncInvocationLogsResponse::Data::RecordType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::Compute::FuncRetrieveLogsResponse::FuncInvocationLogsResponse::Data::RecordType::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end

        sig do
          override.returns(
            T::Array[
              Telnyx::Models::Compute::FuncRetrieveLogsResponse::Variants
            ]
          )
        end
        def self.variants
        end
      end
    end
  end
end
