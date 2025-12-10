# typed: strong

module Telnyx
  module Models
    class FaxListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::Models::FaxListResponse, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(T::Array[Telnyx::Fax])) }
      attr_reader :data

      sig { params(data: T::Array[Telnyx::Fax::OrHash]).void }
      attr_writer :data

      sig { returns(T.nilable(T.anything)) }
      attr_reader :meta

      sig { params(meta: T.anything).void }
      attr_writer :meta

      sig do
        params(data: T::Array[Telnyx::Fax::OrHash], meta: T.anything).returns(
          T.attached_class
        )
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns({ data: T::Array[Telnyx::Fax], meta: T.anything })
      end
      def to_hash
      end
    end
  end
end
