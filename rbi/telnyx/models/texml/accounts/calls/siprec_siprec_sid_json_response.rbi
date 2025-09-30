# typed: strong

module Telnyx
  module Models
    module Texml
      module Accounts
        module Calls
          class SiprecSiprecSidJsonResponse < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Texml::Accounts::Calls::SiprecSiprecSidJsonResponse,
                  Telnyx::Internal::AnyHash
                )
              end

            # The id of the account the resource belongs to.
            sig { returns(T.nilable(String)) }
            attr_reader :account_sid

            sig { params(account_sid: String).void }
            attr_writer :account_sid

            # The id of the call the resource belongs to.
            sig { returns(T.nilable(String)) }
            attr_reader :call_sid

            sig { params(call_sid: String).void }
            attr_writer :call_sid

            # The date and time the siprec session was last updated.
            sig { returns(T.nilable(String)) }
            attr_reader :date_updated

            sig { params(date_updated: String).void }
            attr_writer :date_updated

            # The error code of the siprec session.
            sig { returns(T.nilable(String)) }
            attr_reader :error_code

            sig { params(error_code: String).void }
            attr_writer :error_code

            # The SID of the siprec session.
            sig { returns(T.nilable(String)) }
            attr_reader :sid

            sig { params(sid: String).void }
            attr_writer :sid

            # The status of the siprec session.
            sig do
              returns(
                T.nilable(
                  Telnyx::Models::Texml::Accounts::Calls::SiprecSiprecSidJsonResponse::Status::TaggedSymbol
                )
              )
            end
            attr_reader :status

            sig do
              params(
                status:
                  Telnyx::Models::Texml::Accounts::Calls::SiprecSiprecSidJsonResponse::Status::OrSymbol
              ).void
            end
            attr_writer :status

            # The URI of the siprec session.
            sig { returns(T.nilable(String)) }
            attr_reader :uri

            sig { params(uri: String).void }
            attr_writer :uri

            sig do
              params(
                account_sid: String,
                call_sid: String,
                date_updated: String,
                error_code: String,
                sid: String,
                status:
                  Telnyx::Models::Texml::Accounts::Calls::SiprecSiprecSidJsonResponse::Status::OrSymbol,
                uri: String
              ).returns(T.attached_class)
            end
            def self.new(
              # The id of the account the resource belongs to.
              account_sid: nil,
              # The id of the call the resource belongs to.
              call_sid: nil,
              # The date and time the siprec session was last updated.
              date_updated: nil,
              # The error code of the siprec session.
              error_code: nil,
              # The SID of the siprec session.
              sid: nil,
              # The status of the siprec session.
              status: nil,
              # The URI of the siprec session.
              uri: nil
            )
            end

            sig do
              override.returns(
                {
                  account_sid: String,
                  call_sid: String,
                  date_updated: String,
                  error_code: String,
                  sid: String,
                  status:
                    Telnyx::Models::Texml::Accounts::Calls::SiprecSiprecSidJsonResponse::Status::TaggedSymbol,
                  uri: String
                }
              )
            end
            def to_hash
            end

            # The status of the siprec session.
            module Status
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Models::Texml::Accounts::Calls::SiprecSiprecSidJsonResponse::Status
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              IN_PROGRESS =
                T.let(
                  :"in-progress",
                  Telnyx::Models::Texml::Accounts::Calls::SiprecSiprecSidJsonResponse::Status::TaggedSymbol
                )
              STOPPED =
                T.let(
                  :stopped,
                  Telnyx::Models::Texml::Accounts::Calls::SiprecSiprecSidJsonResponse::Status::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::Texml::Accounts::Calls::SiprecSiprecSidJsonResponse::Status::TaggedSymbol
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
end
