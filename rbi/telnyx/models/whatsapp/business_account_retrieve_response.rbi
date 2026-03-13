# typed: strong

module Telnyx
  module Models
    module Whatsapp
      class BusinessAccountRetrieveResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Whatsapp::BusinessAccountRetrieveResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Telnyx::Models::Whatsapp::BusinessAccountRetrieveResponse::Data
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Telnyx::Models::Whatsapp::BusinessAccountRetrieveResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              Telnyx::Models::Whatsapp::BusinessAccountRetrieveResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            {
              data:
                Telnyx::Models::Whatsapp::BusinessAccountRetrieveResponse::Data
            }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Whatsapp::BusinessAccountRetrieveResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          # Internal ID of Whatsapp business account
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # Account review status of Whatsapp business account
          sig { returns(T.nilable(String)) }
          attr_reader :account_review_status

          sig { params(account_review_status: String).void }
          attr_writer :account_review_status

          # Business verification status of Whatsapp business account
          sig { returns(T.nilable(String)) }
          attr_reader :business_verification_status

          sig { params(business_verification_status: String).void }
          attr_writer :business_verification_status

          # Country associated with Whatsapp business account
          sig { returns(T.nilable(String)) }
          attr_reader :country

          sig { params(country: String).void }
          attr_writer :country

          sig { returns(T.nilable(Time)) }
          attr_reader :created_at

          sig { params(created_at: Time).void }
          attr_writer :created_at

          # Name of Whatsapp business account
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # Count of phone numbers associated with Whatsapp business account
          sig { returns(T.nilable(Integer)) }
          attr_reader :phone_numbers_count

          sig { params(phone_numbers_count: Integer).void }
          attr_writer :phone_numbers_count

          sig { returns(T.nilable(String)) }
          attr_reader :record_type

          sig { params(record_type: String).void }
          attr_writer :record_type

          # Status of Whatsapp business account
          sig { returns(T.nilable(String)) }
          attr_reader :status

          sig { params(status: String).void }
          attr_writer :status

          # WABA ID of Whatsapp business account
          sig { returns(T.nilable(String)) }
          attr_reader :waba_id

          sig { params(waba_id: String).void }
          attr_writer :waba_id

          sig do
            params(
              id: String,
              account_review_status: String,
              business_verification_status: String,
              country: String,
              created_at: Time,
              name: String,
              phone_numbers_count: Integer,
              record_type: String,
              status: String,
              waba_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Internal ID of Whatsapp business account
            id: nil,
            # Account review status of Whatsapp business account
            account_review_status: nil,
            # Business verification status of Whatsapp business account
            business_verification_status: nil,
            # Country associated with Whatsapp business account
            country: nil,
            created_at: nil,
            # Name of Whatsapp business account
            name: nil,
            # Count of phone numbers associated with Whatsapp business account
            phone_numbers_count: nil,
            record_type: nil,
            # Status of Whatsapp business account
            status: nil,
            # WABA ID of Whatsapp business account
            waba_id: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                account_review_status: String,
                business_verification_status: String,
                country: String,
                created_at: Time,
                name: String,
                phone_numbers_count: Integer,
                record_type: String,
                status: String,
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
