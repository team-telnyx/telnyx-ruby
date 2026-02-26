# typed: strong

module Telnyx
  module Models
    class NetappsLocation < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::NetappsLocation, Telnyx::Internal::AnyHash)
        end

      # Location code.
      sig { returns(T.nilable(String)) }
      attr_reader :code

      sig { params(code: String).void }
      attr_writer :code

      # Human readable name of location.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # Point of presence of location.
      sig { returns(T.nilable(String)) }
      attr_reader :pop

      sig { params(pop: String).void }
      attr_writer :pop

      # Identifies the geographical region of location.
      sig { returns(T.nilable(String)) }
      attr_reader :region

      sig { params(region: String).void }
      attr_writer :region

      # Site of location.
      sig { returns(T.nilable(String)) }
      attr_reader :site

      sig { params(site: String).void }
      attr_writer :site

      sig do
        params(
          code: String,
          name: String,
          pop: String,
          region: String,
          site: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Location code.
        code: nil,
        # Human readable name of location.
        name: nil,
        # Point of presence of location.
        pop: nil,
        # Identifies the geographical region of location.
        region: nil,
        # Site of location.
        site: nil
      )
      end

      sig do
        override.returns(
          {
            code: String,
            name: String,
            pop: String,
            region: String,
            site: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
