# frozen_string_literal: true

module Telnyx
  module Models
    module Dir
      # @see Telnyx::Resources::Dir::References#list
      class ReferenceListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::Dir::ReferenceListResponse::Data>]
        required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Dir::ReferenceListResponse::Data] }

        # @!method initialize(data:)
        #   @param data [Array<Telnyx::Models::Dir::ReferenceListResponse::Data>]

        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute full_name
          #   Full name of the reference contact.
          #
          #   @return [String]
          required :full_name, String

          # @!attribute phone_e164
          #   Reference phone number in E.164 format.
          #
          #   @return [String]
          required :phone_e164, String

          # @!attribute ref_type
          #   Whether this is a business reference or the financial reference.
          #
          #   @return [Symbol, Telnyx::Models::Dir::ReferenceListResponse::Data::RefType]
          required :ref_type, enum: -> { Telnyx::Models::Dir::ReferenceListResponse::Data::RefType }

          # @!attribute slot
          #   Position within the reference type. Business references occupy slots 0 and 1;
          #   the financial reference occupies slot 0.
          #
          #   @return [Integer]
          required :slot, Integer

          # @!attribute timezone
          #   IANA timezone id for the reference. Calls are only placed within the reference's
          #   local 8am-9pm window.
          #
          #   @return [String]
          required :timezone, String

          # @!attribute email
          #   Reference contact email address.
          #
          #   @return [String, nil]
          optional :email, String, nil?: true

          # @!attribute job_title
          #   Job title of the reference contact.
          #
          #   @return [String, nil]
          optional :job_title, String, nil?: true

          # @!attribute organization
          #   Organization the reference contact belongs to.
          #
          #   @return [String, nil]
          optional :organization, String, nil?: true

          # @!attribute relationship_to_registrant
          #   How the reference contact is related to the registering business.
          #
          #   @return [String, nil]
          optional :relationship_to_registrant, String, nil?: true

          response_only do
            # @!attribute record_type
            #   Always `dir_reference`.
            #
            #   @return [Symbol, Telnyx::Models::Dir::ReferenceListResponse::Data::RecordType]
            required :record_type, enum: -> { Telnyx::Models::Dir::ReferenceListResponse::Data::RecordType }
          end

          # @!method initialize(full_name:, phone_e164:, record_type:, ref_type:, slot:, timezone:, email: nil, job_title: nil, organization: nil, relationship_to_registrant: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Dir::ReferenceListResponse::Data} for more details.
          #
          #   A reference (business or financial) on a DIR, in the customer-facing shape. No
          #   internal identifiers are exposed.
          #
          #   @param full_name [String] Full name of the reference contact.
          #
          #   @param phone_e164 [String] Reference phone number in E.164 format.
          #
          #   @param record_type [Symbol, Telnyx::Models::Dir::ReferenceListResponse::Data::RecordType] Always `dir_reference`.
          #
          #   @param ref_type [Symbol, Telnyx::Models::Dir::ReferenceListResponse::Data::RefType] Whether this is a business reference or the financial reference.
          #
          #   @param slot [Integer] Position within the reference type. Business references occupy slots 0 and 1; th
          #
          #   @param timezone [String] IANA timezone id for the reference. Calls are only placed within the reference's
          #
          #   @param email [String, nil] Reference contact email address.
          #
          #   @param job_title [String, nil] Job title of the reference contact.
          #
          #   @param organization [String, nil] Organization the reference contact belongs to.
          #
          #   @param relationship_to_registrant [String, nil] How the reference contact is related to the registering business.

          # Always `dir_reference`.
          #
          # @see Telnyx::Models::Dir::ReferenceListResponse::Data#record_type
          module RecordType
            extend Telnyx::Internal::Type::Enum

            DIR_REFERENCE = :dir_reference

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Whether this is a business reference or the financial reference.
          #
          # @see Telnyx::Models::Dir::ReferenceListResponse::Data#ref_type
          module RefType
            extend Telnyx::Internal::Type::Enum

            BUSINESS = :business
            FINANCIAL = :financial

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
