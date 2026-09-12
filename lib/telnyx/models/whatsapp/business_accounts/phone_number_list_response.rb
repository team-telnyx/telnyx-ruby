# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      module BusinessAccounts
        # @see Telnyx::Resources::Whatsapp::BusinessAccounts::PhoneNumbers#list
        class PhoneNumberListResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute calling_enabled
          #
          #   @return [Boolean, nil]
          optional :calling_enabled, Telnyx::Internal::Type::Boolean

          # @!attribute coexistence_state
          #   Current lifecycle state for a coexistence number. This is null for a standard
          #   Cloud API number.
          #
          #   @return [Symbol, Telnyx::Models::Whatsapp::BusinessAccounts::PhoneNumberListResponse::CoexistenceState, nil]
          optional :coexistence_state,
                   enum: -> { Telnyx::Models::Whatsapp::BusinessAccounts::PhoneNumberListResponse::CoexistenceState },
                   nil?: true

          # @!attribute created_at
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute display_name
          #
          #   @return [String, nil]
          optional :display_name, String

          # @!attribute enabled
          #
          #   @return [Boolean, nil]
          optional :enabled, Telnyx::Internal::Type::Boolean

          # @!attribute is_on_biz_app
          #   Indicates whether the number is connected to both the WhatsApp Business app and
          #   Cloud API through WhatsApp Coexistence.
          #
          #   @return [Boolean, nil]
          optional :is_on_biz_app, Telnyx::Internal::Type::Boolean

          # @!attribute phone_number
          #   Phone number in E164 format
          #
          #   @return [String, nil]
          optional :phone_number, String

          # @!attribute phone_number_id
          #   Whatsapp phone number ID
          #
          #   @return [String, nil]
          optional :phone_number_id, String

          # @!attribute quality_rating
          #   Whatsapp quality rating
          #
          #   @return [String, nil]
          optional :quality_rating, String

          # @!attribute record_type
          #
          #   @return [String, nil]
          optional :record_type, String

          # @!attribute status
          #
          #   @return [String, nil]
          optional :status, String

          # @!attribute sync_deadline
          #   Deadline for initiating the current coexistence synchronization cycle. This is
          #   null when no deadline applies.
          #
          #   @return [Time, nil]
          optional :sync_deadline, Time, nil?: true

          # @!attribute sync_progress
          #   Synchronization progress. This object is returned only while a coexistence
          #   number is synchronizing.
          #
          #   @return [Telnyx::Models::Whatsapp::BusinessAccounts::PhoneNumberListResponse::SyncProgress, nil]
          optional :sync_progress,
                   -> { Telnyx::Models::Whatsapp::BusinessAccounts::PhoneNumberListResponse::SyncProgress },
                   nil?: true

          # @!attribute user_id
          #   User ID
          #
          #   @return [String, nil]
          optional :user_id, String

          # @!attribute waba_id
          #   WABA ID of Whatsapp business account
          #
          #   @return [String, nil]
          optional :waba_id, String

          # @!method initialize(calling_enabled: nil, coexistence_state: nil, created_at: nil, display_name: nil, enabled: nil, is_on_biz_app: nil, phone_number: nil, phone_number_id: nil, quality_rating: nil, record_type: nil, status: nil, sync_deadline: nil, sync_progress: nil, user_id: nil, waba_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Whatsapp::BusinessAccounts::PhoneNumberListResponse} for more
          #   details.
          #
          #   @param calling_enabled [Boolean]
          #
          #   @param coexistence_state [Symbol, Telnyx::Models::Whatsapp::BusinessAccounts::PhoneNumberListResponse::CoexistenceState, nil] Current lifecycle state for a coexistence number. This is null for a standard Cl
          #
          #   @param created_at [Time]
          #
          #   @param display_name [String]
          #
          #   @param enabled [Boolean]
          #
          #   @param is_on_biz_app [Boolean] Indicates whether the number is connected to both the WhatsApp Business app and
          #
          #   @param phone_number [String] Phone number in E164 format
          #
          #   @param phone_number_id [String] Whatsapp phone number ID
          #
          #   @param quality_rating [String] Whatsapp quality rating
          #
          #   @param record_type [String]
          #
          #   @param status [String]
          #
          #   @param sync_deadline [Time, nil] Deadline for initiating the current coexistence synchronization cycle. This is n
          #
          #   @param sync_progress [Telnyx::Models::Whatsapp::BusinessAccounts::PhoneNumberListResponse::SyncProgress, nil] Synchronization progress. This object is returned only while a coexistence numbe
          #
          #   @param user_id [String] User ID
          #
          #   @param waba_id [String] WABA ID of Whatsapp business account

          # Current lifecycle state for a coexistence number. This is null for a standard
          # Cloud API number.
          #
          # @see Telnyx::Models::Whatsapp::BusinessAccounts::PhoneNumberListResponse#coexistence_state
          module CoexistenceState
            extend Telnyx::Internal::Type::Enum

            PENDING_ONBOARDING = :pending_onboarding
            SYNC_PENDING = :sync_pending
            SYNCING = :syncing
            SYNC_COMPLETE = :sync_complete
            ACTIVE = :active
            HISTORY_DECLINED = :history_declined
            SYNC_DEADLINE_EXPIRED = :sync_deadline_expired
            OFFBOARDED = :offboarded
            DISCONNECTED = :disconnected

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Telnyx::Models::Whatsapp::BusinessAccounts::PhoneNumberListResponse#sync_progress
          class SyncProgress < Telnyx::Internal::Type::BaseModel
            # @!attribute contacts_status
            #
            #   @return [String, nil]
            optional :contacts_status, String

            # @!attribute history_chunk_order
            #
            #   @return [Integer, nil]
            optional :history_chunk_order, Integer, nil?: true

            # @!attribute history_phase
            #
            #   @return [Integer, nil]
            optional :history_phase, Integer, nil?: true

            # @!attribute history_progress
            #
            #   @return [Integer, nil]
            optional :history_progress, Integer, nil?: true

            # @!attribute history_status
            #
            #   @return [String, nil]
            optional :history_status, String

            # @!method initialize(contacts_status: nil, history_chunk_order: nil, history_phase: nil, history_progress: nil, history_status: nil)
            #   Synchronization progress. This object is returned only while a coexistence
            #   number is synchronizing.
            #
            #   @param contacts_status [String]
            #   @param history_chunk_order [Integer, nil]
            #   @param history_phase [Integer, nil]
            #   @param history_progress [Integer, nil]
            #   @param history_status [String]
          end
        end
      end
    end
  end
end
