# typed: strong

module Telnyx
  module Models
    class DocReqsRequirement < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::DocReqsRequirement, Telnyx::Internal::AnyHash)
        end

      # Indicates whether this requirement applies to branded_calling, ordering,
      # porting, or both ordering and porting
      sig do
        returns(T.nilable(Telnyx::DocReqsRequirement::Action::TaggedSymbol))
      end
      attr_reader :action

      sig { params(action: Telnyx::DocReqsRequirement::Action::OrSymbol).void }
      attr_writer :action

      # The 2-character (ISO 3166-1 alpha-2) country code where this requirement applies
      sig { returns(T.nilable(String)) }
      attr_reader :country_code

      sig { params(country_code: String).void }
      attr_writer :country_code

      # The locality where this requirement applies
      sig { returns(T.nilable(String)) }
      attr_reader :locality

      sig { params(locality: String).void }
      attr_writer :locality

      # Indicates the phone_number_type this requirement applies to. Leave blank if this
      # requirement applies to all number_types.
      sig do
        returns(
          T.nilable(Telnyx::DocReqsRequirement::PhoneNumberType::TaggedSymbol)
        )
      end
      attr_reader :phone_number_type

      sig do
        params(
          phone_number_type:
            Telnyx::DocReqsRequirement::PhoneNumberType::OrSymbol
        ).void
      end
      attr_writer :phone_number_type

      # Identifies the associated document
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # ISO 8601 formatted date-time indicating when the resource was created.
      sig { returns(T.nilable(String)) }
      attr_reader :created_at

      sig { params(created_at: String).void }
      attr_writer :created_at

      # Identifies the type of the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      # Lists the requirement types necessary to fulfill this requirement
      sig { returns(T.nilable(T::Array[Telnyx::DocReqsRequirementType])) }
      attr_reader :requirements_types

      sig do
        params(
          requirements_types: T::Array[Telnyx::DocReqsRequirementType::OrHash]
        ).void
      end
      attr_writer :requirements_types

      # ISO 8601 formatted date-time indicating when the resource was last updated.
      sig { returns(T.nilable(String)) }
      attr_reader :updated_at

      sig { params(updated_at: String).void }
      attr_writer :updated_at

      sig do
        params(
          id: String,
          action: Telnyx::DocReqsRequirement::Action::OrSymbol,
          country_code: String,
          created_at: String,
          locality: String,
          phone_number_type:
            Telnyx::DocReqsRequirement::PhoneNumberType::OrSymbol,
          record_type: String,
          requirements_types: T::Array[Telnyx::DocReqsRequirementType::OrHash],
          updated_at: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifies the associated document
        id: nil,
        # Indicates whether this requirement applies to branded_calling, ordering,
        # porting, or both ordering and porting
        action: nil,
        # The 2-character (ISO 3166-1 alpha-2) country code where this requirement applies
        country_code: nil,
        # ISO 8601 formatted date-time indicating when the resource was created.
        created_at: nil,
        # The locality where this requirement applies
        locality: nil,
        # Indicates the phone_number_type this requirement applies to. Leave blank if this
        # requirement applies to all number_types.
        phone_number_type: nil,
        # Identifies the type of the resource.
        record_type: nil,
        # Lists the requirement types necessary to fulfill this requirement
        requirements_types: nil,
        # ISO 8601 formatted date-time indicating when the resource was last updated.
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            action: Telnyx::DocReqsRequirement::Action::TaggedSymbol,
            country_code: String,
            created_at: String,
            locality: String,
            phone_number_type:
              Telnyx::DocReqsRequirement::PhoneNumberType::TaggedSymbol,
            record_type: String,
            requirements_types: T::Array[Telnyx::DocReqsRequirementType],
            updated_at: String
          }
        )
      end
      def to_hash
      end

      # Indicates whether this requirement applies to branded_calling, ordering,
      # porting, or both ordering and porting
      module Action
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::DocReqsRequirement::Action) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BOTH = T.let(:both, Telnyx::DocReqsRequirement::Action::TaggedSymbol)
        BRANDED_CALLING =
          T.let(
            :branded_calling,
            Telnyx::DocReqsRequirement::Action::TaggedSymbol
          )
        ORDERING =
          T.let(:ordering, Telnyx::DocReqsRequirement::Action::TaggedSymbol)
        PORTING =
          T.let(:porting, Telnyx::DocReqsRequirement::Action::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::DocReqsRequirement::Action::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Indicates the phone_number_type this requirement applies to. Leave blank if this
      # requirement applies to all number_types.
      module PhoneNumberType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::DocReqsRequirement::PhoneNumberType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LOCAL =
          T.let(
            :local,
            Telnyx::DocReqsRequirement::PhoneNumberType::TaggedSymbol
          )
        NATIONAL =
          T.let(
            :national,
            Telnyx::DocReqsRequirement::PhoneNumberType::TaggedSymbol
          )
        TOLL_FREE =
          T.let(
            :toll_free,
            Telnyx::DocReqsRequirement::PhoneNumberType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::DocReqsRequirement::PhoneNumberType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
