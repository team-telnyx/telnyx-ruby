# typed: strong

module Telnyx
  module Models
    module Enterprises
      module Reputation
        class LoaRenderParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Enterprises::Reputation::LoaRenderParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :enterprise_id

          # Third-party reseller / partner managing the enterprise's phone numbers. Omit
          # when the enterprise works directly with Telnyx.
          sig do
            returns(
              T.nilable(Telnyx::Enterprises::Reputation::LoaRenderParams::Agent)
            )
          end
          attr_reader :agent

          sig do
            params(
              agent:
                Telnyx::Enterprises::Reputation::LoaRenderParams::Agent::OrHash
            ).void
          end
          attr_writer :agent

          # Optional signature embedded in the rendered PDF. When omitted the PDF is
          # returned unsigned for the customer to sign and upload.
          sig do
            returns(
              T.nilable(
                Telnyx::Enterprises::Reputation::LoaRenderParams::Signature
              )
            )
          end
          attr_reader :signature

          sig do
            params(
              signature:
                Telnyx::Enterprises::Reputation::LoaRenderParams::Signature::OrHash
            ).void
          end
          attr_writer :signature

          sig do
            params(
              enterprise_id: String,
              agent:
                Telnyx::Enterprises::Reputation::LoaRenderParams::Agent::OrHash,
              signature:
                Telnyx::Enterprises::Reputation::LoaRenderParams::Signature::OrHash,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            enterprise_id:,
            # Third-party reseller / partner managing the enterprise's phone numbers. Omit
            # when the enterprise works directly with Telnyx.
            agent: nil,
            # Optional signature embedded in the rendered PDF. When omitted the PDF is
            # returned unsigned for the customer to sign and upload.
            signature: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                enterprise_id: String,
                agent: Telnyx::Enterprises::Reputation::LoaRenderParams::Agent,
                signature:
                  Telnyx::Enterprises::Reputation::LoaRenderParams::Signature,
                request_options: Telnyx::RequestOptions
              }
            )
          end
          def to_hash
          end

          class Agent < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Enterprises::Reputation::LoaRenderParams::Agent,
                  Telnyx::Internal::AnyHash
                )
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
                  Telnyx::Enterprises::Reputation::LoaRenderParams::Signature,
                  Telnyx::Internal::AnyHash
                )
              end

            # Base64-encoded signature image.
            sig { returns(String) }
            attr_accessor :image_base64

            sig { returns(T.nilable(String)) }
            attr_accessor :signer_name

            # Optional signature embedded in the rendered PDF. When omitted the PDF is
            # returned unsigned for the customer to sign and upload.
            sig do
              params(
                image_base64: String,
                signer_name: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(
              # Base64-encoded signature image.
              image_base64:,
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
  end
end
