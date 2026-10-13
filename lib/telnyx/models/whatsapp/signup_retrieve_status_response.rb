# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      # @see Telnyx::Resources::Whatsapp::Signup#retrieve_status
      class SignupRetrieveStatusResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Whatsapp::SignupRetrieveStatusResponse::Data, nil]
        optional :data, -> { Telnyx::Models::Whatsapp::SignupRetrieveStatusResponse::Data }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::Whatsapp::SignupRetrieveStatusResponse::Data]

        # @see Telnyx::Models::Whatsapp::SignupRetrieveStatusResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute created_at
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute customer_id
          #   Tech provider customer reference submitted with the signup
          #
          #   @return [String, nil]
          optional :customer_id, String

          # @!attribute errors
          #   Errors recorded during provisioning
          #
          #   @return [Array<String>, nil]
          optional :errors, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute record_type
          #
          #   @return [Symbol, Telnyx::Models::Whatsapp::SignupRetrieveStatusResponse::Data::RecordType, nil]
          optional :record_type,
                   enum: -> { Telnyx::Models::Whatsapp::SignupRetrieveStatusResponse::Data::RecordType }

          # @!attribute session_id
          #   Signup session ID
          #
          #   @return [String, nil]
          optional :session_id, String

          # @!attribute state
          #   Current provisioning step, or the step that failed. `REGISTER_PHONE_NUMBER` is
          #   skipped for coexistence signups.
          #
          #   @return [Symbol, Telnyx::Models::Whatsapp::SignupRetrieveStatusResponse::Data::State, nil]
          optional :state, enum: -> { Telnyx::Models::Whatsapp::SignupRetrieveStatusResponse::Data::State }

          # @!attribute status
          #   `INCOMPLETE` waits for the Meta signup code, `PENDING` is in progress, `SUCCESS`
          #   finished provisioning, and `FAILURE` stopped at `state`.
          #
          #   @return [Symbol, Telnyx::Models::Whatsapp::SignupRetrieveStatusResponse::Data::Status, nil]
          optional :status, enum: -> { Telnyx::Models::Whatsapp::SignupRetrieveStatusResponse::Data::Status }

          # @!attribute updated_at
          #
          #   @return [Time, nil]
          optional :updated_at, Time

          # @!attribute user_id
          #   Telnyx user ID that owns the signup session
          #
          #   @return [String, nil]
          optional :user_id, String

          # @!attribute waba_id
          #   Meta WhatsApp Business Account ID
          #
          #   @return [String, nil]
          optional :waba_id, String

          # @!method initialize(created_at: nil, customer_id: nil, errors: nil, record_type: nil, session_id: nil, state: nil, status: nil, updated_at: nil, user_id: nil, waba_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Whatsapp::SignupRetrieveStatusResponse::Data} for more details.
          #
          #   @param created_at [Time]
          #
          #   @param customer_id [String] Tech provider customer reference submitted with the signup
          #
          #   @param errors [Array<String>] Errors recorded during provisioning
          #
          #   @param record_type [Symbol, Telnyx::Models::Whatsapp::SignupRetrieveStatusResponse::Data::RecordType]
          #
          #   @param session_id [String] Signup session ID
          #
          #   @param state [Symbol, Telnyx::Models::Whatsapp::SignupRetrieveStatusResponse::Data::State] Current provisioning step, or the step that failed. `REGISTER_PHONE_NUMBER` is s
          #
          #   @param status [Symbol, Telnyx::Models::Whatsapp::SignupRetrieveStatusResponse::Data::Status] `INCOMPLETE` waits for the Meta signup code, `PENDING` is in progress, `SUCCESS`
          #
          #   @param updated_at [Time]
          #
          #   @param user_id [String] Telnyx user ID that owns the signup session
          #
          #   @param waba_id [String] Meta WhatsApp Business Account ID

          # @see Telnyx::Models::Whatsapp::SignupRetrieveStatusResponse::Data#record_type
          module RecordType
            extend Telnyx::Internal::Type::Enum

            WHATSAPP_SESSION_ID = :whatsapp_session_id

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Current provisioning step, or the step that failed. `REGISTER_PHONE_NUMBER` is
          # skipped for coexistence signups.
          #
          # @see Telnyx::Models::Whatsapp::SignupRetrieveStatusResponse::Data#state
          module State
            extend Telnyx::Internal::Type::Enum

            SUBSCRIBE_WEBHOOKS = :SUBSCRIBE_WEBHOOKS
            ASSIGNED_USERS = :ASSIGNED_USERS
            SHARE_CREDIT_LINE = :SHARE_CREDIT_LINE
            REGISTER_PHONE_NUMBER = :REGISTER_PHONE_NUMBER
            ADD_WABA_TO_DB = :ADD_WABA_TO_DB
            ADD_PHONE_NUMBERS_TO_DB = :ADD_PHONE_NUMBERS_TO_DB
            COMPLETE = :COMPLETE

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # `INCOMPLETE` waits for the Meta signup code, `PENDING` is in progress, `SUCCESS`
          # finished provisioning, and `FAILURE` stopped at `state`.
          #
          # @see Telnyx::Models::Whatsapp::SignupRetrieveStatusResponse::Data#status
          module Status
            extend Telnyx::Internal::Type::Enum

            INCOMPLETE = :INCOMPLETE
            PENDING = :PENDING
            SUCCESS = :SUCCESS
            FAILURE = :FAILURE

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
