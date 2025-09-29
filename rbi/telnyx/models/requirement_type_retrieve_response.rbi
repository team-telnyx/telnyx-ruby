# typed: strong

module Telnyx
  module Models
    class RequirementTypeRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::RequirementTypeRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::DocReqsRequirementType)) }
      attr_reader :data

      sig { params(data: Telnyx::DocReqsRequirementType::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::DocReqsRequirementType::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::DocReqsRequirementType }) }
      def to_hash
      end
    end
  end
end
