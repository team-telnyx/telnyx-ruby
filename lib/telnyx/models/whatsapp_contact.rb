# frozen_string_literal: true

module Telnyx
  module Models
    class WhatsappContact < Telnyx::Internal::Type::BaseModel
      # @!attribute addresses
      #
      #   @return [Array<Telnyx::Models::WhatsappContact::Address>, nil]
      optional :addresses, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::WhatsappContact::Address] }

      # @!attribute birthday
      #
      #   @return [String, nil]
      optional :birthday, String

      # @!attribute emails
      #
      #   @return [Array<Telnyx::Models::WhatsappContact::Email>, nil]
      optional :emails, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::WhatsappContact::Email] }

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute org
      #
      #   @return [Telnyx::Models::WhatsappContact::Org, nil]
      optional :org, -> { Telnyx::WhatsappContact::Org }

      # @!attribute phones
      #
      #   @return [Array<Telnyx::Models::WhatsappContact::Phone>, nil]
      optional :phones, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::WhatsappContact::Phone] }

      # @!attribute urls
      #
      #   @return [Array<Telnyx::Models::WhatsappContact::URL>, nil]
      optional :urls, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::WhatsappContact::URL] }

      # @!method initialize(addresses: nil, birthday: nil, emails: nil, name: nil, org: nil, phones: nil, urls: nil)
      #   @param addresses [Array<Telnyx::Models::WhatsappContact::Address>]
      #   @param birthday [String]
      #   @param emails [Array<Telnyx::Models::WhatsappContact::Email>]
      #   @param name [String]
      #   @param org [Telnyx::Models::WhatsappContact::Org]
      #   @param phones [Array<Telnyx::Models::WhatsappContact::Phone>]
      #   @param urls [Array<Telnyx::Models::WhatsappContact::URL>]

      class Address < Telnyx::Internal::Type::BaseModel
        # @!attribute city
        #
        #   @return [String, nil]
        optional :city, String

        # @!attribute country
        #
        #   @return [String, nil]
        optional :country, String

        # @!attribute country_code
        #
        #   @return [String, nil]
        optional :country_code, String

        # @!attribute state
        #
        #   @return [String, nil]
        optional :state, String

        # @!attribute street
        #
        #   @return [String, nil]
        optional :street, String

        # @!attribute type
        #
        #   @return [String, nil]
        optional :type, String

        # @!attribute zip
        #
        #   @return [String, nil]
        optional :zip, String

        # @!method initialize(city: nil, country: nil, country_code: nil, state: nil, street: nil, type: nil, zip: nil)
        #   @param city [String]
        #   @param country [String]
        #   @param country_code [String]
        #   @param state [String]
        #   @param street [String]
        #   @param type [String]
        #   @param zip [String]
      end

      class Email < Telnyx::Internal::Type::BaseModel
        # @!attribute email
        #
        #   @return [String, nil]
        optional :email, String

        # @!attribute type
        #
        #   @return [String, nil]
        optional :type, String

        # @!method initialize(email: nil, type: nil)
        #   @param email [String]
        #   @param type [String]
      end

      # @see Telnyx::Models::WhatsappContact#org
      class Org < Telnyx::Internal::Type::BaseModel
        # @!attribute company
        #
        #   @return [String, nil]
        optional :company, String

        # @!attribute department
        #
        #   @return [String, nil]
        optional :department, String

        # @!attribute title
        #
        #   @return [String, nil]
        optional :title, String

        # @!method initialize(company: nil, department: nil, title: nil)
        #   @param company [String]
        #   @param department [String]
        #   @param title [String]
      end

      class Phone < Telnyx::Internal::Type::BaseModel
        # @!attribute phone
        #
        #   @return [String, nil]
        optional :phone, String

        # @!attribute type
        #
        #   @return [String, nil]
        optional :type, String

        # @!attribute wa_id
        #
        #   @return [String, nil]
        optional :wa_id, String

        # @!method initialize(phone: nil, type: nil, wa_id: nil)
        #   @param phone [String]
        #   @param type [String]
        #   @param wa_id [String]
      end

      class URL < Telnyx::Internal::Type::BaseModel
        # @!attribute type
        #
        #   @return [String, nil]
        optional :type, String

        # @!attribute url
        #
        #   @return [String, nil]
        optional :url, String

        # @!method initialize(type: nil, url: nil)
        #   @param type [String]
        #   @param url [String]
      end
    end
  end
end
