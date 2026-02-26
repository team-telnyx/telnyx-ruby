# typed: strong

module Telnyx
  module Models
    module Portouts
      class SupportingDocumentListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Portouts::SupportingDocumentListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(T::Array[Telnyx::Portouts::PortOutSupportingDocument])
          )
        end
        attr_reader :data

        sig do
          params(
            data: T::Array[Telnyx::Portouts::PortOutSupportingDocument::OrHash]
          ).void
        end
        attr_writer :data

        sig do
          params(
            data: T::Array[Telnyx::Portouts::PortOutSupportingDocument::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            { data: T::Array[Telnyx::Portouts::PortOutSupportingDocument] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
