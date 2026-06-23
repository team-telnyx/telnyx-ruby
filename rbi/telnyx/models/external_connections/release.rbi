# typed: strong

module Telnyx
  module Models
    module ExternalConnections
      class Release < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::ExternalConnections::Release,
              Telnyx::Internal::AnyHash
            )
          end

        # ISO 8601 formatted date indicating when the resource was created.
        sig { returns(T.nilable(String)) }
        attr_reader :created_at

        sig { params(created_at: String).void }
        attr_writer :created_at

        # A message set if there is an error with the upload process.
        sig { returns(T.nilable(String)) }
        attr_reader :error_message

        sig { params(error_message: String).void }
        attr_writer :error_message

        # Represents the status of the release on Microsoft Teams.
        sig do
          returns(
            T.nilable(
              Telnyx::ExternalConnections::Release::Status::TaggedSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status: Telnyx::ExternalConnections::Release::Status::OrSymbol
          ).void
        end
        attr_writer :status

        sig do
          returns(
            T.nilable(T::Array[Telnyx::ExternalConnections::TnReleaseEntry])
          )
        end
        attr_reader :telephone_numbers

        sig do
          params(
            telephone_numbers:
              T::Array[Telnyx::ExternalConnections::TnReleaseEntry::OrHash]
          ).void
        end
        attr_writer :telephone_numbers

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
          params(
            created_at: String,
            error_message: String,
            status: Telnyx::ExternalConnections::Release::Status::OrSymbol,
            telephone_numbers:
              T::Array[Telnyx::ExternalConnections::TnReleaseEntry::OrHash],
            tenant_id: String,
            ticket_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # ISO 8601 formatted date indicating when the resource was created.
          created_at: nil,
          # A message set if there is an error with the upload process.
          error_message: nil,
          # Represents the status of the release on Microsoft Teams.
          status: nil,
          telephone_numbers: nil,
          tenant_id: nil,
          # Uniquely identifies the resource.
          ticket_id: nil
        )
        end

        sig do
          override.returns(
            {
              created_at: String,
              error_message: String,
              status:
                Telnyx::ExternalConnections::Release::Status::TaggedSymbol,
              telephone_numbers:
                T::Array[Telnyx::ExternalConnections::TnReleaseEntry],
              tenant_id: String,
              ticket_id: String
            }
          )
        end
        def to_hash
        end

        # Represents the status of the release on Microsoft Teams.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::ExternalConnections::Release::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING_UPLOAD =
            T.let(
              :pending_upload,
              Telnyx::ExternalConnections::Release::Status::TaggedSymbol
            )
          PENDING =
            T.let(
              :pending,
              Telnyx::ExternalConnections::Release::Status::TaggedSymbol
            )
          IN_PROGRESS =
            T.let(
              :in_progress,
              Telnyx::ExternalConnections::Release::Status::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :complete,
              Telnyx::ExternalConnections::Release::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              Telnyx::ExternalConnections::Release::Status::TaggedSymbol
            )
          EXPIRED =
            T.let(
              :expired,
              Telnyx::ExternalConnections::Release::Status::TaggedSymbol
            )
          UNKNOWN =
            T.let(
              :unknown,
              Telnyx::ExternalConnections::Release::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::ExternalConnections::Release::Status::TaggedSymbol
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
