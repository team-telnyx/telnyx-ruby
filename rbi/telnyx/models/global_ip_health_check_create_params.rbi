# typed: strong

module Telnyx
  module Models
    class GlobalIPHealthCheckCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::GlobalIPHealthCheckCreateParams,
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

      sig do
        params(
          global_ip_id: String,
          health_check_params: T::Hash[Symbol, T.anything],
          health_check_type: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Global IP ID.
        global_ip_id: nil,
        # A Global IP health check params.
        health_check_params: nil,
        # The Global IP health check type.
        health_check_type: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            global_ip_id: String,
            health_check_params: T::Hash[Symbol, T.anything],
            health_check_type: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
