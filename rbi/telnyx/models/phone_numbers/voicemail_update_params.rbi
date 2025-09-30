# typed: strong

module Telnyx
  module Models
    module PhoneNumbers
      class VoicemailUpdateParams < Telnyx::Models::PhoneNumbers::VoicemailRequest
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::PhoneNumbers::VoicemailUpdateParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          params(request_options: Telnyx::RequestOptions::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(request_options: {})
        end

        sig { override.returns({ request_options: Telnyx::RequestOptions }) }
        def to_hash
        end
      end
    end
  end
end
