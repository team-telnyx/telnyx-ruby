# typed: strong

module Telnyx
  module Models
    class VirtualCrossConnectCreate < Telnyx::Models::Record
      OrHash =
        T.type_alias do
          T.any(Telnyx::VirtualCrossConnectCreate, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.attached_class) }
      def self.new
      end

      sig { override.returns({}) }
      def to_hash
      end

      # The Virtual Private Cloud with which you would like to establish a cross
      # connect.
      module CloudProvider
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::VirtualCrossConnectCreate::CloudProvider
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AWS =
          T.let(
            :aws,
            Telnyx::VirtualCrossConnectCreate::CloudProvider::TaggedSymbol
          )
        AZURE =
          T.let(
            :azure,
            Telnyx::VirtualCrossConnectCreate::CloudProvider::TaggedSymbol
          )
        GCE =
          T.let(
            :gce,
            Telnyx::VirtualCrossConnectCreate::CloudProvider::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::VirtualCrossConnectCreate::CloudProvider::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
