# typed: strong

module Telnyx
  module Models
    module Texml
      module Accounts
        module Calls
          class RecordingRecordingSidJsonParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Texml::Accounts::Calls::RecordingRecordingSidJsonParams,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :account_sid

            sig { returns(String) }
            attr_accessor :call_sid

            sig do
              returns(
                T.nilable(
                  Telnyx::Texml::Accounts::Calls::RecordingRecordingSidJsonParams::Status::OrSymbol
                )
              )
            end
            attr_reader :status

            sig do
              params(
                status:
                  Telnyx::Texml::Accounts::Calls::RecordingRecordingSidJsonParams::Status::OrSymbol
              ).void
            end
            attr_writer :status

            sig do
              params(
                account_sid: String,
                call_sid: String,
                status:
                  Telnyx::Texml::Accounts::Calls::RecordingRecordingSidJsonParams::Status::OrSymbol,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              account_sid:,
              call_sid:,
              status: nil,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  account_sid: String,
                  call_sid: String,
                  status:
                    Telnyx::Texml::Accounts::Calls::RecordingRecordingSidJsonParams::Status::OrSymbol,
                  request_options: Telnyx::RequestOptions
                }
              )
            end
            def to_hash
            end

            module Status
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Texml::Accounts::Calls::RecordingRecordingSidJsonParams::Status
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              IN_PROGRESS =
                T.let(
                  :"in-progress",
                  Telnyx::Texml::Accounts::Calls::RecordingRecordingSidJsonParams::Status::TaggedSymbol
                )
              PAUSED =
                T.let(
                  :paused,
                  Telnyx::Texml::Accounts::Calls::RecordingRecordingSidJsonParams::Status::TaggedSymbol
                )
              STOPPED =
                T.let(
                  :stopped,
                  Telnyx::Texml::Accounts::Calls::RecordingRecordingSidJsonParams::Status::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Texml::Accounts::Calls::RecordingRecordingSidJsonParams::Status::TaggedSymbol
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
