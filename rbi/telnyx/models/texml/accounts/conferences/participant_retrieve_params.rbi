# typed: strong

module Telnyx
  module Models
    module Texml
      module Accounts
        module Conferences
          class ParticipantRetrieveParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Texml::Accounts::Conferences::ParticipantRetrieveParams,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :account_sid

            sig { returns(String) }
            attr_accessor :conference_sid

            sig do
              params(
                account_sid: String,
                conference_sid: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(account_sid:, conference_sid:, request_options: {})
            end

            sig do
              override.returns(
                {
                  account_sid: String,
                  conference_sid: String,
                  request_options: Telnyx::RequestOptions
                }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
