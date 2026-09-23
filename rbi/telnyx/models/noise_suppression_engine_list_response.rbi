# typed: strong

module Telnyx
  module Models
    class NoiseSuppressionEngineListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::NoiseSuppressionEngineListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T::Array[Telnyx::Models::NoiseSuppressionEngineListResponse::Data]
        )
      end
      attr_accessor :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::NoiseSuppressionEngineListResponse::Data::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          {
            data:
              T::Array[Telnyx::Models::NoiseSuppressionEngineListResponse::Data]
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::NoiseSuppressionEngineListResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Default attenuation level of the engine (0-100, in multiples of ten).
        sig { returns(Integer) }
        attr_accessor :default_attenuation_level

        # Human-readable name of the engine.
        sig { returns(String) }
        attr_accessor :label

        # Machine-readable identifier of the engine, used when configuring noise
        # suppression.
        sig { returns(String) }
        attr_accessor :value

        # A noise suppression engine available to the authenticated user.
        sig do
          params(
            default_attenuation_level: Integer,
            label: String,
            value: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Default attenuation level of the engine (0-100, in multiples of ten).
          default_attenuation_level:,
          # Human-readable name of the engine.
          label:,
          # Machine-readable identifier of the engine, used when configuring noise
          # suppression.
          value:
        )
        end

        sig do
          override.returns(
            { default_attenuation_level: Integer, label: String, value: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
