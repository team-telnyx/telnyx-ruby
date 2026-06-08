# typed: strong

module Telnyx
  module Models
    module MessagingTollfree
      module Verification
        class RequestRetrieveStatusHistoryParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::MessagingTollfree::Verification::RequestRetrieveStatusHistoryParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          # Page number to retrieve (1-based).
          sig { returns(Integer) }
          attr_accessor :page_number

          # Number of items to return per page.
          sig { returns(Integer) }
          attr_accessor :page_size

          sig do
            params(
              id: String,
              page_number: Integer,
              page_size: Integer,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            # Page number to retrieve (1-based).
            page_number:,
            # Number of items to return per page.
            page_size:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                id: String,
                page_number: Integer,
                page_size: Integer,
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
