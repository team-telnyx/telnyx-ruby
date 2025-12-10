# typed: strong

module Telnyx
  module Models
    class AvailablePhoneNumbersMetadata < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::AvailablePhoneNumbersMetadata,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Integer)) }
      attr_reader :best_effort_results

      sig { params(best_effort_results: Integer).void }
      attr_writer :best_effort_results

      sig { returns(T.nilable(Integer)) }
      attr_reader :total_results

      sig { params(total_results: Integer).void }
      attr_writer :total_results

      sig do
        params(best_effort_results: Integer, total_results: Integer).returns(
          T.attached_class
        )
      end
      def self.new(best_effort_results: nil, total_results: nil)
      end

      sig do
        override.returns(
          { best_effort_results: Integer, total_results: Integer }
        )
      end
      def to_hash
      end
    end
  end
end
