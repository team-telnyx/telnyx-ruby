# typed: strong

module Telnyx
  module Models
    class WhatsappLocation < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::WhatsappLocation, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_reader :address

      sig { params(address: String).void }
      attr_writer :address

      sig { returns(T.nilable(String)) }
      attr_reader :latitude

      sig { params(latitude: String).void }
      attr_writer :latitude

      sig { returns(T.nilable(String)) }
      attr_reader :longitude

      sig { params(longitude: String).void }
      attr_writer :longitude

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig do
        params(
          address: String,
          latitude: String,
          longitude: String,
          name: String
        ).returns(T.attached_class)
      end
      def self.new(address: nil, latitude: nil, longitude: nil, name: nil)
      end

      sig do
        override.returns(
          { address: String, latitude: String, longitude: String, name: String }
        )
      end
      def to_hash
      end
    end
  end
end
