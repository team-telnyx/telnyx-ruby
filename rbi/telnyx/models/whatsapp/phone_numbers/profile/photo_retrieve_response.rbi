# typed: strong

module Telnyx
  module Models
    module Whatsapp
      module PhoneNumbers
        module Profile
          class PhotoRetrieveResponse < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Whatsapp::PhoneNumbers::Profile::PhotoRetrieveResponse,
                  Telnyx::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  Telnyx::Models::Whatsapp::PhoneNumbers::Profile::PhotoRetrieveResponse::Data
                )
              )
            end
            attr_reader :data

            sig do
              params(
                data:
                  Telnyx::Models::Whatsapp::PhoneNumbers::Profile::PhotoRetrieveResponse::Data::OrHash
              ).void
            end
            attr_writer :data

            sig do
              params(
                data:
                  Telnyx::Models::Whatsapp::PhoneNumbers::Profile::PhotoRetrieveResponse::Data::OrHash
              ).returns(T.attached_class)
            end
            def self.new(data: nil)
            end

            sig do
              override.returns(
                {
                  data:
                    Telnyx::Models::Whatsapp::PhoneNumbers::Profile::PhotoRetrieveResponse::Data
                }
              )
            end
            def to_hash
            end

            class Data < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::Whatsapp::PhoneNumbers::Profile::PhotoRetrieveResponse::Data,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Meta phone number ID
              sig { returns(T.nilable(String)) }
              attr_reader :phone_number_id

              sig { params(phone_number_id: String).void }
              attr_writer :phone_number_id

              # URL of the business profile photo (served by Meta's CDN). May be empty if no
              # photo is set.
              sig { returns(T.nilable(String)) }
              attr_reader :profile_photo_url

              sig { params(profile_photo_url: String).void }
              attr_writer :profile_photo_url

              sig { returns(T.nilable(String)) }
              attr_reader :record_type

              sig { params(record_type: String).void }
              attr_writer :record_type

              sig do
                params(
                  phone_number_id: String,
                  profile_photo_url: String,
                  record_type: String
                ).returns(T.attached_class)
              end
              def self.new(
                # Meta phone number ID
                phone_number_id: nil,
                # URL of the business profile photo (served by Meta's CDN). May be empty if no
                # photo is set.
                profile_photo_url: nil,
                record_type: nil
              )
              end

              sig do
                override.returns(
                  {
                    phone_number_id: String,
                    profile_photo_url: String,
                    record_type: String
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
end
