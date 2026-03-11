# typed: strong

module Telnyx
  module Models
    module Whatsapp
      module PhoneNumbers
        class ProfileRetrieveResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Whatsapp::PhoneNumbers::ProfileRetrieveResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Telnyx::Models::Whatsapp::PhoneNumbers::ProfileRetrieveResponse::Data
              )
            )
          end
          attr_reader :data

          sig do
            params(
              data:
                Telnyx::Models::Whatsapp::PhoneNumbers::ProfileRetrieveResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          sig do
            params(
              data:
                Telnyx::Models::Whatsapp::PhoneNumbers::ProfileRetrieveResponse::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(data: nil)
          end

          sig do
            override.returns(
              {
                data:
                  Telnyx::Models::Whatsapp::PhoneNumbers::ProfileRetrieveResponse::Data
              }
            )
          end
          def to_hash
          end

          class Data < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Whatsapp::PhoneNumbers::ProfileRetrieveResponse::Data,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { params(id: String).void }
            attr_writer :id

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

            sig { returns(T.nilable(Time)) }
            attr_reader :created_at

            sig { params(created_at: Time).void }
            attr_writer :created_at

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

            # Whatsapp phone number ID
            sig { returns(T.nilable(String)) }
            attr_reader :phone_number_id

            sig { params(phone_number_id: String).void }
            attr_writer :phone_number_id

            sig { returns(T.nilable(String)) }
            attr_reader :profile_photo_url

            sig { params(profile_photo_url: String).void }
            attr_writer :profile_photo_url

            sig { returns(T.nilable(String)) }
            attr_reader :record_type

            sig { params(record_type: String).void }
            attr_writer :record_type

            sig { returns(T.nilable(Time)) }
            attr_reader :updated_at

            sig { params(updated_at: Time).void }
            attr_writer :updated_at

            sig { returns(T.nilable(String)) }
            attr_reader :website

            sig { params(website: String).void }
            attr_writer :website

            sig do
              params(
                id: String,
                about: String,
                address: String,
                category: String,
                created_at: Time,
                description: String,
                display_name: String,
                email: String,
                phone_number_id: String,
                profile_photo_url: String,
                record_type: String,
                updated_at: Time,
                website: String
              ).returns(T.attached_class)
            end
            def self.new(
              id: nil,
              about: nil,
              address: nil,
              category: nil,
              created_at: nil,
              description: nil,
              display_name: nil,
              email: nil,
              # Whatsapp phone number ID
              phone_number_id: nil,
              profile_photo_url: nil,
              record_type: nil,
              updated_at: nil,
              website: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  about: String,
                  address: String,
                  category: String,
                  created_at: Time,
                  description: String,
                  display_name: String,
                  email: String,
                  phone_number_id: String,
                  profile_photo_url: String,
                  record_type: String,
                  updated_at: Time,
                  website: String
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
end
