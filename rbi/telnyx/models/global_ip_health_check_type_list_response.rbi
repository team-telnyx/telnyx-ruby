# typed: strong

module Telnyx
  module Models
    class GlobalIPHealthCheckTypeListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::GlobalIPHealthCheckTypeListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            T::Array[Telnyx::Models::GlobalIPHealthCheckTypeListResponse::Data]
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::GlobalIPHealthCheckTypeListResponse::Data::OrHash
            ]
        ).void
      end
      attr_writer :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::GlobalIPHealthCheckTypeListResponse::Data::OrHash
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
                Telnyx::Models::GlobalIPHealthCheckTypeListResponse::Data
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
              Telnyx::Models::GlobalIPHealthCheckTypeListResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Global IP Health check params.
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :health_check_params

        sig { params(health_check_params: T::Hash[Symbol, T.anything]).void }
        attr_writer :health_check_params

        # Global IP Health check type.
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
            health_check_params: T::Hash[Symbol, T.anything],
            health_check_type: String,
            record_type: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Global IP Health check params.
          health_check_params: nil,
          # Global IP Health check type.
          health_check_type: nil,
          # Identifies the type of the resource.
          record_type: nil
        )
        end

        sig do
          override.returns(
            {
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
