# typed: strong

module Telnyx
  module Models
    module CredentialConnections
      class ActionCheckRegistrationStatusResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::CredentialConnections::ActionCheckRegistrationStatusResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Telnyx::Models::CredentialConnections::ActionCheckRegistrationStatusResponse::Data
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Telnyx::Models::CredentialConnections::ActionCheckRegistrationStatusResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              Telnyx::Models::CredentialConnections::ActionCheckRegistrationStatusResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            {
              data:
                Telnyx::Models::CredentialConnections::ActionCheckRegistrationStatusResponse::Data
            }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::CredentialConnections::ActionCheckRegistrationStatusResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          # The ip used during the SIP connection
          sig { returns(T.nilable(String)) }
          attr_reader :ip_address

          sig { params(ip_address: String).void }
          attr_writer :ip_address

          # ISO 8601 formatted date indicating when the resource was last updated.
          sig { returns(T.nilable(String)) }
          attr_reader :last_registration

          sig { params(last_registration: String).void }
          attr_writer :last_registration

          # The port of the SIP connection
          sig { returns(T.nilable(Integer)) }
          attr_reader :port

          sig { params(port: Integer).void }
          attr_writer :port

          # Identifies the type of the resource.
          sig { returns(T.nilable(String)) }
          attr_reader :record_type

          sig { params(record_type: String).void }
          attr_writer :record_type

          # The user name of the SIP connection
          sig { returns(T.nilable(String)) }
          attr_reader :sip_username

          sig { params(sip_username: String).void }
          attr_writer :sip_username

          # The current registration status of your SIP connection
          sig do
            returns(
              T.nilable(
                Telnyx::Models::CredentialConnections::ActionCheckRegistrationStatusResponse::Data::Status::TaggedSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                Telnyx::Models::CredentialConnections::ActionCheckRegistrationStatusResponse::Data::Status::OrSymbol
            ).void
          end
          attr_writer :status

          # The protocol of the SIP connection
          sig { returns(T.nilable(String)) }
          attr_reader :transport

          sig { params(transport: String).void }
          attr_writer :transport

          # The user agent of the SIP connection
          sig { returns(T.nilable(String)) }
          attr_reader :user_agent

          sig { params(user_agent: String).void }
          attr_writer :user_agent

          sig do
            params(
              ip_address: String,
              last_registration: String,
              port: Integer,
              record_type: String,
              sip_username: String,
              status:
                Telnyx::Models::CredentialConnections::ActionCheckRegistrationStatusResponse::Data::Status::OrSymbol,
              transport: String,
              user_agent: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The ip used during the SIP connection
            ip_address: nil,
            # ISO 8601 formatted date indicating when the resource was last updated.
            last_registration: nil,
            # The port of the SIP connection
            port: nil,
            # Identifies the type of the resource.
            record_type: nil,
            # The user name of the SIP connection
            sip_username: nil,
            # The current registration status of your SIP connection
            status: nil,
            # The protocol of the SIP connection
            transport: nil,
            # The user agent of the SIP connection
            user_agent: nil
          )
          end

          sig do
            override.returns(
              {
                ip_address: String,
                last_registration: String,
                port: Integer,
                record_type: String,
                sip_username: String,
                status:
                  Telnyx::Models::CredentialConnections::ActionCheckRegistrationStatusResponse::Data::Status::TaggedSymbol,
                transport: String,
                user_agent: String
              }
            )
          end
          def to_hash
          end

          # The current registration status of your SIP connection
          module Status
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::CredentialConnections::ActionCheckRegistrationStatusResponse::Data::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            NOT_APPLICABLE =
              T.let(
                :"Not Applicable",
                Telnyx::Models::CredentialConnections::ActionCheckRegistrationStatusResponse::Data::Status::TaggedSymbol
              )
            NOT_REGISTERED =
              T.let(
                :"Not Registered",
                Telnyx::Models::CredentialConnections::ActionCheckRegistrationStatusResponse::Data::Status::TaggedSymbol
              )
            FAILED =
              T.let(
                :Failed,
                Telnyx::Models::CredentialConnections::ActionCheckRegistrationStatusResponse::Data::Status::TaggedSymbol
              )
            EXPIRED =
              T.let(
                :Expired,
                Telnyx::Models::CredentialConnections::ActionCheckRegistrationStatusResponse::Data::Status::TaggedSymbol
              )
            REGISTERED =
              T.let(
                :Registered,
                Telnyx::Models::CredentialConnections::ActionCheckRegistrationStatusResponse::Data::Status::TaggedSymbol
              )
            UNREGISTERED =
              T.let(
                :Unregistered,
                Telnyx::Models::CredentialConnections::ActionCheckRegistrationStatusResponse::Data::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::CredentialConnections::ActionCheckRegistrationStatusResponse::Data::Status::TaggedSymbol
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
end
