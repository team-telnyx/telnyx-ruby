# typed: strong

module Telnyx
  module Models
    class RequirementRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::RequirementRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::DocReqsRequirement)) }
      attr_reader :data

      sig { params(data: Telnyx::DocReqsRequirement::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::DocReqsRequirement::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::DocReqsRequirement }) }
      def to_hash
      end
    end
  end
end
