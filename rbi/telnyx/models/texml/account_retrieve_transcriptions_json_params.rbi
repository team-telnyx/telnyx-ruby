# typed: strong

module Telnyx
  module Models
    module Texml
      class AccountRetrieveTranscriptionsJsonParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Texml::AccountRetrieveTranscriptionsJsonParams,
              Telnyx::Internal::AnyHash
            )
          end

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

        sig do
          params(
            page_size: Integer,
            page_token: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The number of records to be displayed on a page
          page_size: nil,
          # Used to request the next page of results.
          page_token: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              page_size: Integer,
              page_token: String,
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
