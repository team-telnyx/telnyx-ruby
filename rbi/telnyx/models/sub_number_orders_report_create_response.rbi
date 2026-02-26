# typed: strong

module Telnyx
  module Models
    class SubNumberOrdersReportCreateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::SubNumberOrdersReportCreateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::SubNumberOrdersReportAPI)) }
      attr_reader :data

      sig { params(data: Telnyx::SubNumberOrdersReportAPI::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::SubNumberOrdersReportAPI::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::SubNumberOrdersReportAPI }) }
      def to_hash
      end
    end
  end
end
