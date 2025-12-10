# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Requirements#list
    class RequirementListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::RequirementListResponse::Data>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::RequirementListResponse::Data] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::RequirementListResponse::Data>]
      #   @param meta [Telnyx::Models::PaginationMeta]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute action
        #   Indicates whether this requirement applies to branded_calling, ordering,
        #   porting, or both ordering and porting
        #
        #   @return [Symbol, Telnyx::Models::RequirementListResponse::Data::Action, nil]
        optional :action, enum: -> { Telnyx::Models::RequirementListResponse::Data::Action }

        # @!attribute country_code
        #   The 2-character (ISO 3166-1 alpha-2) country code where this requirement applies
        #
        #   @return [String, nil]
        optional :country_code, String

        # @!attribute locality
        #   The locality where this requirement applies
        #
        #   @return [String, nil]
        optional :locality, String

        # @!attribute phone_number_type
        #   Indicates the phone_number_type this requirement applies to. Leave blank if this
        #   requirement applies to all number_types.
        #
        #   @return [Symbol, Telnyx::Models::RequirementListResponse::Data::PhoneNumberType, nil]
        optional :phone_number_type, enum: -> { Telnyx::Models::RequirementListResponse::Data::PhoneNumberType }

        response_only do
          # @!attribute id
          #   Identifies the associated document
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute created_at
          #   ISO 8601 formatted date-time indicating when the resource was created.
          #
          #   @return [String, nil]
          optional :created_at, String

          # @!attribute record_type
          #   Identifies the type of the resource.
          #
          #   @return [String, nil]
          optional :record_type, String

          # @!attribute requirements_types
          #   Lists the requirement types necessary to fulfill this requirement
          #
          #   @return [Array<Telnyx::Models::DocReqsRequirementType>, nil]
          optional :requirements_types, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::DocReqsRequirementType] }

          # @!attribute updated_at
          #   ISO 8601 formatted date-time indicating when the resource was last updated.
          #
          #   @return [String, nil]
          optional :updated_at, String
        end

        # @!method initialize(id: nil, action: nil, country_code: nil, created_at: nil, locality: nil, phone_number_type: nil, record_type: nil, requirements_types: nil, updated_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::RequirementListResponse::Data} for more details.
        #
        #   @param id [String] Identifies the associated document
        #
        #   @param action [Symbol, Telnyx::Models::RequirementListResponse::Data::Action] Indicates whether this requirement applies to branded_calling, ordering, porting
        #
        #   @param country_code [String] The 2-character (ISO 3166-1 alpha-2) country code where this requirement applies
        #
        #   @param created_at [String] ISO 8601 formatted date-time indicating when the resource was created.
        #
        #   @param locality [String] The locality where this requirement applies
        #
        #   @param phone_number_type [Symbol, Telnyx::Models::RequirementListResponse::Data::PhoneNumberType] Indicates the phone_number_type this requirement applies to. Leave blank if this
        #
        #   @param record_type [String] Identifies the type of the resource.
        #
        #   @param requirements_types [Array<Telnyx::Models::DocReqsRequirementType>] Lists the requirement types necessary to fulfill this requirement
        #
        #   @param updated_at [String] ISO 8601 formatted date-time indicating when the resource was last updated.

        # Indicates whether this requirement applies to branded_calling, ordering,
        # porting, or both ordering and porting
        #
        # @see Telnyx::Models::RequirementListResponse::Data#action
        module Action
          extend Telnyx::Internal::Type::Enum

          BOTH = :both
          BRANDED_CALLING = :branded_calling
          ORDERING = :ordering
          PORTING = :porting

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Indicates the phone_number_type this requirement applies to. Leave blank if this
        # requirement applies to all number_types.
        #
        # @see Telnyx::Models::RequirementListResponse::Data#phone_number_type
        module PhoneNumberType
          extend Telnyx::Internal::Type::Enum

          LOCAL = :local
          NATIONAL = :national
          TOLL_FREE = :toll_free

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
