# typed: strong

module Telnyx
  module Models
    module Compute
      class LogsMeta < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::Compute::LogsMeta, Telnyx::Internal::AnyHash)
          end

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :has_more

        sig { params(has_more: T::Boolean).void }
        attr_writer :has_more

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :partial

        sig { params(partial: T::Boolean).void }
        attr_writer :partial

        sig do
          params(has_more: T::Boolean, partial: T::Boolean).returns(
            T.attached_class
          )
        end
        def self.new(has_more: nil, partial: nil)
        end

        sig { override.returns({ has_more: T::Boolean, partial: T::Boolean }) }
        def to_hash
        end
      end
    end
  end
end
