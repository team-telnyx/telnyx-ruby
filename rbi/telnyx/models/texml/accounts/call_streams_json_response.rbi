# typed: strong

module Telnyx
  module Models
    module Texml
      module Accounts
        class CallStreamsJsonResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Texml::Accounts::CallStreamsJsonResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :account_sid

          sig { params(account_sid: String).void }
          attr_writer :account_sid

          sig { returns(T.nilable(String)) }
          attr_reader :call_sid

          sig { params(call_sid: String).void }
          attr_writer :call_sid

          sig { returns(T.nilable(Time)) }
          attr_reader :date_updated

          sig { params(date_updated: Time).void }
          attr_writer :date_updated

          # The user specified name of Stream.
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # Identifier of a resource.
          sig { returns(T.nilable(String)) }
          attr_reader :sid

          sig { params(sid: String).void }
          attr_writer :sid

          # The status of the streaming.
          sig do
            returns(
              T.nilable(
                Telnyx::Models::Texml::Accounts::CallStreamsJsonResponse::Status::TaggedSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                Telnyx::Models::Texml::Accounts::CallStreamsJsonResponse::Status::OrSymbol
            ).void
          end
          attr_writer :status

          # The relative URI for this streaming resource.
          sig { returns(T.nilable(String)) }
          attr_reader :uri

          sig { params(uri: String).void }
          attr_writer :uri

          sig do
            params(
              account_sid: String,
              call_sid: String,
              date_updated: Time,
              name: String,
              sid: String,
              status:
                Telnyx::Models::Texml::Accounts::CallStreamsJsonResponse::Status::OrSymbol,
              uri: String
            ).returns(T.attached_class)
          end
          def self.new(
            account_sid: nil,
            call_sid: nil,
            date_updated: nil,
            # The user specified name of Stream.
            name: nil,
            # Identifier of a resource.
            sid: nil,
            # The status of the streaming.
            status: nil,
            # The relative URI for this streaming resource.
            uri: nil
          )
          end

          sig do
            override.returns(
              {
                account_sid: String,
                call_sid: String,
                date_updated: Time,
                name: String,
                sid: String,
                status:
                  Telnyx::Models::Texml::Accounts::CallStreamsJsonResponse::Status::TaggedSymbol,
                uri: String
              }
            )
          end
          def to_hash
          end

          # The status of the streaming.
          module Status
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::Texml::Accounts::CallStreamsJsonResponse::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            IN_PROGRESS =
              T.let(
                :"in-progress",
                Telnyx::Models::Texml::Accounts::CallStreamsJsonResponse::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::Texml::Accounts::CallStreamsJsonResponse::Status::TaggedSymbol
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
