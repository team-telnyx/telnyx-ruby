# typed: strong

module Telnyx
  module Models
    class GlobalIPHealthCheckListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::GlobalIPHealthCheckListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            T::Array[Telnyx::Models::GlobalIPHealthCheckListResponse::Data]
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::GlobalIPHealthCheckListResponse::Data::OrHash
            ]
        ).void
      end
      attr_writer :data

      sig { returns(T.nilable(Telnyx::PaginationMeta)) }
      attr_reader :meta

      sig { params(meta: Telnyx::PaginationMeta::OrHash).void }
      attr_writer :meta

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::GlobalIPHealthCheckListResponse::Data::OrHash
            ],
          meta: Telnyx::PaginationMeta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          {
            data:
              T::Array[Telnyx::Models::GlobalIPHealthCheckListResponse::Data],
            meta: Telnyx::PaginationMeta
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Models::Record
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::GlobalIPHealthCheckListResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Global IP ID.
        sig { returns(T.nilable(String)) }
        attr_reader :global_ip_id

        sig { params(global_ip_id: String).void }
        attr_writer :global_ip_id

        # A Global IP health check params.
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :health_check_params

        sig { params(health_check_params: T::Hash[Symbol, T.anything]).void }
        attr_writer :health_check_params

        # The Global IP health check type.
        sig { returns(T.nilable(String)) }
        attr_reader :health_check_type

        sig { params(health_check_type: String).void }
        attr_writer :health_check_type

        # Identifies the type of the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        sig do
          params(
            global_ip_id: String,
            health_check_params: T::Hash[Symbol, T.anything],
            health_check_type: String,
            record_type: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Global IP ID.
          global_ip_id: nil,
          # A Global IP health check params.
          health_check_params: nil,
          # The Global IP health check type.
          health_check_type: nil,
          # Identifies the type of the resource.
          record_type: nil
        )
        end

        sig do
          override.returns(
            {
              global_ip_id: String,
              health_check_params: T::Hash[Symbol, T.anything],
              health_check_type: String,
              record_type: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
