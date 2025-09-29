# typed: strong

module Telnyx
  module Models
    module SimCards
      class ActionSetPublicIPParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::SimCards::ActionSetPublicIPParams,
              Telnyx::Internal::AnyHash
            )
          end

        # The code of the region where the public IP should be assigned. A list of
        # available regions can be found at the regions endpoint
        sig { returns(T.nilable(String)) }
        attr_reader :region_code

        sig { params(region_code: String).void }
        attr_writer :region_code

        sig do
          params(
            region_code: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # The code of the region where the public IP should be assigned. A list of
          # available regions can be found at the regions endpoint
          region_code: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            { region_code: String, request_options: Telnyx::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
