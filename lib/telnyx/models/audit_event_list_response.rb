# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AuditEvents#list
    class AuditEventListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::AuditEventListResponse::Data>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AuditEventListResponse::Data] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::AuditEventListResponse::Meta, nil]
      optional :meta, -> { Telnyx::Models::AuditEventListResponse::Meta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::AuditEventListResponse::Data>]
      #   @param meta [Telnyx::Models::AuditEventListResponse::Meta]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the audit log entry.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute alternate_resource_id
        #   An alternate identifier for a resource which may be considered unique enough to
        #   identify the resource but is not the primary identifier for the resource. For
        #   example, this field could be used to store the phone number value for a phone
        #   number when the primary database identifier is a separate distinct value.
        #
        #   @return [String, nil]
        optional :alternate_resource_id, String, nil?: true

        # @!attribute change_made_by
        #   Indicates if the change was made by Telnyx on your behalf, the organization
        #   owner, a member of your organization, or in the case of managed accounts, the
        #   account manager.
        #
        #   @return [Symbol, Telnyx::Models::AuditEventListResponse::Data::ChangeMadeBy, nil]
        optional :change_made_by, enum: -> { Telnyx::Models::AuditEventListResponse::Data::ChangeMadeBy }

        # @!attribute change_type
        #   The type of change that occurred.
        #
        #   @return [String, nil]
        optional :change_type, String

        # @!attribute changes
        #   Details of the changes made to the resource.
        #
        #   @return [Array<Telnyx::Models::AuditEventListResponse::Data::Change>, nil]
        optional :changes,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::AuditEventListResponse::Data::Change] },
                 nil?: true

        # @!attribute created_at
        #   ISO 8601 formatted date indicating when the change occurred.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute organization_id
        #   Unique identifier for the organization that owns the resource.
        #
        #   @return [String, nil]
        optional :organization_id, String

        # @!attribute record_type
        #   The type of the resource being audited.
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute resource_id
        #   Unique identifier for the resource that was changed.
        #
        #   @return [String, nil]
        optional :resource_id, String

        # @!attribute user_id
        #   Unique identifier for the user who made the change.
        #
        #   @return [String, nil]
        optional :user_id, String

        # @!method initialize(id: nil, alternate_resource_id: nil, change_made_by: nil, change_type: nil, changes: nil, created_at: nil, organization_id: nil, record_type: nil, resource_id: nil, user_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AuditEventListResponse::Data} for more details.
        #
        #   @param id [String] Unique identifier for the audit log entry.
        #
        #   @param alternate_resource_id [String, nil] An alternate identifier for a resource which may be considered unique enough to
        #
        #   @param change_made_by [Symbol, Telnyx::Models::AuditEventListResponse::Data::ChangeMadeBy] Indicates if the change was made by Telnyx on your behalf, the organization owne
        #
        #   @param change_type [String] The type of change that occurred.
        #
        #   @param changes [Array<Telnyx::Models::AuditEventListResponse::Data::Change>, nil] Details of the changes made to the resource.
        #
        #   @param created_at [Time] ISO 8601 formatted date indicating when the change occurred.
        #
        #   @param organization_id [String] Unique identifier for the organization that owns the resource.
        #
        #   @param record_type [String] The type of the resource being audited.
        #
        #   @param resource_id [String] Unique identifier for the resource that was changed.
        #
        #   @param user_id [String] Unique identifier for the user who made the change.

        # Indicates if the change was made by Telnyx on your behalf, the organization
        # owner, a member of your organization, or in the case of managed accounts, the
        # account manager.
        #
        # @see Telnyx::Models::AuditEventListResponse::Data#change_made_by
        module ChangeMadeBy
          extend Telnyx::Internal::Type::Enum

          TELNYX = :telnyx
          ACCOUNT_MANAGER = :account_manager
          ACCOUNT_OWNER = :account_owner
          ORGANIZATION_MEMBER = :organization_member

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class Change < Telnyx::Internal::Type::BaseModel
          # @!attribute field
          #   The name of the field that was changed. May use the dot notation to indicate
          #   nested fields.
          #
          #   @return [String, nil]
          optional :field, String

          # @!attribute from
          #   The previous value of the field. Can be any JSON type.
          #
          #   @return [String, Float, Boolean, Hash{Symbol=>Object}, Array<Object>, nil]
          optional :from, union: -> { Telnyx::Models::AuditEventListResponse::Data::Change::From }, nil?: true

          # @!attribute to
          #   The new value of the field. Can be any JSON type.
          #
          #   @return [String, Float, Boolean, Hash{Symbol=>Object}, Array<Object>, nil]
          optional :to, union: -> { Telnyx::Models::AuditEventListResponse::Data::Change::To }, nil?: true

          # @!method initialize(field: nil, from: nil, to: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AuditEventListResponse::Data::Change} for more details.
          #
          #   Details of the changes made to a resource.
          #
          #   @param field [String] The name of the field that was changed. May use the dot notation to indicate nes
          #
          #   @param from [String, Float, Boolean, Hash{Symbol=>Object}, Array<Object>, nil] The previous value of the field. Can be any JSON type.
          #
          #   @param to [String, Float, Boolean, Hash{Symbol=>Object}, Array<Object>, nil] The new value of the field. Can be any JSON type.

          # The previous value of the field. Can be any JSON type.
          #
          # @see Telnyx::Models::AuditEventListResponse::Data::Change#from
          module From
            extend Telnyx::Internal::Type::Union

            variant String

            variant Float

            variant Telnyx::Internal::Type::Boolean

            variant -> { Telnyx::Models::AuditEventListResponse::Data::Change::From::UnionMember3Map }

            variant -> { Telnyx::Models::AuditEventListResponse::Data::Change::From::UnionMember4Array }

            # @!method self.variants
            #   @return [Array(String, Float, Boolean, Hash{Symbol=>Object}, Array<Object>)]

            # @type [Telnyx::Internal::Type::Converter]
            UnionMember3Map = Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

            # @type [Telnyx::Internal::Type::Converter]
            UnionMember4Array = Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::Unknown]
          end

          # The new value of the field. Can be any JSON type.
          #
          # @see Telnyx::Models::AuditEventListResponse::Data::Change#to
          module To
            extend Telnyx::Internal::Type::Union

            variant String

            variant Float

            variant Telnyx::Internal::Type::Boolean

            variant -> { Telnyx::Models::AuditEventListResponse::Data::Change::To::UnionMember3Map }

            variant -> { Telnyx::Models::AuditEventListResponse::Data::Change::To::UnionMember4Array }

            # @!method self.variants
            #   @return [Array(String, Float, Boolean, Hash{Symbol=>Object}, Array<Object>)]

            # @type [Telnyx::Internal::Type::Converter]
            UnionMember3Map = Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

            # @type [Telnyx::Internal::Type::Converter]
            UnionMember4Array = Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::Unknown]
          end
        end
      end

      # @see Telnyx::Models::AuditEventListResponse#meta
      class Meta < Telnyx::Internal::Type::BaseModel
        # @!attribute page_number
        #
        #   @return [Integer, nil]
        optional :page_number, Integer

        # @!attribute page_size
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!attribute total_pages
        #
        #   @return [Integer, nil]
        optional :total_pages, Integer

        # @!attribute total_results
        #
        #   @return [Integer, nil]
        optional :total_results, Integer

        # @!method initialize(page_number: nil, page_size: nil, total_pages: nil, total_results: nil)
        #   @param page_number [Integer]
        #   @param page_size [Integer]
        #   @param total_pages [Integer]
        #   @param total_results [Integer]
      end
    end
  end
end
