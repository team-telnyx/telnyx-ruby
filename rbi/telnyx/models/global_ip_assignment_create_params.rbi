# typed: strong

module Telnyx
  module Models
    class GlobalIPAssignmentCreateParams < Telnyx::Models::GlobalIPAssignment
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::GlobalIPAssignmentCreateParams,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        params(request_options: Telnyx::RequestOptions::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(request_options: {})
      end

      sig { override.returns({ request_options: Telnyx::RequestOptions }) }
      def to_hash
      end
    end
  end
end
