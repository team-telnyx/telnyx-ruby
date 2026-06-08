# typed: strong

module Telnyx
  module Models
    class DirCreateLoaParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::DirCreateLoaParams, Telnyx::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :dir_id

      # Telephone numbers to authorize on the DIR, in `+E164` format (`+` followed by
      # 10-15 digits). Max 15 per request.
      sig { returns(T::Array[String]) }
      attr_accessor :phone_numbers

      # Third-party reseller / partner managing the enterprise's phone numbers. Omit
      # when the enterprise works directly with Telnyx.
      sig { returns(T.nilable(Telnyx::DirCreateLoaParams::Agent)) }
      attr_reader :agent

      sig { params(agent: Telnyx::DirCreateLoaParams::Agent::OrHash).void }
      attr_writer :agent

      # Optional. When provided the rendered PDF embeds the signature image, printed
      # name, and signed-at date. When absent the PDF is returned unsigned so the
      # customer can sign externally and upload it via the Documents API.
      sig { returns(T.nilable(Telnyx::DirCreateLoaParams::Signature)) }
      attr_reader :signature

      sig do
        params(signature: Telnyx::DirCreateLoaParams::Signature::OrHash).void
      end
      attr_writer :signature

      sig do
        params(
          dir_id: String,
          phone_numbers: T::Array[String],
          agent: Telnyx::DirCreateLoaParams::Agent::OrHash,
          signature: Telnyx::DirCreateLoaParams::Signature::OrHash,
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
            agent: Telnyx::DirCreateLoaParams::Agent,
            signature: Telnyx::DirCreateLoaParams::Signature,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Agent < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::DirCreateLoaParams::Agent, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :administrative_area

        sig { returns(String) }
        attr_accessor :city

        sig { returns(String) }
        attr_accessor :contact_email

        sig { returns(String) }
        attr_accessor :contact_name

        sig { returns(String) }
        attr_accessor :contact_phone

        sig { returns(String) }
        attr_accessor :contact_title

        sig { returns(String) }
        attr_accessor :country

        sig { returns(String) }
        attr_accessor :legal_name

        sig { returns(String) }
        attr_accessor :postal_code

        sig { returns(String) }
        attr_accessor :street_address

        sig { returns(T.nilable(String)) }
        attr_accessor :dba

        sig { returns(T.nilable(String)) }
        attr_accessor :extended_address

        # Third-party reseller / partner managing the enterprise's phone numbers. Omit
        # when the enterprise works directly with Telnyx.
        sig do
          params(
            administrative_area: String,
            city: String,
            contact_email: String,
            contact_name: String,
            contact_phone: String,
            contact_title: String,
            country: String,
            legal_name: String,
            postal_code: String,
            street_address: String,
            dba: T.nilable(String),
            extended_address: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          administrative_area:,
          city:,
          contact_email:,
          contact_name:,
          contact_phone:,
          contact_title:,
          country:,
          legal_name:,
          postal_code:,
          street_address:,
          dba: nil,
          extended_address: nil
        )
        end

        sig do
          override.returns(
            {
              administrative_area: String,
              city: String,
              contact_email: String,
              contact_name: String,
              contact_phone: String,
              contact_title: String,
              country: String,
              legal_name: String,
              postal_code: String,
              street_address: String,
              dba: T.nilable(String),
              extended_address: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end

      class Signature < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::DirCreateLoaParams::Signature,
              Telnyx::Internal::AnyHash
            )
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
