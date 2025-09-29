# typed: strong

module Telnyx
  module Models
    module ExternalConnections
      class ReleaseRetrieveResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::ExternalConnections::ReleaseRetrieveResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Telnyx::Models::ExternalConnections::ReleaseRetrieveResponse::Data
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Telnyx::Models::ExternalConnections::ReleaseRetrieveResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              Telnyx::Models::ExternalConnections::ReleaseRetrieveResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            {
              data:
                Telnyx::Models::ExternalConnections::ReleaseRetrieveResponse::Data
            }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::ExternalConnections::ReleaseRetrieveResponse::Data,
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
                Telnyx::Models::ExternalConnections::ReleaseRetrieveResponse::Data::Status::TaggedSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                Telnyx::Models::ExternalConnections::ReleaseRetrieveResponse::Data::Status::OrSymbol
            ).void
          end
          attr_writer :status

          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::Models::ExternalConnections::ReleaseRetrieveResponse::Data::TelephoneNumber
                ]
              )
            )
          end
          attr_reader :telephone_numbers

          sig do
            params(
              telephone_numbers:
                T::Array[
                  Telnyx::Models::ExternalConnections::ReleaseRetrieveResponse::Data::TelephoneNumber::OrHash
                ]
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
              status:
                Telnyx::Models::ExternalConnections::ReleaseRetrieveResponse::Data::Status::OrSymbol,
              telephone_numbers:
                T::Array[
                  Telnyx::Models::ExternalConnections::ReleaseRetrieveResponse::Data::TelephoneNumber::OrHash
                ],
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
                  Telnyx::Models::ExternalConnections::ReleaseRetrieveResponse::Data::Status::TaggedSymbol,
                telephone_numbers:
                  T::Array[
                    Telnyx::Models::ExternalConnections::ReleaseRetrieveResponse::Data::TelephoneNumber
                  ],
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
                T.all(
                  Symbol,
                  Telnyx::Models::ExternalConnections::ReleaseRetrieveResponse::Data::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING_UPLOAD =
              T.let(
                :pending_upload,
                Telnyx::Models::ExternalConnections::ReleaseRetrieveResponse::Data::Status::TaggedSymbol
              )
            PENDING =
              T.let(
                :pending,
                Telnyx::Models::ExternalConnections::ReleaseRetrieveResponse::Data::Status::TaggedSymbol
              )
            IN_PROGRESS =
              T.let(
                :in_progress,
                Telnyx::Models::ExternalConnections::ReleaseRetrieveResponse::Data::Status::TaggedSymbol
              )
            COMPLETE =
              T.let(
                :complete,
                Telnyx::Models::ExternalConnections::ReleaseRetrieveResponse::Data::Status::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                Telnyx::Models::ExternalConnections::ReleaseRetrieveResponse::Data::Status::TaggedSymbol
              )
            EXPIRED =
              T.let(
                :expired,
                Telnyx::Models::ExternalConnections::ReleaseRetrieveResponse::Data::Status::TaggedSymbol
              )
            UNKNOWN =
              T.let(
                :unknown,
                Telnyx::Models::ExternalConnections::ReleaseRetrieveResponse::Data::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::ExternalConnections::ReleaseRetrieveResponse::Data::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class TelephoneNumber < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::ExternalConnections::ReleaseRetrieveResponse::Data::TelephoneNumber,
                  Telnyx::Internal::AnyHash
                )
              end

            # Phone number ID from the Telnyx API.
            sig { returns(T.nilable(String)) }
            attr_reader :number_id

            sig { params(number_id: String).void }
            attr_writer :number_id

            # Phone number in E164 format.
            sig { returns(T.nilable(String)) }
            attr_reader :phone_number

            sig { params(phone_number: String).void }
            attr_writer :phone_number

            sig do
              params(number_id: String, phone_number: String).returns(
                T.attached_class
              )
            end
            def self.new(
              # Phone number ID from the Telnyx API.
              number_id: nil,
              # Phone number in E164 format.
              phone_number: nil
            )
            end

            sig do
              override.returns({ number_id: String, phone_number: String })
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
