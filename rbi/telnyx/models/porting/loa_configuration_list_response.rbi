# typed: strong

module Telnyx
  module Models
    module Porting
      class LoaConfigurationListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Porting::LoaConfigurationListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(T.nilable(T::Array[Telnyx::Porting::PortingLoaConfiguration]))
        end
        attr_reader :data

        sig do
          params(
            data: T::Array[Telnyx::Porting::PortingLoaConfiguration::OrHash]
          ).void
        end
        attr_writer :data

        sig { returns(T.nilable(Telnyx::PaginationMeta)) }
        attr_reader :meta

        sig { params(meta: Telnyx::PaginationMeta::OrHash).void }
        attr_writer :meta

        sig do
          params(
            data: T::Array[Telnyx::Porting::PortingLoaConfiguration::OrHash],
            meta: Telnyx::PaginationMeta::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil, meta: nil)
        end

        sig do
          override.returns(
            {
              data: T::Array[Telnyx::Porting::PortingLoaConfiguration],
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
