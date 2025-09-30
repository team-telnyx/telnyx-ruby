# typed: strong

module Telnyx
  module Models
    module Wireless
      class DetailRecordsReportDeleteResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Wireless::DetailRecordsReportDeleteResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Telnyx::Wireless::WdrReport)) }
        attr_reader :data

        sig { params(data: Telnyx::Wireless::WdrReport::OrHash).void }
        attr_writer :data

        sig do
          params(data: Telnyx::Wireless::WdrReport::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(data: nil)
        end

        sig { override.returns({ data: Telnyx::Wireless::WdrReport }) }
        def to_hash
        end
      end
    end
  end
end
