# typed: strong

module Telnyx
  module Models
    class WhatsappContact < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::WhatsappContact, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(T::Array[Telnyx::WhatsappContact::Address])) }
      attr_reader :addresses

      sig do
        params(
          addresses: T::Array[Telnyx::WhatsappContact::Address::OrHash]
        ).void
      end
      attr_writer :addresses

      sig { returns(T.nilable(String)) }
      attr_reader :birthday

      sig { params(birthday: String).void }
      attr_writer :birthday

      sig { returns(T.nilable(T::Array[Telnyx::WhatsappContact::Email])) }
      attr_reader :emails

      sig do
        params(emails: T::Array[Telnyx::WhatsappContact::Email::OrHash]).void
      end
      attr_writer :emails

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig { returns(T.nilable(Telnyx::WhatsappContact::Org)) }
      attr_reader :org

      sig { params(org: Telnyx::WhatsappContact::Org::OrHash).void }
      attr_writer :org

      sig { returns(T.nilable(T::Array[Telnyx::WhatsappContact::Phone])) }
      attr_reader :phones

      sig do
        params(phones: T::Array[Telnyx::WhatsappContact::Phone::OrHash]).void
      end
      attr_writer :phones

      sig { returns(T.nilable(T::Array[Telnyx::WhatsappContact::URL])) }
      attr_reader :urls

      sig { params(urls: T::Array[Telnyx::WhatsappContact::URL::OrHash]).void }
      attr_writer :urls

      sig do
        params(
          addresses: T::Array[Telnyx::WhatsappContact::Address::OrHash],
          birthday: String,
          emails: T::Array[Telnyx::WhatsappContact::Email::OrHash],
          name: String,
          org: Telnyx::WhatsappContact::Org::OrHash,
          phones: T::Array[Telnyx::WhatsappContact::Phone::OrHash],
          urls: T::Array[Telnyx::WhatsappContact::URL::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        addresses: nil,
        birthday: nil,
        emails: nil,
        name: nil,
        org: nil,
        phones: nil,
        urls: nil
      )
      end

      sig do
        override.returns(
          {
            addresses: T::Array[Telnyx::WhatsappContact::Address],
            birthday: String,
            emails: T::Array[Telnyx::WhatsappContact::Email],
            name: String,
            org: Telnyx::WhatsappContact::Org,
            phones: T::Array[Telnyx::WhatsappContact::Phone],
            urls: T::Array[Telnyx::WhatsappContact::URL]
          }
        )
      end
      def to_hash
      end

      class Address < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::WhatsappContact::Address, Telnyx::Internal::AnyHash)
          end

        sig { returns(T.nilable(String)) }
        attr_reader :city

        sig { params(city: String).void }
        attr_writer :city

        sig { returns(T.nilable(String)) }
        attr_reader :country

        sig { params(country: String).void }
        attr_writer :country

        sig { returns(T.nilable(String)) }
        attr_reader :country_code

        sig { params(country_code: String).void }
        attr_writer :country_code

        sig { returns(T.nilable(String)) }
        attr_reader :state

        sig { params(state: String).void }
        attr_writer :state

        sig { returns(T.nilable(String)) }
        attr_reader :street

        sig { params(street: String).void }
        attr_writer :street

        sig { returns(T.nilable(String)) }
        attr_reader :type

        sig { params(type: String).void }
        attr_writer :type

        sig { returns(T.nilable(String)) }
        attr_reader :zip

        sig { params(zip: String).void }
        attr_writer :zip

        sig do
          params(
            city: String,
            country: String,
            country_code: String,
            state: String,
            street: String,
            type: String,
            zip: String
          ).returns(T.attached_class)
        end
        def self.new(
          city: nil,
          country: nil,
          country_code: nil,
          state: nil,
          street: nil,
          type: nil,
          zip: nil
        )
        end

        sig do
          override.returns(
            {
              city: String,
              country: String,
              country_code: String,
              state: String,
              street: String,
              type: String,
              zip: String
            }
          )
        end
        def to_hash
        end
      end

      class Email < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::WhatsappContact::Email, Telnyx::Internal::AnyHash)
          end

        sig { returns(T.nilable(String)) }
        attr_reader :email

        sig { params(email: String).void }
        attr_writer :email

        sig { returns(T.nilable(String)) }
        attr_reader :type

        sig { params(type: String).void }
        attr_writer :type

        sig { params(email: String, type: String).returns(T.attached_class) }
        def self.new(email: nil, type: nil)
        end

        sig { override.returns({ email: String, type: String }) }
        def to_hash
        end
      end

      class Org < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::WhatsappContact::Org, Telnyx::Internal::AnyHash)
          end

        sig { returns(T.nilable(String)) }
        attr_reader :company

        sig { params(company: String).void }
        attr_writer :company

        sig { returns(T.nilable(String)) }
        attr_reader :department

        sig { params(department: String).void }
        attr_writer :department

        sig { returns(T.nilable(String)) }
        attr_reader :title

        sig { params(title: String).void }
        attr_writer :title

        sig do
          params(company: String, department: String, title: String).returns(
            T.attached_class
          )
        end
        def self.new(company: nil, department: nil, title: nil)
        end

        sig do
          override.returns(
            { company: String, department: String, title: String }
          )
        end
        def to_hash
        end
      end

      class Phone < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::WhatsappContact::Phone, Telnyx::Internal::AnyHash)
          end

        sig { returns(T.nilable(String)) }
        attr_reader :phone

        sig { params(phone: String).void }
        attr_writer :phone

        sig { returns(T.nilable(String)) }
        attr_reader :type

        sig { params(type: String).void }
        attr_writer :type

        sig { returns(T.nilable(String)) }
        attr_reader :wa_id

        sig { params(wa_id: String).void }
        attr_writer :wa_id

        sig do
          params(phone: String, type: String, wa_id: String).returns(
            T.attached_class
          )
        end
        def self.new(phone: nil, type: nil, wa_id: nil)
        end

        sig { override.returns({ phone: String, type: String, wa_id: String }) }
        def to_hash
        end
      end

      class URL < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::WhatsappContact::URL, Telnyx::Internal::AnyHash)
          end

        sig { returns(T.nilable(String)) }
        attr_reader :type

        sig { params(type: String).void }
        attr_writer :type

        sig { returns(T.nilable(String)) }
        attr_reader :url

        sig { params(url: String).void }
        attr_writer :url

        sig { params(type: String, url: String).returns(T.attached_class) }
        def self.new(type: nil, url: nil)
        end

        sig { override.returns({ type: String, url: String }) }
        def to_hash
        end
      end
    end
  end
end
