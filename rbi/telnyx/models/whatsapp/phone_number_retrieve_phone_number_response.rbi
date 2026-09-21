# typed: strong

module Telnyx
  module Models
    module Whatsapp
      class PhoneNumberRetrievePhoneNumberResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Whatsapp::PhoneNumberRetrievePhoneNumberResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            Telnyx::Models::Whatsapp::PhoneNumberRetrievePhoneNumberResponse::Data
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Telnyx::Models::Whatsapp::PhoneNumberRetrievePhoneNumberResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              Telnyx::Models::Whatsapp::PhoneNumberRetrievePhoneNumberResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data:)
        end

        sig do
          override.returns(
            {
              data:
                Telnyx::Models::Whatsapp::PhoneNumberRetrievePhoneNumberResponse::Data
            }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Whatsapp::PhoneNumberRetrievePhoneNumberResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :calling_enabled

          sig { params(calling_enabled: T::Boolean).void }
          attr_writer :calling_enabled

          # Current lifecycle state for a coexistence number. This is null for a standard
          # Cloud API number.
          sig do
            returns(
              T.nilable(
                Telnyx::Models::Whatsapp::PhoneNumberRetrievePhoneNumberResponse::Data::CoexistenceState::TaggedSymbol
              )
            )
          end
          attr_accessor :coexistence_state

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

          # Indicates whether the number is connected to both the WhatsApp Business app and
          # Cloud API through WhatsApp Coexistence.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_on_biz_app

          sig { params(is_on_biz_app: T::Boolean).void }
          attr_writer :is_on_biz_app

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

          # Deadline for initiating the current coexistence synchronization cycle. This is
          # null when no deadline applies.
          sig { returns(T.nilable(Time)) }
          attr_accessor :sync_deadline

          # Synchronization progress. This object is returned only while a coexistence
          # number is synchronizing.
          sig do
            returns(
              T.nilable(
                Telnyx::Models::Whatsapp::PhoneNumberRetrievePhoneNumberResponse::Data::SyncProgress
              )
            )
          end
          attr_reader :sync_progress

          sig do
            params(
              sync_progress:
                T.nilable(
                  Telnyx::Models::Whatsapp::PhoneNumberRetrievePhoneNumberResponse::Data::SyncProgress::OrHash
                )
            ).void
          end
          attr_writer :sync_progress

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
              coexistence_state:
                T.nilable(
                  Telnyx::Models::Whatsapp::PhoneNumberRetrievePhoneNumberResponse::Data::CoexistenceState::OrSymbol
                ),
              created_at: Time,
              display_name: String,
              enabled: T::Boolean,
              is_on_biz_app: T::Boolean,
              phone_number: String,
              phone_number_id: String,
              quality_rating: String,
              record_type: String,
              status: String,
              sync_deadline: T.nilable(Time),
              sync_progress:
                T.nilable(
                  Telnyx::Models::Whatsapp::PhoneNumberRetrievePhoneNumberResponse::Data::SyncProgress::OrHash
                ),
              user_id: String,
              waba_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            calling_enabled: nil,
            # Current lifecycle state for a coexistence number. This is null for a standard
            # Cloud API number.
            coexistence_state: nil,
            created_at: nil,
            display_name: nil,
            enabled: nil,
            # Indicates whether the number is connected to both the WhatsApp Business app and
            # Cloud API through WhatsApp Coexistence.
            is_on_biz_app: nil,
            # Phone number in E164 format
            phone_number: nil,
            # Whatsapp phone number ID
            phone_number_id: nil,
            # Whatsapp quality rating
            quality_rating: nil,
            record_type: nil,
            status: nil,
            # Deadline for initiating the current coexistence synchronization cycle. This is
            # null when no deadline applies.
            sync_deadline: nil,
            # Synchronization progress. This object is returned only while a coexistence
            # number is synchronizing.
            sync_progress: nil,
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
                coexistence_state:
                  T.nilable(
                    Telnyx::Models::Whatsapp::PhoneNumberRetrievePhoneNumberResponse::Data::CoexistenceState::TaggedSymbol
                  ),
                created_at: Time,
                display_name: String,
                enabled: T::Boolean,
                is_on_biz_app: T::Boolean,
                phone_number: String,
                phone_number_id: String,
                quality_rating: String,
                record_type: String,
                status: String,
                sync_deadline: T.nilable(Time),
                sync_progress:
                  T.nilable(
                    Telnyx::Models::Whatsapp::PhoneNumberRetrievePhoneNumberResponse::Data::SyncProgress
                  ),
                user_id: String,
                waba_id: String
              }
            )
          end
          def to_hash
          end

          # Current lifecycle state for a coexistence number. This is null for a standard
          # Cloud API number.
          module CoexistenceState
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::Whatsapp::PhoneNumberRetrievePhoneNumberResponse::Data::CoexistenceState
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING_ONBOARDING =
              T.let(
                :pending_onboarding,
                Telnyx::Models::Whatsapp::PhoneNumberRetrievePhoneNumberResponse::Data::CoexistenceState::TaggedSymbol
              )
            SYNC_PENDING =
              T.let(
                :sync_pending,
                Telnyx::Models::Whatsapp::PhoneNumberRetrievePhoneNumberResponse::Data::CoexistenceState::TaggedSymbol
              )
            SYNCING =
              T.let(
                :syncing,
                Telnyx::Models::Whatsapp::PhoneNumberRetrievePhoneNumberResponse::Data::CoexistenceState::TaggedSymbol
              )
            SYNC_COMPLETE =
              T.let(
                :sync_complete,
                Telnyx::Models::Whatsapp::PhoneNumberRetrievePhoneNumberResponse::Data::CoexistenceState::TaggedSymbol
              )
            ACTIVE =
              T.let(
                :active,
                Telnyx::Models::Whatsapp::PhoneNumberRetrievePhoneNumberResponse::Data::CoexistenceState::TaggedSymbol
              )
            HISTORY_DECLINED =
              T.let(
                :history_declined,
                Telnyx::Models::Whatsapp::PhoneNumberRetrievePhoneNumberResponse::Data::CoexistenceState::TaggedSymbol
              )
            SYNC_DEADLINE_EXPIRED =
              T.let(
                :sync_deadline_expired,
                Telnyx::Models::Whatsapp::PhoneNumberRetrievePhoneNumberResponse::Data::CoexistenceState::TaggedSymbol
              )
            OFFBOARDED =
              T.let(
                :offboarded,
                Telnyx::Models::Whatsapp::PhoneNumberRetrievePhoneNumberResponse::Data::CoexistenceState::TaggedSymbol
              )
            DISCONNECTED =
              T.let(
                :disconnected,
                Telnyx::Models::Whatsapp::PhoneNumberRetrievePhoneNumberResponse::Data::CoexistenceState::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::Whatsapp::PhoneNumberRetrievePhoneNumberResponse::Data::CoexistenceState::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class SyncProgress < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Whatsapp::PhoneNumberRetrievePhoneNumberResponse::Data::SyncProgress,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :contacts_status

            sig { params(contacts_status: String).void }
            attr_writer :contacts_status

            sig { returns(T.nilable(Integer)) }
            attr_accessor :history_chunk_order

            sig { returns(T.nilable(Integer)) }
            attr_accessor :history_phase

            sig { returns(T.nilable(Integer)) }
            attr_accessor :history_progress

            sig { returns(T.nilable(String)) }
            attr_reader :history_status

            sig { params(history_status: String).void }
            attr_writer :history_status

            # Synchronization progress. This object is returned only while a coexistence
            # number is synchronizing.
            sig do
              params(
                contacts_status: String,
                history_chunk_order: T.nilable(Integer),
                history_phase: T.nilable(Integer),
                history_progress: T.nilable(Integer),
                history_status: String
              ).returns(T.attached_class)
            end
            def self.new(
              contacts_status: nil,
              history_chunk_order: nil,
              history_phase: nil,
              history_progress: nil,
              history_status: nil
            )
            end

            sig do
              override.returns(
                {
                  contacts_status: String,
                  history_chunk_order: T.nilable(Integer),
                  history_phase: T.nilable(Integer),
                  history_progress: T.nilable(Integer),
                  history_status: String
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
