# typed: strong

module Telnyx
  module Internal
    class CloudfsCursorPagination
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

        sig { returns(T.nilable(Meta::Cursors)) }
        attr_reader :cursors

        sig { params(cursors: Meta::Cursors::OrHash).void }
        attr_writer :cursors

        sig { params(cursors: Meta::Cursors::OrHash).returns(T.attached_class) }
        def self.new(cursors: nil)
        end

        sig { override.returns({ cursors: Meta::Cursors }) }
        def to_hash
        end

        class Cursors < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias { T.any(Meta::Cursors, Telnyx::Internal::AnyHash) }

          sig { returns(T.nilable(String)) }
          attr_reader :after

          sig { params(after: String).void }
          attr_writer :after

          sig { params(after: String).returns(T.attached_class) }
          def self.new(after: nil)
          end

          sig { override.returns({ after: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
