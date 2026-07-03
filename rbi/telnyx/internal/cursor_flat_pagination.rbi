# typed: strong

module Telnyx
  module Internal
    class CursorFlatPagination
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
        attr_reader :cursor

        sig { params(cursor: String).void }
        attr_writer :cursor

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_more

        sig { params(has_more: T::Boolean).void }
        attr_writer :has_more

        sig do
          params(cursor: String, has_more: T::Boolean).returns(T.attached_class)
        end
        def self.new(cursor: nil, has_more: nil)
        end

        sig { override.returns({ cursor: String, has_more: T::Boolean }) }
        def to_hash
        end
      end
    end
  end
end
