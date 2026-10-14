# typed: strong

module Telnyx
  module Models
    module Whatsapp
      class SignupListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Whatsapp::SignupListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # Tech provider customer reference submitted with the signup
        sig { returns(T.nilable(String)) }
        attr_reader :customer_id

        sig { params(customer_id: String).void }
        attr_writer :customer_id

        # Errors recorded during provisioning
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :errors

        sig { params(errors: T::Array[String]).void }
        attr_writer :errors

        sig do
          returns(
            T.nilable(
              Telnyx::Models::Whatsapp::SignupListResponse::RecordType::TaggedSymbol
            )
          )
        end
        attr_reader :record_type

        sig do
          params(
            record_type:
              Telnyx::Models::Whatsapp::SignupListResponse::RecordType::OrSymbol
          ).void
        end
        attr_writer :record_type

        # Signup session ID
        sig { returns(T.nilable(String)) }
        attr_reader :session_id

        sig { params(session_id: String).void }
        attr_writer :session_id

        # Current provisioning step, or the step that failed. `REGISTER_PHONE_NUMBER` is
        # skipped for coexistence signups.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::Whatsapp::SignupListResponse::State::TaggedSymbol
            )
          )
        end
        attr_reader :state

        sig do
          params(
            state: Telnyx::Models::Whatsapp::SignupListResponse::State::OrSymbol
          ).void
        end
        attr_writer :state

        # `INCOMPLETE` waits for the Meta signup code, `PENDING` is in progress, `SUCCESS`
        # finished provisioning, and `FAILURE` stopped at `state`.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::Whatsapp::SignupListResponse::Status::TaggedSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              Telnyx::Models::Whatsapp::SignupListResponse::Status::OrSymbol
          ).void
        end
        attr_writer :status

        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        # Telnyx user ID that owns the signup session
        sig { returns(T.nilable(String)) }
        attr_reader :user_id

        sig { params(user_id: String).void }
        attr_writer :user_id

        # Meta WhatsApp Business Account ID
        sig { returns(T.nilable(String)) }
        attr_reader :waba_id

        sig { params(waba_id: String).void }
        attr_writer :waba_id

        sig do
          params(
            created_at: Time,
            customer_id: String,
            errors: T::Array[String],
            record_type:
              Telnyx::Models::Whatsapp::SignupListResponse::RecordType::OrSymbol,
            session_id: String,
            state:
              Telnyx::Models::Whatsapp::SignupListResponse::State::OrSymbol,
            status:
              Telnyx::Models::Whatsapp::SignupListResponse::Status::OrSymbol,
            updated_at: Time,
            user_id: String,
            waba_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          created_at: nil,
          # Tech provider customer reference submitted with the signup
          customer_id: nil,
          # Errors recorded during provisioning
          errors: nil,
          record_type: nil,
          # Signup session ID
          session_id: nil,
          # Current provisioning step, or the step that failed. `REGISTER_PHONE_NUMBER` is
          # skipped for coexistence signups.
          state: nil,
          # `INCOMPLETE` waits for the Meta signup code, `PENDING` is in progress, `SUCCESS`
          # finished provisioning, and `FAILURE` stopped at `state`.
          status: nil,
          updated_at: nil,
          # Telnyx user ID that owns the signup session
          user_id: nil,
          # Meta WhatsApp Business Account ID
          waba_id: nil
        )
        end

        sig do
          override.returns(
            {
              created_at: Time,
              customer_id: String,
              errors: T::Array[String],
              record_type:
                Telnyx::Models::Whatsapp::SignupListResponse::RecordType::TaggedSymbol,
              session_id: String,
              state:
                Telnyx::Models::Whatsapp::SignupListResponse::State::TaggedSymbol,
              status:
                Telnyx::Models::Whatsapp::SignupListResponse::Status::TaggedSymbol,
              updated_at: Time,
              user_id: String,
              waba_id: String
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
                Telnyx::Models::Whatsapp::SignupListResponse::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WHATSAPP_SESSION_ID =
            T.let(
              :whatsapp_session_id,
              Telnyx::Models::Whatsapp::SignupListResponse::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::Whatsapp::SignupListResponse::RecordType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Current provisioning step, or the step that failed. `REGISTER_PHONE_NUMBER` is
        # skipped for coexistence signups.
        module State
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Models::Whatsapp::SignupListResponse::State)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SUBSCRIBE_WEBHOOKS =
            T.let(
              :SUBSCRIBE_WEBHOOKS,
              Telnyx::Models::Whatsapp::SignupListResponse::State::TaggedSymbol
            )
          ASSIGNED_USERS =
            T.let(
              :ASSIGNED_USERS,
              Telnyx::Models::Whatsapp::SignupListResponse::State::TaggedSymbol
            )
          SHARE_CREDIT_LINE =
            T.let(
              :SHARE_CREDIT_LINE,
              Telnyx::Models::Whatsapp::SignupListResponse::State::TaggedSymbol
            )
          REGISTER_PHONE_NUMBER =
            T.let(
              :REGISTER_PHONE_NUMBER,
              Telnyx::Models::Whatsapp::SignupListResponse::State::TaggedSymbol
            )
          ADD_WABA_TO_DB =
            T.let(
              :ADD_WABA_TO_DB,
              Telnyx::Models::Whatsapp::SignupListResponse::State::TaggedSymbol
            )
          ADD_PHONE_NUMBERS_TO_DB =
            T.let(
              :ADD_PHONE_NUMBERS_TO_DB,
              Telnyx::Models::Whatsapp::SignupListResponse::State::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :COMPLETE,
              Telnyx::Models::Whatsapp::SignupListResponse::State::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::Whatsapp::SignupListResponse::State::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # `INCOMPLETE` waits for the Meta signup code, `PENDING` is in progress, `SUCCESS`
        # finished provisioning, and `FAILURE` stopped at `state`.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::Whatsapp::SignupListResponse::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INCOMPLETE =
            T.let(
              :INCOMPLETE,
              Telnyx::Models::Whatsapp::SignupListResponse::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :PENDING,
              Telnyx::Models::Whatsapp::SignupListResponse::Status::TaggedSymbol
            )
          SUCCESS =
            T.let(
              :SUCCESS,
              Telnyx::Models::Whatsapp::SignupListResponse::Status::TaggedSymbol
            )
          FAILURE =
            T.let(
              :FAILURE,
              Telnyx::Models::Whatsapp::SignupListResponse::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::Whatsapp::SignupListResponse::Status::TaggedSymbol
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
