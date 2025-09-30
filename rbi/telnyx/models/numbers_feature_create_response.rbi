# typed: strong

module Telnyx
  module Models
    class NumbersFeatureCreateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::NumbersFeatureCreateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            T::Array[Telnyx::Models::NumbersFeatureCreateResponse::Data]
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            T::Array[Telnyx::Models::NumbersFeatureCreateResponse::Data::OrHash]
        ).void
      end
      attr_writer :data

      sig do
        params(
          data:
            T::Array[Telnyx::Models::NumbersFeatureCreateResponse::Data::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: T::Array[Telnyx::Models::NumbersFeatureCreateResponse::Data] }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::NumbersFeatureCreateResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T::Array[String]) }
        attr_accessor :features

        sig { returns(String) }
        attr_accessor :phone_number

        sig do
          params(features: T::Array[String], phone_number: String).returns(
            T.attached_class
          )
        end
        def self.new(features:, phone_number:)
        end

        sig do
          override.returns({ features: T::Array[String], phone_number: String })
        end
        def to_hash
        end
      end
    end
  end
end
