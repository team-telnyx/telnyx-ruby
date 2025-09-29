# typed: strong

module Telnyx
  module Models
    module Wireless
      class DetailRecordsReportListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Wireless::DetailRecordsReportListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Array[Telnyx::Wireless::WdrReport])) }
        attr_reader :data

        sig { params(data: T::Array[Telnyx::Wireless::WdrReport::OrHash]).void }
        attr_writer :data

        sig do
          params(data: T::Array[Telnyx::Wireless::WdrReport::OrHash]).returns(
            T.attached_class
          )
        end
        def self.new(data: nil)
        end

        sig do
          override.returns({ data: T::Array[Telnyx::Wireless::WdrReport] })
        end
        def to_hash
        end
      end
    end
  end
end
