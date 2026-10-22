# typed: strong

module Telnyx
  module Models
    module Compute
      class FuncListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Compute::FuncListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # Always present; empty when the function has no bindings.
        sig do
          returns(
            T.nilable(
              T::Array[Telnyx::Models::Compute::FuncListResponse::Binding]
            )
          )
        end
        attr_reader :bindings

        sig do
          params(
            bindings:
              T::Array[
                Telnyx::Models::Compute::FuncListResponse::Binding::OrHash
              ]
          ).void
        end
        attr_writer :bindings

        sig { returns(T.nilable(String)) }
        attr_reader :created_at

        sig { params(created_at: String).void }
        attr_writer :created_at

        sig { returns(T.nilable(String)) }
        attr_reader :invoke_url

        sig { params(invoke_url: String).void }
        attr_writer :invoke_url

        sig { returns(T.nilable(String)) }
        attr_reader :message

        sig { params(message: String).void }
        attr_writer :message

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        sig { returns(T.nilable(String)) }
        attr_reader :status

        sig { params(status: String).void }
        attr_writer :status

        sig { returns(T.nilable(String)) }
        attr_reader :status_detail

        sig { params(status_detail: String).void }
        attr_writer :status_detail

        sig { returns(T.nilable(String)) }
        attr_reader :updated_at

        sig { params(updated_at: String).void }
        attr_writer :updated_at

        sig do
          params(
            id: String,
            bindings:
              T::Array[
                Telnyx::Models::Compute::FuncListResponse::Binding::OrHash
              ],
            created_at: String,
            invoke_url: String,
            message: String,
            name: String,
            record_type: String,
            status: String,
            status_detail: String,
            updated_at: String
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          # Always present; empty when the function has no bindings.
          bindings: nil,
          created_at: nil,
          invoke_url: nil,
          message: nil,
          name: nil,
          record_type: nil,
          status: nil,
          status_detail: nil,
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              bindings:
                T::Array[Telnyx::Models::Compute::FuncListResponse::Binding],
              created_at: String,
              invoke_url: String,
              message: String,
              name: String,
              record_type: String,
              status: String,
              status_detail: String,
              updated_at: String
            }
          )
        end
        def to_hash
        end

        class Binding < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Compute::FuncListResponse::Binding,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :actor_type

          sig { params(actor_type: String).void }
          attr_writer :actor_type

          sig { returns(T.nilable(String)) }
          attr_reader :binding_id

          sig { params(binding_id: String).void }
          attr_writer :binding_id

          sig { returns(T.nilable(String)) }
          attr_reader :binding_type

          sig { params(binding_type: String).void }
          attr_writer :binding_type

          sig { returns(T.nilable(String)) }
          attr_reader :bucket_id

          sig { params(bucket_id: String).void }
          attr_writer :bucket_id

          sig { returns(T.nilable(String)) }
          attr_reader :created_at

          sig { params(created_at: String).void }
          attr_writer :created_at

          sig { returns(T.nilable(String)) }
          attr_reader :env_name

          sig { params(env_name: String).void }
          attr_writer :env_name

          sig { returns(T.nilable(String)) }
          attr_reader :func_id

          sig { params(func_id: String).void }
          attr_writer :func_id

          sig { returns(T.nilable(String)) }
          attr_reader :kv_id

          sig { params(kv_id: String).void }
          attr_writer :kv_id

          sig { returns(T.nilable(String)) }
          attr_reader :record_type

          sig { params(record_type: String).void }
          attr_writer :record_type

          sig { returns(T.nilable(String)) }
          attr_reader :secret_name

          sig { params(secret_name: String).void }
          attr_writer :secret_name

          sig { returns(T.nilable(String)) }
          attr_reader :sqldb_id

          sig { params(sqldb_id: String).void }
          attr_writer :sqldb_id

          sig { returns(T.nilable(String)) }
          attr_reader :status

          sig { params(status: String).void }
          attr_writer :status

          sig { returns(T.nilable(String)) }
          attr_reader :updated_at

          sig { params(updated_at: String).void }
          attr_writer :updated_at

          # A function-scoped binding persisted at ship time. For binding_type=actor,
          # actor_type is the referenced Stateful Actor type and env_name is the binding
          # name exposed to the function.
          sig do
            params(
              actor_type: String,
              binding_id: String,
              binding_type: String,
              bucket_id: String,
              created_at: String,
              env_name: String,
              func_id: String,
              kv_id: String,
              record_type: String,
              secret_name: String,
              sqldb_id: String,
              status: String,
              updated_at: String
            ).returns(T.attached_class)
          end
          def self.new(
            actor_type: nil,
            binding_id: nil,
            binding_type: nil,
            bucket_id: nil,
            created_at: nil,
            env_name: nil,
            func_id: nil,
            kv_id: nil,
            record_type: nil,
            secret_name: nil,
            sqldb_id: nil,
            status: nil,
            updated_at: nil
          )
          end

          sig do
            override.returns(
              {
                actor_type: String,
                binding_id: String,
                binding_type: String,
                bucket_id: String,
                created_at: String,
                env_name: String,
                func_id: String,
                kv_id: String,
                record_type: String,
                secret_name: String,
                sqldb_id: String,
                status: String,
                updated_at: String
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
