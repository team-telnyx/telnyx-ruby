# typed: strong

module Telnyx
  module Models
    class BillingAddress < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::BillingAddress, Telnyx::Internal::AnyHash)
        end

      # State or province code (e.g. `IL`, `ON`).
      sig { returns(String) }
      attr_accessor :administrative_area

      sig { returns(String) }
      attr_accessor :city

      # ISO 3166-1 alpha-2 code (currently `US` or `CA`).
      sig { returns(String) }
      attr_accessor :country

      sig { returns(String) }
      attr_accessor :postal_code

      sig { returns(String) }
      attr_accessor :street_address

      sig { returns(T.nilable(String)) }
      attr_accessor :extended_address

      sig do
        params(
          administrative_area: String,
          city: String,
          country: String,
          postal_code: String,
          street_address: String,
          extended_address: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        # State or province code (e.g. `IL`, `ON`).
        administrative_area:,
        city:,
        # ISO 3166-1 alpha-2 code (currently `US` or `CA`).
        country:,
        postal_code:,
        street_address:,
        extended_address: nil
      )
      end

      sig do
        override.returns(
          {
            administrative_area: String,
            city: String,
            country: String,
            postal_code: String,
            street_address: String,
            extended_address: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
