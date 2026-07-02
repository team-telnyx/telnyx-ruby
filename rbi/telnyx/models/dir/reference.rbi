# typed: strong

module Telnyx
  module Models
    module Dir
      class Reference < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::Dir::Reference, Telnyx::Internal::AnyHash)
          end

        # Full name of the reference contact.
        sig { returns(String) }
        attr_accessor :full_name

        # Reference phone number in E.164 format.
        sig { returns(String) }
        attr_accessor :phone_e164

        # Whether this is a business reference or the financial reference.
        sig { returns(Telnyx::Dir::Reference::RefType::TaggedSymbol) }
        attr_accessor :ref_type

        # Position within the reference type. Business references occupy slots 0 and 1;
        # the financial reference occupies slot 0.
        sig { returns(Integer) }
        attr_accessor :slot

        # IANA timezone id for the reference. Calls are only placed within the reference's
        # local 8am-9pm window.
        sig { returns(String) }
        attr_accessor :timezone

        # Reference contact email address.
        sig { returns(T.nilable(String)) }
        attr_accessor :email

        # Job title of the reference contact.
        sig { returns(T.nilable(String)) }
        attr_accessor :job_title

        # Organization the reference contact belongs to.
        sig { returns(T.nilable(String)) }
        attr_accessor :organization

        # How the reference contact is related to the registering business.
        sig { returns(T.nilable(String)) }
        attr_accessor :relationship_to_registrant

        # Always `dir_reference`.
        sig { returns(Telnyx::Dir::Reference::RecordType::TaggedSymbol) }
        attr_accessor :record_type

        # A reference (business or financial) on a DIR, in the customer-facing shape. No
        # internal identifiers are exposed.
        sig do
          params(
            full_name: String,
            phone_e164: String,
            record_type: Telnyx::Dir::Reference::RecordType::OrSymbol,
            ref_type: Telnyx::Dir::Reference::RefType::OrSymbol,
            slot: Integer,
            timezone: String,
            email: T.nilable(String),
            job_title: T.nilable(String),
            organization: T.nilable(String),
            relationship_to_registrant: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # Full name of the reference contact.
          full_name:,
          # Reference phone number in E.164 format.
          phone_e164:,
          # Always `dir_reference`.
          record_type:,
          # Whether this is a business reference or the financial reference.
          ref_type:,
          # Position within the reference type. Business references occupy slots 0 and 1;
          # the financial reference occupies slot 0.
          slot:,
          # IANA timezone id for the reference. Calls are only placed within the reference's
          # local 8am-9pm window.
          timezone:,
          # Reference contact email address.
          email: nil,
          # Job title of the reference contact.
          job_title: nil,
          # Organization the reference contact belongs to.
          organization: nil,
          # How the reference contact is related to the registering business.
          relationship_to_registrant: nil
        )
        end

        sig do
          override.returns(
            {
              full_name: String,
              phone_e164: String,
              record_type: Telnyx::Dir::Reference::RecordType::TaggedSymbol,
              ref_type: Telnyx::Dir::Reference::RefType::TaggedSymbol,
              slot: Integer,
              timezone: String,
              email: T.nilable(String),
              job_title: T.nilable(String),
              organization: T.nilable(String),
              relationship_to_registrant: T.nilable(String)
            }
          )
        end
        def to_hash
        end

        # Always `dir_reference`.
        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Telnyx::Dir::Reference::RecordType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DIR_REFERENCE =
            T.let(
              :dir_reference,
              Telnyx::Dir::Reference::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::Dir::Reference::RecordType::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # Whether this is a business reference or the financial reference.
        module RefType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Telnyx::Dir::Reference::RefType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BUSINESS =
            T.let(:business, Telnyx::Dir::Reference::RefType::TaggedSymbol)
          FINANCIAL =
            T.let(:financial, Telnyx::Dir::Reference::RefType::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::Dir::Reference::RefType::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
