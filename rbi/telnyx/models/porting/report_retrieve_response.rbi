# typed: strong

module Telnyx
  module Models
    module Porting
      class ReportRetrieveResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Porting::ReportRetrieveResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Telnyx::Porting::PortingReport)) }
        attr_reader :data

        sig { params(data: Telnyx::Porting::PortingReport::OrHash).void }
        attr_writer :data

        sig do
          params(data: Telnyx::Porting::PortingReport::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(data: nil)
        end

        sig { override.returns({ data: Telnyx::Porting::PortingReport }) }
        def to_hash
        end
      end
    end
  end
end
