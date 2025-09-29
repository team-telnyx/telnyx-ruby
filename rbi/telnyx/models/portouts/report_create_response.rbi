# typed: strong

module Telnyx
  module Models
    module Portouts
      class ReportCreateResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Portouts::ReportCreateResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Telnyx::Portouts::PortoutReport)) }
        attr_reader :data

        sig { params(data: Telnyx::Portouts::PortoutReport::OrHash).void }
        attr_writer :data

        sig do
          params(data: Telnyx::Portouts::PortoutReport::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(data: nil)
        end

        sig { override.returns({ data: Telnyx::Portouts::PortoutReport }) }
        def to_hash
        end
      end
    end
  end
end
