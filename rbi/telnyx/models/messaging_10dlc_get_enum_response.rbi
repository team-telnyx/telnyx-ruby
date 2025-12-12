# typed: strong

module Telnyx
  module Models
    module Messaging10dlcGetEnumResponse
      extend Telnyx::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            T::Array[String],
            T::Array[T::Hash[Symbol, T.anything]],
            T::Hash[Symbol, T.anything],
            Telnyx::Models::Messaging10dlcGetEnumResponse::EnumPaginatedResponse
          )
        end

      class EnumPaginatedResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Messaging10dlcGetEnumResponse::EnumPaginatedResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :page

        sig { returns(T::Array[T::Hash[Symbol, T.anything]]) }
        attr_accessor :records

        sig { returns(Integer) }
        attr_accessor :total_records

        sig do
          params(
            page: Integer,
            records: T::Array[T::Hash[Symbol, T.anything]],
            total_records: Integer
          ).returns(T.attached_class)
        end
        def self.new(page:, records:, total_records:)
        end

        sig do
          override.returns(
            {
              page: Integer,
              records: T::Array[T::Hash[Symbol, T.anything]],
              total_records: Integer
            }
          )
        end
        def to_hash
        end
      end

      sig do
        override.returns(
          T::Array[Telnyx::Models::Messaging10dlcGetEnumResponse::Variants]
        )
      end
      def self.variants
      end

      StringArray =
        T.let(
          Telnyx::Internal::Type::ArrayOf[String],
          Telnyx::Internal::Type::Converter
        )

      EnumObjectListResponseArray =
        T.let(
          Telnyx::Internal::Type::ArrayOf[
            Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]
          ],
          Telnyx::Internal::Type::Converter
        )

      EnumObjectToStringResponseMap =
        T.let(
          Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown],
          Telnyx::Internal::Type::Converter
        )

      EnumObjecToObjecttResponseMap =
        T.let(
          Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown],
          Telnyx::Internal::Type::Converter
        )
    end
  end
end
