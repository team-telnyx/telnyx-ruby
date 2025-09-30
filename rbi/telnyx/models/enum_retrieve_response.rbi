# typed: strong

module Telnyx
  module Models
    module EnumRetrieveResponse
      extend Telnyx::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            T::Array[
              Telnyx::Models::EnumRetrieveResponse::EnumListResponse::Variants
            ],
            T.anything
          )
        end

      module EnumListResponse
        extend Telnyx::Internal::Type::Union

        Variants = T.type_alias { T.any(String, T.anything) }

        sig do
          override.returns(
            T::Array[
              Telnyx::Models::EnumRetrieveResponse::EnumListResponse::Variants
            ]
          )
        end
        def self.variants
        end
      end

      sig do
        override.returns(
          T::Array[Telnyx::Models::EnumRetrieveResponse::Variants]
        )
      end
      def self.variants
      end

      EnumListResponseArray =
        T.let(
          Telnyx::Internal::Type::ArrayOf[
            union: Telnyx::Models::EnumRetrieveResponse::EnumListResponse
          ],
          Telnyx::Internal::Type::Converter
        )
    end
  end
end
