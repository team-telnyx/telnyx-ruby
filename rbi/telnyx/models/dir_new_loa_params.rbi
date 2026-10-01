# typed: strong

module Telnyx
  module Models
    class DirNewLoaParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::DirNewLoaParams, Telnyx::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :dir_id

      # Telephone numbers to authorize on the DIR, in `+E164` format (`+` followed by
      # 10-15 digits). Max 15 per request.
      sig { returns(T::Array[String]) }
      attr_accessor :phone_numbers

      # Third-party reseller / partner managing the enterprise's phone numbers. Omit
      # when the enterprise works directly with Telnyx.
      sig { returns(T.nilable(Telnyx::Enterprises::Reputation::AgentInput)) }
      attr_reader :agent

      sig do
        params(agent: Telnyx::Enterprises::Reputation::AgentInput::OrHash).void
      end
      attr_writer :agent

      # Optional. When provided the rendered PDF embeds the signature image, printed
      # name, and signed-at date. When absent the PDF is returned unsigned so the
      # customer can sign externally and upload it via the Documents API.
      sig { returns(T.nilable(Telnyx::SignaturePayload)) }
      attr_reader :signature

      sig { params(signature: Telnyx::SignaturePayload::OrHash).void }
      attr_writer :signature

      sig do
        params(
          dir_id: String,
          phone_numbers: T::Array[String],
          agent: Telnyx::Enterprises::Reputation::AgentInput::OrHash,
          signature: Telnyx::SignaturePayload::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        dir_id:,
        # Telephone numbers to authorize on the DIR, in `+E164` format (`+` followed by
        # 10-15 digits). Max 15 per request.
        phone_numbers:,
        # Third-party reseller / partner managing the enterprise's phone numbers. Omit
        # when the enterprise works directly with Telnyx.
        agent: nil,
        # Optional. When provided the rendered PDF embeds the signature image, printed
        # name, and signed-at date. When absent the PDF is returned unsigned so the
        # customer can sign externally and upload it via the Documents API.
        signature: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            dir_id: String,
            phone_numbers: T::Array[String],
            agent: Telnyx::Enterprises::Reputation::AgentInput,
            signature: Telnyx::SignaturePayload,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
