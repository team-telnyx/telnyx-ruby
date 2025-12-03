# typed: strong

module Telnyx
  module Internal
    class DefaultFlatPagination
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

        sig { returns(T.nilable(Integer)) }
        attr_reader :page_number

        sig { params(page_number: Integer).void }
        attr_writer :page_number

        sig { returns(T.nilable(Integer)) }
        attr_reader :total_pages

        sig { params(total_pages: Integer).void }
        attr_writer :total_pages

        sig do
          params(page_number: Integer, total_pages: Integer).returns(
            T.attached_class
          )
        end
        def self.new(page_number: nil, total_pages: nil)
        end

        sig { override.returns({ page_number: Integer, total_pages: Integer }) }
        def to_hash
        end
      end
    end
  end
end
