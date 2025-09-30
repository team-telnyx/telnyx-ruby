# typed: strong

module Telnyx
  module Models
    PortingLoaConfiguration = Porting::PortingLoaConfiguration

    module Porting
      class PortingLoaConfiguration < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Porting::PortingLoaConfiguration,
              Telnyx::Internal::AnyHash
            )
          end

        # Uniquely identifies the LOA configuration.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # The address of the company.
        sig do
          returns(T.nilable(Telnyx::Porting::PortingLoaConfiguration::Address))
        end
        attr_reader :address

        sig do
          params(
            address: Telnyx::Porting::PortingLoaConfiguration::Address::OrHash
          ).void
        end
        attr_writer :address

        # The name of the company
        sig { returns(T.nilable(String)) }
        attr_reader :company_name

        sig { params(company_name: String).void }
        attr_writer :company_name

        # The contact information of the company.
        sig do
          returns(T.nilable(Telnyx::Porting::PortingLoaConfiguration::Contact))
        end
        attr_reader :contact

        sig do
          params(
            contact: Telnyx::Porting::PortingLoaConfiguration::Contact::OrHash
          ).void
        end
        attr_writer :contact

        # ISO 8601 formatted date indicating when the resource was created.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # The logo to be used in the LOA.
        sig do
          returns(T.nilable(Telnyx::Porting::PortingLoaConfiguration::Logo))
        end
        attr_reader :logo

        sig do
          params(
            logo: Telnyx::Porting::PortingLoaConfiguration::Logo::OrHash
          ).void
        end
        attr_writer :logo

        # The name of the LOA configuration
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # The organization that owns the LOA configuration
        sig { returns(T.nilable(String)) }
        attr_reader :organization_id

        sig { params(organization_id: String).void }
        attr_writer :organization_id

        # ISO 8601 formatted date indicating when the resource was updated.
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        # Identifies the type of the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        sig do
          params(
            id: String,
            address: Telnyx::Porting::PortingLoaConfiguration::Address::OrHash,
            company_name: String,
            contact: Telnyx::Porting::PortingLoaConfiguration::Contact::OrHash,
            created_at: Time,
            logo: Telnyx::Porting::PortingLoaConfiguration::Logo::OrHash,
            name: String,
            organization_id: String,
            record_type: String,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # Uniquely identifies the LOA configuration.
          id: nil,
          # The address of the company.
          address: nil,
          # The name of the company
          company_name: nil,
          # The contact information of the company.
          contact: nil,
          # ISO 8601 formatted date indicating when the resource was created.
          created_at: nil,
          # The logo to be used in the LOA.
          logo: nil,
          # The name of the LOA configuration
          name: nil,
          # The organization that owns the LOA configuration
          organization_id: nil,
          # Identifies the type of the resource.
          record_type: nil,
          # ISO 8601 formatted date indicating when the resource was updated.
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              address: Telnyx::Porting::PortingLoaConfiguration::Address,
              company_name: String,
              contact: Telnyx::Porting::PortingLoaConfiguration::Contact,
              created_at: Time,
              logo: Telnyx::Porting::PortingLoaConfiguration::Logo,
              name: String,
              organization_id: String,
              record_type: String,
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        class Address < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Porting::PortingLoaConfiguration::Address,
                Telnyx::Internal::AnyHash
              )
            end

          # The locality of the company
          sig { returns(T.nilable(String)) }
          attr_reader :city

          sig { params(city: String).void }
          attr_writer :city

          # The country code of the company
          sig { returns(T.nilable(String)) }
          attr_reader :country_code

          sig { params(country_code: String).void }
          attr_writer :country_code

          # The extended address of the company
          sig { returns(T.nilable(String)) }
          attr_reader :extended_address

          sig { params(extended_address: String).void }
          attr_writer :extended_address

          # The administrative area of the company
          sig { returns(T.nilable(String)) }
          attr_reader :state

          sig { params(state: String).void }
          attr_writer :state

          # The street address of the company
          sig { returns(T.nilable(String)) }
          attr_reader :street_address

          sig { params(street_address: String).void }
          attr_writer :street_address

          # The postal code of the company
          sig { returns(T.nilable(String)) }
          attr_reader :zip_code

          sig { params(zip_code: String).void }
          attr_writer :zip_code

          # The address of the company.
          sig do
            params(
              city: String,
              country_code: String,
              extended_address: String,
              state: String,
              street_address: String,
              zip_code: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The locality of the company
            city: nil,
            # The country code of the company
            country_code: nil,
            # The extended address of the company
            extended_address: nil,
            # The administrative area of the company
            state: nil,
            # The street address of the company
            street_address: nil,
            # The postal code of the company
            zip_code: nil
          )
          end

          sig do
            override.returns(
              {
                city: String,
                country_code: String,
                extended_address: String,
                state: String,
                street_address: String,
                zip_code: String
              }
            )
          end
          def to_hash
          end
        end

        class Contact < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Porting::PortingLoaConfiguration::Contact,
                Telnyx::Internal::AnyHash
              )
            end

          # The email address of the contact
          sig { returns(T.nilable(String)) }
          attr_reader :email

          sig { params(email: String).void }
          attr_writer :email

          # The phone number of the contact
          sig { returns(T.nilable(String)) }
          attr_reader :phone_number

          sig { params(phone_number: String).void }
          attr_writer :phone_number

          # The contact information of the company.
          sig do
            params(email: String, phone_number: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # The email address of the contact
            email: nil,
            # The phone number of the contact
            phone_number: nil
          )
          end

          sig { override.returns({ email: String, phone_number: String }) }
          def to_hash
          end
        end

        class Logo < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Porting::PortingLoaConfiguration::Logo,
                Telnyx::Internal::AnyHash
              )
            end

          # The content type of the logo.
          sig do
            returns(
              T.nilable(
                Telnyx::Porting::PortingLoaConfiguration::Logo::ContentType::TaggedSymbol
              )
            )
          end
          attr_reader :content_type

          sig do
            params(
              content_type:
                Telnyx::Porting::PortingLoaConfiguration::Logo::ContentType::OrSymbol
            ).void
          end
          attr_writer :content_type

          # Identifies the document that contains the logo.
          sig { returns(T.nilable(String)) }
          attr_reader :document_id

          sig { params(document_id: String).void }
          attr_writer :document_id

          # The logo to be used in the LOA.
          sig do
            params(
              content_type:
                Telnyx::Porting::PortingLoaConfiguration::Logo::ContentType::OrSymbol,
              document_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The content type of the logo.
            content_type: nil,
            # Identifies the document that contains the logo.
            document_id: nil
          )
          end

          sig do
            override.returns(
              {
                content_type:
                  Telnyx::Porting::PortingLoaConfiguration::Logo::ContentType::TaggedSymbol,
                document_id: String
              }
            )
          end
          def to_hash
          end

          # The content type of the logo.
          module ContentType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Porting::PortingLoaConfiguration::Logo::ContentType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            IMAGE_PNG =
              T.let(
                :"image/png",
                Telnyx::Porting::PortingLoaConfiguration::Logo::ContentType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Porting::PortingLoaConfiguration::Logo::ContentType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
