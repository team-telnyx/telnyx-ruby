# typed: strong

module Telnyx
  module Models
    module Rcs
      class BrandContact < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::Rcs::BrandContact, Telnyx::Internal::AnyHash)
          end

        sig { returns(Telnyx::Rcs::BrandContact::ContactType::OrSymbol) }
        attr_accessor :contact_type

        sig { returns(String) }
        attr_accessor :email

        sig { returns(String) }
        attr_accessor :first_name

        sig { returns(String) }
        attr_accessor :last_name

        sig { returns(String) }
        attr_accessor :phone_number

        sig { returns(T.nilable(String)) }
        attr_accessor :title

        sig do
          params(
            contact_type: Telnyx::Rcs::BrandContact::ContactType::OrSymbol,
            email: String,
            first_name: String,
            last_name: String,
            phone_number: String,
            title: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          contact_type:,
          email:,
          first_name:,
          last_name:,
          phone_number:,
          title: nil
        )
        end

        sig do
          override.returns(
            {
              contact_type: Telnyx::Rcs::BrandContact::ContactType::OrSymbol,
              email: String,
              first_name: String,
              last_name: String,
              phone_number: String,
              title: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        module ContactType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Rcs::BrandContact::ContactType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BRAND =
            T.let(:BRAND, Telnyx::Rcs::BrandContact::ContactType::TaggedSymbol)
          PRIMARY =
            T.let(
              :PRIMARY,
              Telnyx::Rcs::BrandContact::ContactType::TaggedSymbol
            )
          OFFICER =
            T.let(
              :OFFICER,
              Telnyx::Rcs::BrandContact::ContactType::TaggedSymbol
            )
          AGENT =
            T.let(:AGENT, Telnyx::Rcs::BrandContact::ContactType::TaggedSymbol)
          RESPONSIBLE_PARTY =
            T.let(
              :RESPONSIBLE_PARTY,
              Telnyx::Rcs::BrandContact::ContactType::TaggedSymbol
            )
          BILLING =
            T.let(
              :BILLING,
              Telnyx::Rcs::BrandContact::ContactType::TaggedSymbol
            )
          UNKNOWN =
            T.let(
              :UNKNOWN,
              Telnyx::Rcs::BrandContact::ContactType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::Rcs::BrandContact::ContactType::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
