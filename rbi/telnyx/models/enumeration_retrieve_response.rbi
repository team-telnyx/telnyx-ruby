# typed: strong

module Telnyx
  module Models
    module EnumerationRetrieveResponse
      extend Telnyx::Internal::Type::Union

      Variants = T.type_alias { T.any(T::Array[String], T.anything) }

      sig do
        override.returns(
          T::Array[Telnyx::Models::EnumerationRetrieveResponse::Variants]
        )
      end
      def self.variants
      end

      StringArray =
        T.let(
          Telnyx::Internal::Type::ArrayOf[String],
          Telnyx::Internal::Type::Converter
        )
    end
  end
end
