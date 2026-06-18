# typed: strong

module Telnyx
  module Models
    class DirLoaParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(Telnyx::DirLoaParams, Telnyx::Internal::AnyHash) }

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
      sig { returns(T.nilable(Telnyx::DirLoaParams::Signature)) }
      attr_reader :signature

      sig { params(signature: Telnyx::DirLoaParams::Signature::OrHash).void }
      attr_writer :signature

      sig do
        params(
          dir_id: String,
          phone_numbers: T::Array[String],
          agent: Telnyx::Enterprises::Reputation::AgentInput::OrHash,
          signature: Telnyx::DirLoaParams::Signature::OrHash,
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
            signature: Telnyx::DirLoaParams::Signature,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Signature < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::DirLoaParams::Signature, Telnyx::Internal::AnyHash)
          end

        # PNG image, base64-encoded.
        sig { returns(String) }
        attr_accessor :image_base64

        # Optional. When absent the rendered PDF falls back to the enterprise contact's
        # legal name.
        sig { returns(T.nilable(String)) }
        attr_accessor :signer_name

        # Optional. When provided the rendered PDF embeds the signature image, printed
        # name, and signed-at date. When absent the PDF is returned unsigned so the
        # customer can sign externally and upload it via the Documents API.
        sig do
          params(image_base64: String, signer_name: T.nilable(String)).returns(
            T.attached_class
          )
        end
        def self.new(
          # PNG image, base64-encoded.
          image_base64:,
          # Optional. When absent the rendered PDF falls back to the enterprise contact's
          # legal name.
          signer_name: nil
        )
        end

        sig do
          override.returns(
            { image_base64: String, signer_name: T.nilable(String) }
          )
        end
        def to_hash
        end
      end
    end
  end
end
