# typed: strong

module Telnyx
  module Models
    module Whatsapp
      module PhoneNumbers
        class ProfileUpdateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Whatsapp::PhoneNumbers::ProfileUpdateParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :phone_number

          sig { returns(T.nilable(String)) }
          attr_reader :about

          sig { params(about: String).void }
          attr_writer :about

          sig { returns(T.nilable(String)) }
          attr_reader :address

          sig { params(address: String).void }
          attr_writer :address

          sig { returns(T.nilable(String)) }
          attr_reader :category

          sig { params(category: String).void }
          attr_writer :category

          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { params(description: String).void }
          attr_writer :description

          sig { returns(T.nilable(String)) }
          attr_reader :display_name

          sig { params(display_name: String).void }
          attr_writer :display_name

          sig { returns(T.nilable(String)) }
          attr_reader :email

          sig { params(email: String).void }
          attr_writer :email

          sig { returns(T.nilable(String)) }
          attr_reader :website

          sig { params(website: String).void }
          attr_writer :website

          sig do
            params(
              phone_number: String,
              about: String,
              address: String,
              category: String,
              description: String,
              display_name: String,
              email: String,
              website: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            phone_number:,
            about: nil,
            address: nil,
            category: nil,
            description: nil,
            display_name: nil,
            email: nil,
            website: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                phone_number: String,
                about: String,
                address: String,
                category: String,
                description: String,
                display_name: String,
                email: String,
                website: String,
                request_options: Telnyx::RequestOptions
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
