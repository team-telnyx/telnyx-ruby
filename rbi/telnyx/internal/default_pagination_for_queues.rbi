# typed: strong

module Telnyx
  module Internal
    class DefaultPaginationForQueues
      include Telnyx::Internal::Type::BasePage

      Elem = type_member

      sig { returns(T.nilable(T::Array[Elem])) }
      attr_accessor :queues

      # @api private
      sig { returns(String) }
      def inspect
      end
    end
  end
end
