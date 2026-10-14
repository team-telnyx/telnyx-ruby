# typed: strong

module Telnyx
  module Models
    class PhysicalAddress < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::PhysicalAddress, Telnyx::Internal::AnyHash)
        end

      # State or province code (e.g. `IL`, `ON`).
      sig { returns(String) }
      attr_accessor :administrative_area

      # The city of your registered business address.
      sig { returns(String) }
      attr_accessor :city

      # ISO 3166-1 alpha-2 code (currently `US` or `CA`).
      sig { returns(String) }
      attr_accessor :country

      # The postal or ZIP code of your registered business address.
      sig { returns(String) }
      attr_accessor :postal_code

      # The street address of your registered business, including the building number
      # and street name.
      sig { returns(String) }
      attr_accessor :street_address

      # An optional second address line, such as a suite, unit, or floor. Leave blank if
      # it does not apply.
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
        # The city of your registered business address.
        city:,
        # ISO 3166-1 alpha-2 code (currently `US` or `CA`).
        country:,
        # The postal or ZIP code of your registered business address.
        postal_code:,
        # The street address of your registered business, including the building number
        # and street name.
        street_address:,
        # An optional second address line, such as a suite, unit, or floor. Leave blank if
        # it does not apply.
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
