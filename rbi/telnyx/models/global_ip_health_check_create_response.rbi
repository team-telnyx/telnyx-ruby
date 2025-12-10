# typed: strong

module Telnyx
  module Models
    class GlobalIPHealthCheckCreateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::GlobalIPHealthCheckCreateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(Telnyx::Models::GlobalIPHealthCheckCreateResponse::Data)
        )
      end
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::GlobalIPHealthCheckCreateResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::GlobalIPHealthCheckCreateResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::GlobalIPHealthCheckCreateResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::GlobalIPHealthCheckCreateResponse::Data,
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

        # Identifies the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # ISO 8601 formatted date-time indicating when the resource was created.
        sig { returns(T.nilable(String)) }
        attr_reader :created_at

        sig { params(created_at: String).void }
        attr_writer :created_at

        # Identifies the type of the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        # ISO 8601 formatted date-time indicating when the resource was updated.
        sig { returns(T.nilable(String)) }
        attr_reader :updated_at

        sig { params(updated_at: String).void }
        attr_writer :updated_at

        sig do
          params(
            id: String,
            created_at: String,
            record_type: String,
            updated_at: String,
            global_ip_id: String,
            health_check_params: T::Hash[Symbol, T.anything],
            health_check_type: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifies the resource.
          id: nil,
          # ISO 8601 formatted date-time indicating when the resource was created.
          created_at: nil,
          # Identifies the type of the resource.
          record_type: nil,
          # ISO 8601 formatted date-time indicating when the resource was updated.
          updated_at: nil,
          # Global IP ID.
          global_ip_id: nil,
          # A Global IP health check params.
          health_check_params: nil,
          # The Global IP health check type.
          health_check_type: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: String,
              record_type: String,
              updated_at: String,
              global_ip_id: String,
              health_check_params: T::Hash[Symbol, T.anything],
              health_check_type: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
