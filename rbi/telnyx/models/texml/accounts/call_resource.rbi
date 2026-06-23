# typed: strong

module Telnyx
  module Models
    module Texml
      module Accounts
        class CallResource < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Texml::Accounts::CallResource,
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
                Telnyx::Texml::Accounts::CallResource::AnsweredBy::TaggedSymbol
              )
            )
          end
          attr_reader :answered_by

          sig do
            params(
              answered_by:
                Telnyx::Texml::Accounts::CallResource::AnsweredBy::OrSymbol
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
                Telnyx::Texml::Accounts::CallResource::Direction::TaggedSymbol
              )
            )
          end
          attr_reader :direction

          sig do
            params(
              direction:
                Telnyx::Texml::Accounts::CallResource::Direction::OrSymbol
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
                Telnyx::Texml::Accounts::CallResource::Status::TaggedSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status: Telnyx::Texml::Accounts::CallResource::Status::OrSymbol
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
                Telnyx::Texml::Accounts::CallResource::AnsweredBy::OrSymbol,
              caller_name: String,
              date_created: String,
              date_updated: String,
              direction:
                Telnyx::Texml::Accounts::CallResource::Direction::OrSymbol,
              duration: String,
              end_time: String,
              from: String,
              from_formatted: String,
              price: String,
              price_unit: String,
              sid: String,
              start_time: String,
              status: Telnyx::Texml::Accounts::CallResource::Status::OrSymbol,
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
                  Telnyx::Texml::Accounts::CallResource::AnsweredBy::TaggedSymbol,
                caller_name: String,
                date_created: String,
                date_updated: String,
                direction:
                  Telnyx::Texml::Accounts::CallResource::Direction::TaggedSymbol,
                duration: String,
                end_time: String,
                from: String,
                from_formatted: String,
                price: String,
                price_unit: String,
                sid: String,
                start_time: String,
                status:
                  Telnyx::Texml::Accounts::CallResource::Status::TaggedSymbol,
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
                T.all(Symbol, Telnyx::Texml::Accounts::CallResource::AnsweredBy)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            HUMAN =
              T.let(
                :human,
                Telnyx::Texml::Accounts::CallResource::AnsweredBy::TaggedSymbol
              )
            MACHINE =
              T.let(
                :machine,
                Telnyx::Texml::Accounts::CallResource::AnsweredBy::TaggedSymbol
              )
            NOT_SURE =
              T.let(
                :not_sure,
                Telnyx::Texml::Accounts::CallResource::AnsweredBy::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Texml::Accounts::CallResource::AnsweredBy::TaggedSymbol
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
                T.all(Symbol, Telnyx::Texml::Accounts::CallResource::Direction)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INBOUND =
              T.let(
                :inbound,
                Telnyx::Texml::Accounts::CallResource::Direction::TaggedSymbol
              )
            OUTBOUND =
              T.let(
                :outbound,
                Telnyx::Texml::Accounts::CallResource::Direction::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Texml::Accounts::CallResource::Direction::TaggedSymbol
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
                T.all(Symbol, Telnyx::Texml::Accounts::CallResource::Status)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            RINGING =
              T.let(
                :ringing,
                Telnyx::Texml::Accounts::CallResource::Status::TaggedSymbol
              )
            IN_PROGRESS =
              T.let(
                :"in-progress",
                Telnyx::Texml::Accounts::CallResource::Status::TaggedSymbol
              )
            CANCELED =
              T.let(
                :canceled,
                Telnyx::Texml::Accounts::CallResource::Status::TaggedSymbol
              )
            COMPLETED =
              T.let(
                :completed,
                Telnyx::Texml::Accounts::CallResource::Status::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                Telnyx::Texml::Accounts::CallResource::Status::TaggedSymbol
              )
            BUSY =
              T.let(
                :busy,
                Telnyx::Texml::Accounts::CallResource::Status::TaggedSymbol
              )
            NO_ANSWER =
              T.let(
                :"no-answer",
                Telnyx::Texml::Accounts::CallResource::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Texml::Accounts::CallResource::Status::TaggedSymbol
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
