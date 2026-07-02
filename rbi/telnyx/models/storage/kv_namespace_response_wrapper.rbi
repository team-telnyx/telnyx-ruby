# typed: strong

module Telnyx
  module Models
    module Storage
      class KvNamespaceResponseWrapper < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Storage::KvNamespaceResponseWrapper,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Telnyx::Storage::KvNamespace)) }
        attr_reader :data

        sig { params(data: Telnyx::Storage::KvNamespace::OrHash).void }
        attr_writer :data

        sig do
          params(data: Telnyx::Storage::KvNamespace::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(data: nil)
        end

        sig { override.returns({ data: Telnyx::Storage::KvNamespace }) }
        def to_hash
        end
      end
    end
  end
end
