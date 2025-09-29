# typed: strong

module Telnyx
  module Models
    module ExternalConnections
      class TnUploadEntry < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::ExternalConnections::TnUploadEntry,
              Telnyx::Internal::AnyHash
            )
          end

        # Identifies the civic address assigned to the phone number entry.
        sig { returns(T.nilable(String)) }
        attr_reader :civic_address_id

        sig { params(civic_address_id: String).void }
        attr_writer :civic_address_id

        # A code returned by Microsoft Teams if there is an error with the phone number
        # entry upload.
        sig do
          returns(
            T.nilable(
              Telnyx::ExternalConnections::TnUploadEntry::ErrorCode::TaggedSymbol
            )
          )
        end
        attr_reader :error_code

        sig do
          params(
            error_code:
              Telnyx::ExternalConnections::TnUploadEntry::ErrorCode::OrSymbol
          ).void
        end
        attr_writer :error_code

        # A message returned by Microsoft Teams if there is an error with the upload
        # process.
        sig { returns(T.nilable(String)) }
        attr_reader :error_message

        sig { params(error_message: String).void }
        attr_writer :error_message

        # Represents the status of the phone number entry upload on Telnyx.
        sig do
          returns(
            T.nilable(
              Telnyx::ExternalConnections::TnUploadEntry::InternalStatus::TaggedSymbol
            )
          )
        end
        attr_reader :internal_status

        sig do
          params(
            internal_status:
              Telnyx::ExternalConnections::TnUploadEntry::InternalStatus::OrSymbol
          ).void
        end
        attr_writer :internal_status

        # Identifies the location assigned to the phone number entry.
        sig { returns(T.nilable(String)) }
        attr_reader :location_id

        sig { params(location_id: String).void }
        attr_writer :location_id

        # Uniquely identifies the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :number_id

        sig { params(number_id: String).void }
        attr_writer :number_id

        # Phone number in E164 format.
        sig { returns(T.nilable(String)) }
        attr_reader :phone_number

        sig { params(phone_number: String).void }
        attr_writer :phone_number

        # Represents the status of the phone number entry upload on Microsoft Teams.
        sig do
          returns(
            T.nilable(
              Telnyx::ExternalConnections::TnUploadEntry::Status::TaggedSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status: Telnyx::ExternalConnections::TnUploadEntry::Status::OrSymbol
          ).void
        end
        attr_writer :status

        sig do
          params(
            civic_address_id: String,
            error_code:
              Telnyx::ExternalConnections::TnUploadEntry::ErrorCode::OrSymbol,
            error_message: String,
            internal_status:
              Telnyx::ExternalConnections::TnUploadEntry::InternalStatus::OrSymbol,
            location_id: String,
            number_id: String,
            phone_number: String,
            status: Telnyx::ExternalConnections::TnUploadEntry::Status::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifies the civic address assigned to the phone number entry.
          civic_address_id: nil,
          # A code returned by Microsoft Teams if there is an error with the phone number
          # entry upload.
          error_code: nil,
          # A message returned by Microsoft Teams if there is an error with the upload
          # process.
          error_message: nil,
          # Represents the status of the phone number entry upload on Telnyx.
          internal_status: nil,
          # Identifies the location assigned to the phone number entry.
          location_id: nil,
          # Uniquely identifies the resource.
          number_id: nil,
          # Phone number in E164 format.
          phone_number: nil,
          # Represents the status of the phone number entry upload on Microsoft Teams.
          status: nil
        )
        end

        sig do
          override.returns(
            {
              civic_address_id: String,
              error_code:
                Telnyx::ExternalConnections::TnUploadEntry::ErrorCode::TaggedSymbol,
              error_message: String,
              internal_status:
                Telnyx::ExternalConnections::TnUploadEntry::InternalStatus::TaggedSymbol,
              location_id: String,
              number_id: String,
              phone_number: String,
              status:
                Telnyx::ExternalConnections::TnUploadEntry::Status::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # A code returned by Microsoft Teams if there is an error with the phone number
        # entry upload.
        module ErrorCode
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::ExternalConnections::TnUploadEntry::ErrorCode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INTERNAL_ERROR =
            T.let(
              :internal_error,
              Telnyx::ExternalConnections::TnUploadEntry::ErrorCode::TaggedSymbol
            )
          UNABLE_TO_RETRIEVE_DEFAULT_LOCATION =
            T.let(
              :unable_to_retrieve_default_location,
              Telnyx::ExternalConnections::TnUploadEntry::ErrorCode::TaggedSymbol
            )
          UNKNOWN_COUNTRY_CODE =
            T.let(
              :unknown_country_code,
              Telnyx::ExternalConnections::TnUploadEntry::ErrorCode::TaggedSymbol
            )
          UNABLE_TO_RETRIEVE_LOCATION =
            T.let(
              :unable_to_retrieve_location,
              Telnyx::ExternalConnections::TnUploadEntry::ErrorCode::TaggedSymbol
            )
          UNABLE_TO_RETRIEVE_PARTNER_INFO =
            T.let(
              :unable_to_retrieve_partner_info,
              Telnyx::ExternalConnections::TnUploadEntry::ErrorCode::TaggedSymbol
            )
          UNABLE_TO_MATCH_GEOGRAPHY_ENTRY =
            T.let(
              :unable_to_match_geography_entry,
              Telnyx::ExternalConnections::TnUploadEntry::ErrorCode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::ExternalConnections::TnUploadEntry::ErrorCode::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Represents the status of the phone number entry upload on Telnyx.
        module InternalStatus
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::ExternalConnections::TnUploadEntry::InternalStatus
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING_ASSIGNMENT =
            T.let(
              :pending_assignment,
              Telnyx::ExternalConnections::TnUploadEntry::InternalStatus::TaggedSymbol
            )
          IN_PROGRESS =
            T.let(
              :in_progress,
              Telnyx::ExternalConnections::TnUploadEntry::InternalStatus::TaggedSymbol
            )
          ALL_INTERNAL_JOBS_COMPLETED =
            T.let(
              :all_internal_jobs_completed,
              Telnyx::ExternalConnections::TnUploadEntry::InternalStatus::TaggedSymbol
            )
          RELEASE_REQUESTED =
            T.let(
              :release_requested,
              Telnyx::ExternalConnections::TnUploadEntry::InternalStatus::TaggedSymbol
            )
          RELEASE_COMPLETED =
            T.let(
              :release_completed,
              Telnyx::ExternalConnections::TnUploadEntry::InternalStatus::TaggedSymbol
            )
          ERROR =
            T.let(
              :error,
              Telnyx::ExternalConnections::TnUploadEntry::InternalStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::ExternalConnections::TnUploadEntry::InternalStatus::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Represents the status of the phone number entry upload on Microsoft Teams.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::ExternalConnections::TnUploadEntry::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING_UPLOAD =
            T.let(
              :pending_upload,
              Telnyx::ExternalConnections::TnUploadEntry::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :pending,
              Telnyx::ExternalConnections::TnUploadEntry::Status::TaggedSymbol
            )
          IN_PROGRESS =
            T.let(
              :in_progress,
              Telnyx::ExternalConnections::TnUploadEntry::Status::TaggedSymbol
            )
          SUCCESS =
            T.let(
              :success,
              Telnyx::ExternalConnections::TnUploadEntry::Status::TaggedSymbol
            )
          ERROR =
            T.let(
              :error,
              Telnyx::ExternalConnections::TnUploadEntry::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::ExternalConnections::TnUploadEntry::Status::TaggedSymbol
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
