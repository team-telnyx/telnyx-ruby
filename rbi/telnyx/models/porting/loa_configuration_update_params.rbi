# typed: strong

module Telnyx
  module Models
    module Porting
      class LoaConfigurationUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Porting::LoaConfigurationUpdateParams,
              Telnyx::Internal::AnyHash
            )
          end

        # The address of the company.
        sig { returns(Telnyx::Porting::LoaConfigurationUpdateParams::Address) }
        attr_reader :address

        sig do
          params(
            address:
              Telnyx::Porting::LoaConfigurationUpdateParams::Address::OrHash
          ).void
        end
        attr_writer :address

        # The name of the company
        sig { returns(String) }
        attr_accessor :company_name

        # The contact information of the company.
        sig { returns(Telnyx::Porting::LoaConfigurationUpdateParams::Contact) }
        attr_reader :contact

        sig do
          params(
            contact:
              Telnyx::Porting::LoaConfigurationUpdateParams::Contact::OrHash
          ).void
        end
        attr_writer :contact

        # The logo of the LOA configuration
        sig { returns(Telnyx::Porting::LoaConfigurationUpdateParams::Logo) }
        attr_reader :logo

        sig do
          params(
            logo: Telnyx::Porting::LoaConfigurationUpdateParams::Logo::OrHash
          ).void
        end
        attr_writer :logo

        # The name of the LOA configuration
        sig { returns(String) }
        attr_accessor :name

        sig do
          params(
            address:
              Telnyx::Porting::LoaConfigurationUpdateParams::Address::OrHash,
            company_name: String,
            contact:
              Telnyx::Porting::LoaConfigurationUpdateParams::Contact::OrHash,
            logo: Telnyx::Porting::LoaConfigurationUpdateParams::Logo::OrHash,
            name: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The address of the company.
          address:,
          # The name of the company
          company_name:,
          # The contact information of the company.
          contact:,
          # The logo of the LOA configuration
          logo:,
          # The name of the LOA configuration
          name:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              address: Telnyx::Porting::LoaConfigurationUpdateParams::Address,
              company_name: String,
              contact: Telnyx::Porting::LoaConfigurationUpdateParams::Contact,
              logo: Telnyx::Porting::LoaConfigurationUpdateParams::Logo,
              name: String,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Address < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Porting::LoaConfigurationUpdateParams::Address,
                Telnyx::Internal::AnyHash
              )
            end

          # The locality of the company
          sig { returns(String) }
          attr_accessor :city

          # The country code of the company
          sig { returns(String) }
          attr_accessor :country_code

          # The administrative area of the company
          sig { returns(String) }
          attr_accessor :state

          # The street address of the company
          sig { returns(String) }
          attr_accessor :street_address

          # The postal code of the company
          sig { returns(String) }
          attr_accessor :zip_code

          # The extended address of the company
          sig { returns(T.nilable(String)) }
          attr_reader :extended_address

          sig { params(extended_address: String).void }
          attr_writer :extended_address

          # The address of the company.
          sig do
            params(
              city: String,
              country_code: String,
              state: String,
              street_address: String,
              zip_code: String,
              extended_address: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The locality of the company
            city:,
            # The country code of the company
            country_code:,
            # The administrative area of the company
            state:,
            # The street address of the company
            street_address:,
            # The postal code of the company
            zip_code:,
            # The extended address of the company
            extended_address: nil
          )
          end

          sig do
            override.returns(
              {
                city: String,
                country_code: String,
                state: String,
                street_address: String,
                zip_code: String,
                extended_address: String
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
                Telnyx::Porting::LoaConfigurationUpdateParams::Contact,
                Telnyx::Internal::AnyHash
              )
            end

          # The email address of the contact
          sig { returns(String) }
          attr_accessor :email

          # The phone number of the contact
          sig { returns(String) }
          attr_accessor :phone_number

          # The contact information of the company.
          sig do
            params(email: String, phone_number: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # The email address of the contact
            email:,
            # The phone number of the contact
            phone_number:
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
                Telnyx::Porting::LoaConfigurationUpdateParams::Logo,
                Telnyx::Internal::AnyHash
              )
            end

          # The document identification
          sig { returns(String) }
          attr_accessor :document_id

          # The logo of the LOA configuration
          sig { params(document_id: String).returns(T.attached_class) }
          def self.new(
            # The document identification
            document_id:
          )
          end

          sig { override.returns({ document_id: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
