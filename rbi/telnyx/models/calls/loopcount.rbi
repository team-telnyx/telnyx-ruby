# typed: strong

module Telnyx
  module Models
    module Calls
      module Loopcount
        extend Telnyx::Internal::Type::Union

        Variants = T.type_alias { T.any(String, Integer) }

        sig { override.returns(T::Array[Telnyx::Calls::Loopcount::Variants]) }
        def self.variants
        end
      end
    end
  end
end
