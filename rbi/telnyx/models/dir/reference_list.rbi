# typed: strong

module Telnyx
  module Models
    module Dir
      class ReferenceList < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::Dir::ReferenceList, Telnyx::Internal::AnyHash)
          end

        sig { returns(T::Array[Telnyx::Dir::Reference]) }
        attr_accessor :data

        sig do
          params(data: T::Array[Telnyx::Dir::Reference::OrHash]).returns(
            T.attached_class
          )
        end
        def self.new(data:)
        end

        sig { override.returns({ data: T::Array[Telnyx::Dir::Reference] }) }
        def to_hash
        end
      end
    end
  end
end
