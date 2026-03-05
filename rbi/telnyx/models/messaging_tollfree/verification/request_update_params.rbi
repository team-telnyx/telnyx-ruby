# typed: strong

module Telnyx
  module Models
    module MessagingTollfree
      module Verification
        class RequestUpdateParams < Telnyx::Models::MessagingTollfree::Verification::TfVerificationRequest
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::MessagingTollfree::Verification::RequestUpdateParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          sig do
            params(
              id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(id:, request_options: {})
          end

          sig do
            override.returns(
              { id: String, request_options: Telnyx::RequestOptions }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
