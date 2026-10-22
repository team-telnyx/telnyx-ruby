# typed: strong

module Telnyx
  module Models
    module Whatsapp
      class HostedSignupListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Whatsapp::HostedSignupListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # Hosted signup ID
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # Meta App ID the hosted signup onboards customers into
        sig { returns(T.nilable(String)) }
        attr_reader :app_id

        sig { params(app_id: String).void }
        attr_writer :app_id

        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # When the onboarding URL stops working
        sig { returns(T.nilable(Time)) }
        attr_reader :expires_at

        sig { params(expires_at: Time).void }
        attr_writer :expires_at

        # Signed token embedded in `url`
        sig { returns(T.nilable(String)) }
        attr_reader :jwt

        sig { params(jwt: String).void }
        attr_writer :jwt

        sig do
          returns(
            T.nilable(
              Telnyx::Models::Whatsapp::HostedSignupListResponse::RecordType::TaggedSymbol
            )
          )
        end
        attr_reader :record_type

        sig do
          params(
            record_type:
              Telnyx::Models::Whatsapp::HostedSignupListResponse::RecordType::OrSymbol
          ).void
        end
        attr_writer :record_type

        # Meta Partner Solution ID linked to the app. Returned only when creating a hosted
        # signup.
        sig { returns(T.nilable(String)) }
        attr_reader :solution_id

        sig { params(solution_id: String).void }
        attr_writer :solution_id

        # Hosted onboarding URL to share with the end customer
        sig { returns(T.nilable(String)) }
        attr_reader :url

        sig { params(url: String).void }
        attr_writer :url

        sig do
          params(
            id: String,
            app_id: String,
            created_at: Time,
            expires_at: Time,
            jwt: String,
            record_type:
              Telnyx::Models::Whatsapp::HostedSignupListResponse::RecordType::OrSymbol,
            solution_id: String,
            url: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Hosted signup ID
          id: nil,
          # Meta App ID the hosted signup onboards customers into
          app_id: nil,
          created_at: nil,
          # When the onboarding URL stops working
          expires_at: nil,
          # Signed token embedded in `url`
          jwt: nil,
          record_type: nil,
          # Meta Partner Solution ID linked to the app. Returned only when creating a hosted
          # signup.
          solution_id: nil,
          # Hosted onboarding URL to share with the end customer
          url: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              app_id: String,
              created_at: Time,
              expires_at: Time,
              jwt: String,
              record_type:
                Telnyx::Models::Whatsapp::HostedSignupListResponse::RecordType::TaggedSymbol,
              solution_id: String,
              url: String
            }
          )
        end
        def to_hash
        end

        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::Whatsapp::HostedSignupListResponse::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WHATSAPP_JWT =
            T.let(
              :whatsapp_jwt,
              Telnyx::Models::Whatsapp::HostedSignupListResponse::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::Whatsapp::HostedSignupListResponse::RecordType::TaggedSymbol
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
