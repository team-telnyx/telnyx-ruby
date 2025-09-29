# typed: strong

module Telnyx
  module Models
    module ExternalConnections
      class Upload < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::ExternalConnections::Upload,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::ExternalConnections::Upload::AvailableUsage::TaggedSymbol
              ]
            )
          )
        end
        attr_reader :available_usages

        sig do
          params(
            available_usages:
              T::Array[
                Telnyx::ExternalConnections::Upload::AvailableUsage::OrSymbol
              ]
          ).void
        end
        attr_writer :available_usages

        # A code returned by Microsoft Teams if there is an error with the upload process.
        sig { returns(T.nilable(String)) }
        attr_reader :error_code

        sig { params(error_code: String).void }
        attr_writer :error_code

        # A message set if there is an error with the upload process.
        sig { returns(T.nilable(String)) }
        attr_reader :error_message

        sig { params(error_message: String).void }
        attr_writer :error_message

        sig { returns(T.nilable(String)) }
        attr_reader :location_id

        sig { params(location_id: String).void }
        attr_writer :location_id

        # Represents the status of the upload on Microsoft Teams.
        sig do
          returns(
            T.nilable(Telnyx::ExternalConnections::Upload::Status::TaggedSymbol)
          )
        end
        attr_reader :status

        sig do
          params(
            status: Telnyx::ExternalConnections::Upload::Status::OrSymbol
          ).void
        end
        attr_writer :status

        sig { returns(T.nilable(String)) }
        attr_reader :tenant_id

        sig { params(tenant_id: String).void }
        attr_writer :tenant_id

        # Uniquely identifies the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :ticket_id

        sig { params(ticket_id: String).void }
        attr_writer :ticket_id

        sig do
          returns(
            T.nilable(T::Array[Telnyx::ExternalConnections::TnUploadEntry])
          )
        end
        attr_reader :tn_upload_entries

        sig do
          params(
            tn_upload_entries:
              T::Array[Telnyx::ExternalConnections::TnUploadEntry::OrHash]
          ).void
        end
        attr_writer :tn_upload_entries

        sig do
          params(
            available_usages:
              T::Array[
                Telnyx::ExternalConnections::Upload::AvailableUsage::OrSymbol
              ],
            error_code: String,
            error_message: String,
            location_id: String,
            status: Telnyx::ExternalConnections::Upload::Status::OrSymbol,
            tenant_id: String,
            ticket_id: String,
            tn_upload_entries:
              T::Array[Telnyx::ExternalConnections::TnUploadEntry::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          available_usages: nil,
          # A code returned by Microsoft Teams if there is an error with the upload process.
          error_code: nil,
          # A message set if there is an error with the upload process.
          error_message: nil,
          location_id: nil,
          # Represents the status of the upload on Microsoft Teams.
          status: nil,
          tenant_id: nil,
          # Uniquely identifies the resource.
          ticket_id: nil,
          tn_upload_entries: nil
        )
        end

        sig do
          override.returns(
            {
              available_usages:
                T::Array[
                  Telnyx::ExternalConnections::Upload::AvailableUsage::TaggedSymbol
                ],
              error_code: String,
              error_message: String,
              location_id: String,
              status: Telnyx::ExternalConnections::Upload::Status::TaggedSymbol,
              tenant_id: String,
              ticket_id: String,
              tn_upload_entries:
                T::Array[Telnyx::ExternalConnections::TnUploadEntry]
            }
          )
        end
        def to_hash
        end

        # Available usages for the numbers in the upload on Microsoft Teams.
        module AvailableUsage
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::ExternalConnections::Upload::AvailableUsage)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CALLING_USER_ASSIGNMENT =
            T.let(
              :calling_user_assignment,
              Telnyx::ExternalConnections::Upload::AvailableUsage::TaggedSymbol
            )
          FIRST_PARTY_APP_ASSIGNMENT =
            T.let(
              :first_party_app_assignment,
              Telnyx::ExternalConnections::Upload::AvailableUsage::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::ExternalConnections::Upload::AvailableUsage::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Represents the status of the upload on Microsoft Teams.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::ExternalConnections::Upload::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING_UPLOAD =
            T.let(
              :pending_upload,
              Telnyx::ExternalConnections::Upload::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :pending,
              Telnyx::ExternalConnections::Upload::Status::TaggedSymbol
            )
          IN_PROGRESS =
            T.let(
              :in_progress,
              Telnyx::ExternalConnections::Upload::Status::TaggedSymbol
            )
          PARTIAL_SUCCESS =
            T.let(
              :partial_success,
              Telnyx::ExternalConnections::Upload::Status::TaggedSymbol
            )
          SUCCESS =
            T.let(
              :success,
              Telnyx::ExternalConnections::Upload::Status::TaggedSymbol
            )
          ERROR =
            T.let(
              :error,
              Telnyx::ExternalConnections::Upload::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::ExternalConnections::Upload::Status::TaggedSymbol
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
