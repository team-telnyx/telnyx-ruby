# typed: strong

module Telnyx
  module Internal
    class DefaultFlatPaginationTopLevelArray < ::Array
      include Telnyx::Internal::Type::BasePage

      Elem = type_member

      sig { override.returns(T::Boolean) }
      def next_page?
      end

      sig { override.returns(T.self_type) }
      def next_page
      end

      sig { override.params(blk: T.proc.params(arg0: Elem).void).void }
      def auto_paging_each(&blk)
      end

      # @api private
      sig { returns(String) }
      def inspect
      end
    end
  end
end
