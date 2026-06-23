# typed: strong

module Telnyx
  module Models
    module Enterprises
      module Reputation
        class AgentInput < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Enterprises::Reputation::AgentInput,
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
      end
    end
  end
end
