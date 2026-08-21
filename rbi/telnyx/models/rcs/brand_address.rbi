# typed: strong

module Telnyx
  module Models
    module Rcs
      class BrandAddress < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::Rcs::BrandAddress, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :administrative_area

        sig { returns(String) }
        attr_accessor :city

        # The two-letter ISO 3166-1 country code.
        sig { returns(String) }
        attr_accessor :country_code

        sig { returns(String) }
        attr_accessor :line_1

        sig { returns(String) }
        attr_accessor :postal_code

        sig { returns(T.nilable(String)) }
        attr_accessor :line_2

        sig do
          params(
            administrative_area: String,
            city: String,
            country_code: String,
            line_1: String,
            postal_code: String,
            line_2: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          administrative_area:,
          city:,
          # The two-letter ISO 3166-1 country code.
          country_code:,
          line_1:,
          postal_code:,
          line_2: nil
        )
        end

        sig do
          override.returns(
            {
              administrative_area: String,
              city: String,
              country_code: String,
              line_1: String,
              postal_code: String,
              line_2: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
