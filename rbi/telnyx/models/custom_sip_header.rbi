# typed: strong

module Telnyx
  module Models
    class CustomSipHeader < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::CustomSipHeader, Telnyx::Internal::AnyHash)
        end

      # The name of the header to add.
      sig { returns(String) }
      attr_accessor :name

      # The value of the header.
      sig { returns(String) }
      attr_accessor :value

      sig { params(name: String, value: String).returns(T.attached_class) }
      def self.new(
        # The name of the header to add.
        name:,
        # The value of the header.
        value:
      )
      end

      sig { override.returns({ name: String, value: String }) }
      def to_hash
      end
    end
  end
end
