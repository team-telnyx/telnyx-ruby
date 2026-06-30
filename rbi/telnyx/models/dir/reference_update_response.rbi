# typed: strong

module Telnyx
  module Models
    module Dir
      class ReferenceUpdateResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Dir::ReferenceUpdateResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # A reference (business or financial) on a DIR, in the customer-facing shape. No
        # internal identifiers are exposed.
        sig { returns(Telnyx::Models::Dir::ReferenceUpdateResponse::Data) }
        attr_reader :data

        sig do
          params(
            data: Telnyx::Models::Dir::ReferenceUpdateResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data: Telnyx::Models::Dir::ReferenceUpdateResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # A reference (business or financial) on a DIR, in the customer-facing shape. No
          # internal identifiers are exposed.
          data:
        )
        end

        sig do
          override.returns(
            { data: Telnyx::Models::Dir::ReferenceUpdateResponse::Data }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Dir::ReferenceUpdateResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          # Full name of the reference contact.
          sig { returns(String) }
          attr_accessor :full_name

          # Reference phone number in E.164 format.
          sig { returns(String) }
          attr_accessor :phone_e164

          # Whether this is a business reference or the financial reference.
          sig do
            returns(
              Telnyx::Models::Dir::ReferenceUpdateResponse::Data::RefType::TaggedSymbol
            )
          end
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
          sig do
            returns(
              Telnyx::Models::Dir::ReferenceUpdateResponse::Data::RecordType::TaggedSymbol
            )
          end
          attr_accessor :record_type

          # A reference (business or financial) on a DIR, in the customer-facing shape. No
          # internal identifiers are exposed.
          sig do
            params(
              full_name: String,
              phone_e164: String,
              record_type:
                Telnyx::Models::Dir::ReferenceUpdateResponse::Data::RecordType::OrSymbol,
              ref_type:
                Telnyx::Models::Dir::ReferenceUpdateResponse::Data::RefType::OrSymbol,
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
                record_type:
                  Telnyx::Models::Dir::ReferenceUpdateResponse::Data::RecordType::TaggedSymbol,
                ref_type:
                  Telnyx::Models::Dir::ReferenceUpdateResponse::Data::RefType::TaggedSymbol,
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
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::Dir::ReferenceUpdateResponse::Data::RecordType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DIR_REFERENCE =
              T.let(
                :dir_reference,
                Telnyx::Models::Dir::ReferenceUpdateResponse::Data::RecordType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::Dir::ReferenceUpdateResponse::Data::RecordType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Whether this is a business reference or the financial reference.
          module RefType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::Dir::ReferenceUpdateResponse::Data::RefType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            BUSINESS =
              T.let(
                :business,
                Telnyx::Models::Dir::ReferenceUpdateResponse::Data::RefType::TaggedSymbol
              )
            FINANCIAL =
              T.let(
                :financial,
                Telnyx::Models::Dir::ReferenceUpdateResponse::Data::RefType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::Dir::ReferenceUpdateResponse::Data::RefType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
