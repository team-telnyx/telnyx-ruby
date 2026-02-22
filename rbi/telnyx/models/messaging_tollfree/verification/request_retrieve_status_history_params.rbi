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

          sig { returns(Integer) }
          attr_accessor :page_number

          # Request this many records per page. This value is automatically clamped if the
          # provided value is too large.
          sig { returns(Integer) }
          attr_accessor :page_size

          sig do
            params(
              page_number: Integer,
              page_size: Integer,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            page_number:,
            # Request this many records per page. This value is automatically clamped if the
            # provided value is too large.
            page_size:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
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
