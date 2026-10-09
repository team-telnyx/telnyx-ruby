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

          # The state or province of the partner's address, as its code, for example IL or
          # ON.
          sig { returns(String) }
          attr_accessor :administrative_area

          # The city of the partner's address.
          sig { returns(String) }
          attr_accessor :city

          # The email address of the contact person at the partner.
          sig { returns(String) }
          attr_accessor :contact_email

          # The name of a contact person at the partner.
          sig { returns(String) }
          attr_accessor :contact_name

          # The phone number of the contact person at the partner, in E.164 format, for
          # example +13125550000.
          sig { returns(String) }
          attr_accessor :contact_phone

          # The job title of the contact person at the partner.
          sig { returns(String) }
          attr_accessor :contact_title

          # The two-letter country code of the partner's address, for example US.
          sig { returns(String) }
          attr_accessor :country

          # The legal name of the third-party partner or reseller managing these numbers on
          # your behalf.
          sig { returns(String) }
          attr_accessor :legal_name

          # The postal or ZIP code of the partner's address.
          sig { returns(String) }
          attr_accessor :postal_code

          # The street address of the partner, including the building number and street
          # name.
          sig { returns(String) }
          attr_accessor :street_address

          # The trade name (Doing Business As) the partner operates under, if different from
          # its legal name. Leave blank if it does not apply.
          sig { returns(T.nilable(String)) }
          attr_accessor :dba

          # An optional second address line for the partner, such as a suite, unit, or
          # floor. Leave blank if it does not apply.
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
            # The state or province of the partner's address, as its code, for example IL or
            # ON.
            administrative_area:,
            # The city of the partner's address.
            city:,
            # The email address of the contact person at the partner.
            contact_email:,
            # The name of a contact person at the partner.
            contact_name:,
            # The phone number of the contact person at the partner, in E.164 format, for
            # example +13125550000.
            contact_phone:,
            # The job title of the contact person at the partner.
            contact_title:,
            # The two-letter country code of the partner's address, for example US.
            country:,
            # The legal name of the third-party partner or reseller managing these numbers on
            # your behalf.
            legal_name:,
            # The postal or ZIP code of the partner's address.
            postal_code:,
            # The street address of the partner, including the building number and street
            # name.
            street_address:,
            # The trade name (Doing Business As) the partner operates under, if different from
            # its legal name. Leave blank if it does not apply.
            dba: nil,
            # An optional second address line for the partner, such as a suite, unit, or
            # floor. Leave blank if it does not apply.
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
