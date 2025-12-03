# typed: strong

module Telnyx
  module Models
    class BrandListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::Models::BrandListResponse, Telnyx::Internal::AnyHash)
        end

      # Number of campaigns associated with the brand
      sig { returns(T.nilable(Integer)) }
      attr_reader :assigned_campaings_count

      sig { params(assigned_campaings_count: Integer).void }
      attr_writer :assigned_campaings_count

      # Unique identifier assigned to the brand.
      sig { returns(T.nilable(String)) }
      attr_reader :brand_id

      sig { params(brand_id: String).void }
      attr_writer :brand_id

      # (Required for Non-profit/private/public) Legal company name.
      sig { returns(T.nilable(String)) }
      attr_reader :company_name

      sig { params(company_name: String).void }
      attr_writer :company_name

      # Date and time that the brand was created at.
      sig { returns(T.nilable(String)) }
      attr_reader :created_at

      sig { params(created_at: String).void }
      attr_writer :created_at

      # Display or marketing name of the brand.
      sig { returns(T.nilable(String)) }
      attr_reader :display_name

      sig { params(display_name: String).void }
      attr_writer :display_name

      # Valid email address of brand support contact.
      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { params(email: String).void }
      attr_writer :email

      # Entity type behind the brand. This is the form of business establishment.
      sig { returns(T.nilable(Telnyx::EntityType::TaggedSymbol)) }
      attr_reader :entity_type

      sig { params(entity_type: Telnyx::EntityType::OrSymbol).void }
      attr_writer :entity_type

      # Failure reasons for brand
      sig { returns(T.nilable(String)) }
      attr_reader :failure_reasons

      sig { params(failure_reasons: String).void }
      attr_writer :failure_reasons

      # The verification status of an active brand
      sig { returns(T.nilable(Telnyx::BrandIdentityStatus::TaggedSymbol)) }
      attr_reader :identity_status

      sig do
        params(identity_status: Telnyx::BrandIdentityStatus::OrSymbol).void
      end
      attr_writer :identity_status

      # Status of the brand
      sig do
        returns(
          T.nilable(Telnyx::Models::BrandListResponse::Status::TaggedSymbol)
        )
      end
      attr_reader :status

      sig do
        params(status: Telnyx::Models::BrandListResponse::Status::OrSymbol).void
      end
      attr_writer :status

      # Unique identifier assigned to the brand by the registry.
      sig { returns(T.nilable(String)) }
      attr_reader :tcr_brand_id

      sig { params(tcr_brand_id: String).void }
      attr_writer :tcr_brand_id

      # Date and time that the brand was last updated at.
      sig { returns(T.nilable(String)) }
      attr_reader :updated_at

      sig { params(updated_at: String).void }
      attr_writer :updated_at

      # Brand website URL.
      sig { returns(T.nilable(String)) }
      attr_reader :website

      sig { params(website: String).void }
      attr_writer :website

      sig do
        params(
          assigned_campaings_count: Integer,
          brand_id: String,
          company_name: String,
          created_at: String,
          display_name: String,
          email: String,
          entity_type: Telnyx::EntityType::OrSymbol,
          failure_reasons: String,
          identity_status: Telnyx::BrandIdentityStatus::OrSymbol,
          status: Telnyx::Models::BrandListResponse::Status::OrSymbol,
          tcr_brand_id: String,
          updated_at: String,
          website: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Number of campaigns associated with the brand
        assigned_campaings_count: nil,
        # Unique identifier assigned to the brand.
        brand_id: nil,
        # (Required for Non-profit/private/public) Legal company name.
        company_name: nil,
        # Date and time that the brand was created at.
        created_at: nil,
        # Display or marketing name of the brand.
        display_name: nil,
        # Valid email address of brand support contact.
        email: nil,
        # Entity type behind the brand. This is the form of business establishment.
        entity_type: nil,
        # Failure reasons for brand
        failure_reasons: nil,
        # The verification status of an active brand
        identity_status: nil,
        # Status of the brand
        status: nil,
        # Unique identifier assigned to the brand by the registry.
        tcr_brand_id: nil,
        # Date and time that the brand was last updated at.
        updated_at: nil,
        # Brand website URL.
        website: nil
      )
      end

      sig do
        override.returns(
          {
            assigned_campaings_count: Integer,
            brand_id: String,
            company_name: String,
            created_at: String,
            display_name: String,
            email: String,
            entity_type: Telnyx::EntityType::TaggedSymbol,
            failure_reasons: String,
            identity_status: Telnyx::BrandIdentityStatus::TaggedSymbol,
            status: Telnyx::Models::BrandListResponse::Status::TaggedSymbol,
            tcr_brand_id: String,
            updated_at: String,
            website: String
          }
        )
      end
      def to_hash
      end

      # Status of the brand
      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::Models::BrandListResponse::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        OK = T.let(:OK, Telnyx::Models::BrandListResponse::Status::TaggedSymbol)
        REGISTRATION_PENDING =
          T.let(
            :REGISTRATION_PENDING,
            Telnyx::Models::BrandListResponse::Status::TaggedSymbol
          )
        REGISTRATION_FAILED =
          T.let(
            :REGISTRATION_FAILED,
            Telnyx::Models::BrandListResponse::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::Models::BrandListResponse::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
