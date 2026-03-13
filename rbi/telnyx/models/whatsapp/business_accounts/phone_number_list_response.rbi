# typed: strong

module Telnyx
  module Models
    module Whatsapp
      module BusinessAccounts
        class PhoneNumberListResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Whatsapp::BusinessAccounts::PhoneNumberListResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :calling_enabled

          sig { params(calling_enabled: T::Boolean).void }
          attr_writer :calling_enabled

          sig { returns(T.nilable(Time)) }
          attr_reader :created_at

          sig { params(created_at: Time).void }
          attr_writer :created_at

          sig { returns(T.nilable(String)) }
          attr_reader :display_name

          sig { params(display_name: String).void }
          attr_writer :display_name

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :enabled

          sig { params(enabled: T::Boolean).void }
          attr_writer :enabled

          # Phone number in E164 format
          sig { returns(T.nilable(String)) }
          attr_reader :phone_number

          sig { params(phone_number: String).void }
          attr_writer :phone_number

          # Whatsapp phone number ID
          sig { returns(T.nilable(String)) }
          attr_reader :phone_number_id

          sig { params(phone_number_id: String).void }
          attr_writer :phone_number_id

          # Whatsapp quality rating
          sig { returns(T.nilable(String)) }
          attr_reader :quality_rating

          sig { params(quality_rating: String).void }
          attr_writer :quality_rating

          sig { returns(T.nilable(String)) }
          attr_reader :record_type

          sig { params(record_type: String).void }
          attr_writer :record_type

          sig { returns(T.nilable(String)) }
          attr_reader :status

          sig { params(status: String).void }
          attr_writer :status

          # User ID
          sig { returns(T.nilable(String)) }
          attr_reader :user_id

          sig { params(user_id: String).void }
          attr_writer :user_id

          # WABA ID of Whatsapp business account
          sig { returns(T.nilable(String)) }
          attr_reader :waba_id

          sig { params(waba_id: String).void }
          attr_writer :waba_id

          sig do
            params(
              calling_enabled: T::Boolean,
              created_at: Time,
              display_name: String,
              enabled: T::Boolean,
              phone_number: String,
              phone_number_id: String,
              quality_rating: String,
              record_type: String,
              status: String,
              user_id: String,
              waba_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            calling_enabled: nil,
            created_at: nil,
            display_name: nil,
            enabled: nil,
            # Phone number in E164 format
            phone_number: nil,
            # Whatsapp phone number ID
            phone_number_id: nil,
            # Whatsapp quality rating
            quality_rating: nil,
            record_type: nil,
            status: nil,
            # User ID
            user_id: nil,
            # WABA ID of Whatsapp business account
            waba_id: nil
          )
          end

          sig do
            override.returns(
              {
                calling_enabled: T::Boolean,
                created_at: Time,
                display_name: String,
                enabled: T::Boolean,
                phone_number: String,
                phone_number_id: String,
                quality_rating: String,
                record_type: String,
                status: String,
                user_id: String,
                waba_id: String
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
