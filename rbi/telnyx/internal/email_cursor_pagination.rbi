# typed: strong

module Telnyx
  module Internal
    class EmailCursorPagination
      include Telnyx::Internal::Type::BasePage

      Elem = type_member

      sig { returns(T.nilable(T::Array[Elem])) }
      attr_accessor :data

      sig { returns(Meta) }
      attr_accessor :meta

      # @api private
      sig { returns(String) }
      def inspect
      end

      class Meta < Telnyx::Internal::Type::BaseModel
        OrHash = T.type_alias { T.any(Meta, Telnyx::Internal::AnyHash) }

        sig { returns(T.nilable(String)) }
        attr_reader :page_cursor

        sig { params(page_cursor: String).void }
        attr_writer :page_cursor

        sig { params(page_cursor: String).returns(T.attached_class) }
        def self.new(page_cursor: nil)
        end

        sig { override.returns({ page_cursor: String }) }
        def to_hash
        end
      end
    end
  end
end
