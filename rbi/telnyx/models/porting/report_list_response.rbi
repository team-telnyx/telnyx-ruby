# typed: strong

module Telnyx
  module Models
    module Porting
      class ReportListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Porting::ReportListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Array[Telnyx::Porting::PortingReport])) }
        attr_reader :data

        sig do
          params(data: T::Array[Telnyx::Porting::PortingReport::OrHash]).void
        end
        attr_writer :data

        sig { returns(T.nilable(Telnyx::PaginationMeta)) }
        attr_reader :meta

        sig { params(meta: Telnyx::PaginationMeta::OrHash).void }
        attr_writer :meta

        sig do
          params(
            data: T::Array[Telnyx::Porting::PortingReport::OrHash],
            meta: Telnyx::PaginationMeta::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil, meta: nil)
        end

        sig do
          override.returns(
            {
              data: T::Array[Telnyx::Porting::PortingReport],
              meta: Telnyx::PaginationMeta
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
