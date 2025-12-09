# typed: strong

module Telnyx
  module Internal
    class PerPagePaginationV2
      include Telnyx::Internal::Type::BasePage

      Elem = type_member

      sig { returns(T.nilable(T::Array[Elem])) }
      attr_accessor :records

      sig { returns(Integer) }
      attr_accessor :page

      sig { returns(Integer) }
      attr_accessor :total_records

      # @api private
      sig { returns(String) }
      def inspect
      end
    end
  end
end
