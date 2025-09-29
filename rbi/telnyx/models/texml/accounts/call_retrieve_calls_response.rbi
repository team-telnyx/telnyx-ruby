# typed: strong

module Telnyx
  module Models
    module Texml
      module Accounts
        class CallRetrieveCallsResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call
                ]
              )
            )
          end
          attr_reader :calls

          sig do
            params(
              calls:
                T::Array[
                  Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call::OrHash
                ]
            ).void
          end
          attr_writer :calls

          # The number of the last element on the page, zero-indexed.
          sig { returns(T.nilable(Integer)) }
          attr_reader :end_

          sig { params(end_: Integer).void }
          attr_writer :end_

          # /v2/texml/Accounts/61bf923e-5e4d-4595-a110-56190ea18a1b/Calls.json?Page=0&PageSize=1
          sig { returns(T.nilable(String)) }
          attr_reader :first_page_uri

          sig { params(first_page_uri: String).void }
          attr_writer :first_page_uri

          # /v2/texml/Accounts/61bf923e-5e4d-4595-a110-56190ea18a1b/Calls.json?Page=1&PageSize=1&PageToken=MTY4AjgyNDkwNzIxMQ
          sig { returns(T.nilable(String)) }
          attr_reader :next_page_uri

          sig { params(next_page_uri: String).void }
          attr_writer :next_page_uri

          # Current page number, zero-indexed.
          sig { returns(T.nilable(Integer)) }
          attr_reader :page

          sig { params(page: Integer).void }
          attr_writer :page

          # The number of items on the page
          sig { returns(T.nilable(Integer)) }
          attr_reader :page_size

          sig { params(page_size: Integer).void }
          attr_writer :page_size

          # The number of the first element on the page, zero-indexed.
          sig { returns(T.nilable(Integer)) }
          attr_reader :start

          sig { params(start: Integer).void }
          attr_writer :start

          # The URI of the current page.
          sig { returns(T.nilable(String)) }
          attr_reader :uri

          sig { params(uri: String).void }
          attr_writer :uri

          sig do
            params(
              calls:
                T::Array[
                  Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call::OrHash
                ],
              end_: Integer,
              first_page_uri: String,
              next_page_uri: String,
              page: Integer,
              page_size: Integer,
              start: Integer,
              uri: String
            ).returns(T.attached_class)
          end
          def self.new(
            calls: nil,
            # The number of the last element on the page, zero-indexed.
            end_: nil,
            # /v2/texml/Accounts/61bf923e-5e4d-4595-a110-56190ea18a1b/Calls.json?Page=0&PageSize=1
            first_page_uri: nil,
            # /v2/texml/Accounts/61bf923e-5e4d-4595-a110-56190ea18a1b/Calls.json?Page=1&PageSize=1&PageToken=MTY4AjgyNDkwNzIxMQ
            next_page_uri: nil,
            # Current page number, zero-indexed.
            page: nil,
            # The number of items on the page
            page_size: nil,
            # The number of the first element on the page, zero-indexed.
            start: nil,
            # The URI of the current page.
            uri: nil
          )
          end

          sig do
            override.returns(
              {
                calls:
                  T::Array[
                    Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call
                  ],
                end_: Integer,
                first_page_uri: String,
                next_page_uri: String,
                page: Integer,
                page_size: Integer,
                start: Integer,
                uri: String
              }
            )
          end
          def to_hash
          end

          class Call < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call,
                  Telnyx::Internal::AnyHash
                )
              end

            # The id of the account the resource belongs to.
            sig { returns(T.nilable(String)) }
            attr_reader :account_sid

            sig { params(account_sid: String).void }
            attr_writer :account_sid

            # The value of the answering machine detection result, if this feature was enabled
            # for the call.
            sig do
              returns(
                T.nilable(
                  Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call::AnsweredBy::TaggedSymbol
                )
              )
            end
            attr_reader :answered_by

            sig do
              params(
                answered_by:
                  Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call::AnsweredBy::OrSymbol
              ).void
            end
            attr_writer :answered_by

            # Caller ID, if present.
            sig { returns(T.nilable(String)) }
            attr_reader :caller_name

            sig { params(caller_name: String).void }
            attr_writer :caller_name

            # The timestamp of when the resource was created.
            sig { returns(T.nilable(String)) }
            attr_reader :date_created

            sig { params(date_created: String).void }
            attr_writer :date_created

            # The timestamp of when the resource was last updated.
            sig { returns(T.nilable(String)) }
            attr_reader :date_updated

            sig { params(date_updated: String).void }
            attr_writer :date_updated

            # The direction of this call.
            sig do
              returns(
                T.nilable(
                  Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call::Direction::TaggedSymbol
                )
              )
            end
            attr_reader :direction

            sig do
              params(
                direction:
                  Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call::Direction::OrSymbol
              ).void
            end
            attr_writer :direction

            # The duration of this call, given in seconds.
            sig { returns(T.nilable(String)) }
            attr_reader :duration

            sig { params(duration: String).void }
            attr_writer :duration

            # The end time of this call.
            sig { returns(T.nilable(String)) }
            attr_reader :end_time

            sig { params(end_time: String).void }
            attr_writer :end_time

            # The phone number or SIP address that made this call.
            sig { returns(T.nilable(String)) }
            attr_reader :from

            sig { params(from: String).void }
            attr_writer :from

            # The from number formatted for display.
            sig { returns(T.nilable(String)) }
            attr_reader :from_formatted

            sig { params(from_formatted: String).void }
            attr_writer :from_formatted

            # The price of this call, the currency is specified in the price_unit field. Only
            # populated when the call cost feature is enabled for the account.
            sig { returns(T.nilable(String)) }
            attr_reader :price

            sig { params(price: String).void }
            attr_writer :price

            # The unit in which the price is given.
            sig { returns(T.nilable(String)) }
            attr_reader :price_unit

            sig { params(price_unit: String).void }
            attr_writer :price_unit

            # The identifier of this call.
            sig { returns(T.nilable(String)) }
            attr_reader :sid

            sig { params(sid: String).void }
            attr_writer :sid

            # The start time of this call.
            sig { returns(T.nilable(String)) }
            attr_reader :start_time

            sig { params(start_time: String).void }
            attr_writer :start_time

            # The status of this call.
            sig do
              returns(
                T.nilable(
                  Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call::Status::TaggedSymbol
                )
              )
            end
            attr_reader :status

            sig do
              params(
                status:
                  Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call::Status::OrSymbol
              ).void
            end
            attr_writer :status

            # The phone number or SIP address that received this call.
            sig { returns(T.nilable(String)) }
            attr_reader :to

            sig { params(to: String).void }
            attr_writer :to

            # The to number formatted for display.
            sig { returns(T.nilable(String)) }
            attr_reader :to_formatted

            sig { params(to_formatted: String).void }
            attr_writer :to_formatted

            # The relative URI for this call.
            sig { returns(T.nilable(String)) }
            attr_reader :uri

            sig { params(uri: String).void }
            attr_writer :uri

            sig do
              params(
                account_sid: String,
                answered_by:
                  Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call::AnsweredBy::OrSymbol,
                caller_name: String,
                date_created: String,
                date_updated: String,
                direction:
                  Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call::Direction::OrSymbol,
                duration: String,
                end_time: String,
                from: String,
                from_formatted: String,
                price: String,
                price_unit: String,
                sid: String,
                start_time: String,
                status:
                  Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call::Status::OrSymbol,
                to: String,
                to_formatted: String,
                uri: String
              ).returns(T.attached_class)
            end
            def self.new(
              # The id of the account the resource belongs to.
              account_sid: nil,
              # The value of the answering machine detection result, if this feature was enabled
              # for the call.
              answered_by: nil,
              # Caller ID, if present.
              caller_name: nil,
              # The timestamp of when the resource was created.
              date_created: nil,
              # The timestamp of when the resource was last updated.
              date_updated: nil,
              # The direction of this call.
              direction: nil,
              # The duration of this call, given in seconds.
              duration: nil,
              # The end time of this call.
              end_time: nil,
              # The phone number or SIP address that made this call.
              from: nil,
              # The from number formatted for display.
              from_formatted: nil,
              # The price of this call, the currency is specified in the price_unit field. Only
              # populated when the call cost feature is enabled for the account.
              price: nil,
              # The unit in which the price is given.
              price_unit: nil,
              # The identifier of this call.
              sid: nil,
              # The start time of this call.
              start_time: nil,
              # The status of this call.
              status: nil,
              # The phone number or SIP address that received this call.
              to: nil,
              # The to number formatted for display.
              to_formatted: nil,
              # The relative URI for this call.
              uri: nil
            )
            end

            sig do
              override.returns(
                {
                  account_sid: String,
                  answered_by:
                    Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call::AnsweredBy::TaggedSymbol,
                  caller_name: String,
                  date_created: String,
                  date_updated: String,
                  direction:
                    Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call::Direction::TaggedSymbol,
                  duration: String,
                  end_time: String,
                  from: String,
                  from_formatted: String,
                  price: String,
                  price_unit: String,
                  sid: String,
                  start_time: String,
                  status:
                    Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call::Status::TaggedSymbol,
                  to: String,
                  to_formatted: String,
                  uri: String
                }
              )
            end
            def to_hash
            end

            # The value of the answering machine detection result, if this feature was enabled
            # for the call.
            module AnsweredBy
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call::AnsweredBy
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              HUMAN =
                T.let(
                  :human,
                  Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call::AnsweredBy::TaggedSymbol
                )
              MACHINE =
                T.let(
                  :machine,
                  Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call::AnsweredBy::TaggedSymbol
                )
              NOT_SURE =
                T.let(
                  :not_sure,
                  Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call::AnsweredBy::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call::AnsweredBy::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # The direction of this call.
            module Direction
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call::Direction
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              INBOUND =
                T.let(
                  :inbound,
                  Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call::Direction::TaggedSymbol
                )
              OUTBOUND =
                T.let(
                  :outbound,
                  Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call::Direction::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call::Direction::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end

            # The status of this call.
            module Status
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call::Status
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              RINGING =
                T.let(
                  :ringing,
                  Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call::Status::TaggedSymbol
                )
              IN_PROGRESS =
                T.let(
                  :"in-progress",
                  Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call::Status::TaggedSymbol
                )
              CANCELED =
                T.let(
                  :canceled,
                  Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call::Status::TaggedSymbol
                )
              COMPLETED =
                T.let(
                  :completed,
                  Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call::Status::TaggedSymbol
                )
              FAILED =
                T.let(
                  :failed,
                  Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call::Status::TaggedSymbol
                )
              BUSY =
                T.let(
                  :busy,
                  Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call::Status::TaggedSymbol
                )
              NO_ANSWER =
                T.let(
                  :"no-answer",
                  Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call::Status::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::Texml::Accounts::CallRetrieveCallsResponse::Call::Status::TaggedSymbol
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
