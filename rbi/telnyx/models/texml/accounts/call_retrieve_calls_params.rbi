# typed: strong

module Telnyx
  module Models
    module Texml
      module Accounts
        class CallRetrieveCallsParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Texml::Accounts::CallRetrieveCallsParams,
                Telnyx::Internal::AnyHash
              )
            end

          # Filters calls by their end date. Expected format is YYYY-MM-DD
          sig { returns(T.nilable(String)) }
          attr_reader :end_time

          sig { params(end_time: String).void }
          attr_writer :end_time

          # Filters calls by their end date (after). Expected format is YYYY-MM-DD
          sig { returns(T.nilable(String)) }
          attr_reader :end_time_gt

          sig { params(end_time_gt: String).void }
          attr_writer :end_time_gt

          # Filters calls by their end date (before). Expected format is YYYY-MM-DD
          sig { returns(T.nilable(String)) }
          attr_reader :end_time_lt

          sig { params(end_time_lt: String).void }
          attr_writer :end_time_lt

          # Filters calls by the from number.
          sig { returns(T.nilable(String)) }
          attr_reader :from

          sig { params(from: String).void }
          attr_writer :from

          # The number of the page to be displayed, zero-indexed, should be used in
          # conjuction with PageToken.
          sig { returns(T.nilable(Integer)) }
          attr_reader :page

          sig { params(page: Integer).void }
          attr_writer :page

          # The number of records to be displayed on a page
          sig { returns(T.nilable(Integer)) }
          attr_reader :page_size

          sig { params(page_size: Integer).void }
          attr_writer :page_size

          # Used to request the next page of results.
          sig { returns(T.nilable(String)) }
          attr_reader :page_token

          sig { params(page_token: String).void }
          attr_writer :page_token

          # Filters calls by their start date. Expected format is YYYY-MM-DD.
          sig { returns(T.nilable(String)) }
          attr_reader :start_time

          sig { params(start_time: String).void }
          attr_writer :start_time

          # Filters calls by their start date (after). Expected format is YYYY-MM-DD
          sig { returns(T.nilable(String)) }
          attr_reader :start_time_gt

          sig { params(start_time_gt: String).void }
          attr_writer :start_time_gt

          # Filters calls by their start date (before). Expected format is YYYY-MM-DD
          sig { returns(T.nilable(String)) }
          attr_reader :start_time_lt

          sig { params(start_time_lt: String).void }
          attr_writer :start_time_lt

          # Filters calls by status.
          sig do
            returns(
              T.nilable(
                Telnyx::Texml::Accounts::CallRetrieveCallsParams::Status::OrSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                Telnyx::Texml::Accounts::CallRetrieveCallsParams::Status::OrSymbol
            ).void
          end
          attr_writer :status

          # Filters calls by the to number.
          sig { returns(T.nilable(String)) }
          attr_reader :to

          sig { params(to: String).void }
          attr_writer :to

          sig do
            params(
              end_time: String,
              end_time_gt: String,
              end_time_lt: String,
              from: String,
              page: Integer,
              page_size: Integer,
              page_token: String,
              start_time: String,
              start_time_gt: String,
              start_time_lt: String,
              status:
                Telnyx::Texml::Accounts::CallRetrieveCallsParams::Status::OrSymbol,
              to: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Filters calls by their end date. Expected format is YYYY-MM-DD
            end_time: nil,
            # Filters calls by their end date (after). Expected format is YYYY-MM-DD
            end_time_gt: nil,
            # Filters calls by their end date (before). Expected format is YYYY-MM-DD
            end_time_lt: nil,
            # Filters calls by the from number.
            from: nil,
            # The number of the page to be displayed, zero-indexed, should be used in
            # conjuction with PageToken.
            page: nil,
            # The number of records to be displayed on a page
            page_size: nil,
            # Used to request the next page of results.
            page_token: nil,
            # Filters calls by their start date. Expected format is YYYY-MM-DD.
            start_time: nil,
            # Filters calls by their start date (after). Expected format is YYYY-MM-DD
            start_time_gt: nil,
            # Filters calls by their start date (before). Expected format is YYYY-MM-DD
            start_time_lt: nil,
            # Filters calls by status.
            status: nil,
            # Filters calls by the to number.
            to: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                end_time: String,
                end_time_gt: String,
                end_time_lt: String,
                from: String,
                page: Integer,
                page_size: Integer,
                page_token: String,
                start_time: String,
                start_time_gt: String,
                start_time_lt: String,
                status:
                  Telnyx::Texml::Accounts::CallRetrieveCallsParams::Status::OrSymbol,
                to: String,
                request_options: Telnyx::RequestOptions
              }
            )
          end
          def to_hash
          end

          # Filters calls by status.
          module Status
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Texml::Accounts::CallRetrieveCallsParams::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CANCELED =
              T.let(
                :canceled,
                Telnyx::Texml::Accounts::CallRetrieveCallsParams::Status::TaggedSymbol
              )
            COMPLETED =
              T.let(
                :completed,
                Telnyx::Texml::Accounts::CallRetrieveCallsParams::Status::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                Telnyx::Texml::Accounts::CallRetrieveCallsParams::Status::TaggedSymbol
              )
            BUSY =
              T.let(
                :busy,
                Telnyx::Texml::Accounts::CallRetrieveCallsParams::Status::TaggedSymbol
              )
            NO_ANSWER =
              T.let(
                :"no-answer",
                Telnyx::Texml::Accounts::CallRetrieveCallsParams::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Texml::Accounts::CallRetrieveCallsParams::Status::TaggedSymbol
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
