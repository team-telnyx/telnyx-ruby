# typed: strong

module Telnyx
  module Models
    module MessagingHostedNumberOrders
      class ActionUploadFileParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::MessagingHostedNumberOrders::ActionUploadFileParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Must be the last month's bill with proof of ownership of all of the numbers in
        # the order in PDF format.
        sig { returns(T.nilable(Telnyx::Internal::FileInput)) }
        attr_reader :bill

        sig { params(bill: Telnyx::Internal::FileInput).void }
        attr_writer :bill

        # Must be a signed LOA for the numbers in the order in PDF format.
        sig { returns(T.nilable(Telnyx::Internal::FileInput)) }
        attr_reader :loa

        sig { params(loa: Telnyx::Internal::FileInput).void }
        attr_writer :loa

        sig do
          params(
            bill: Telnyx::Internal::FileInput,
            loa: Telnyx::Internal::FileInput,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Must be the last month's bill with proof of ownership of all of the numbers in
          # the order in PDF format.
          bill: nil,
          # Must be a signed LOA for the numbers in the order in PDF format.
          loa: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              bill: Telnyx::Internal::FileInput,
              loa: Telnyx::Internal::FileInput,
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
