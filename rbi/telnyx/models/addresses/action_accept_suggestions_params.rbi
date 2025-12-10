# typed: strong

module Telnyx
  module Models
    module Addresses
      class ActionAcceptSuggestionsParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Addresses::ActionAcceptSuggestionsParams,
              Telnyx::Internal::AnyHash
            )
          end

        # The ID of the address.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID of the address.
          id: nil,
          request_options: {}
        )
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
