# frozen_string_literal: true

module Telnyx
  module Models
    module MessagingProfiles
      # @see Telnyx::Resources::MessagingProfiles::AutorespConfigs#list
      class AutorespConfigListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute country_code
        #
        #   @return [String, nil]
        optional :country_code, String

        # @!attribute created_at
        #   Consolidated created_at parameter (deepObject style). Originally:
        #   created_at[gte], created_at[lte]
        #
        #   @return [Telnyx::Models::MessagingProfiles::AutorespConfigListParams::CreatedAt, nil]
        optional :created_at, -> { Telnyx::MessagingProfiles::AutorespConfigListParams::CreatedAt }

        # @!attribute updated_at
        #   Consolidated updated_at parameter (deepObject style). Originally:
        #   updated_at[gte], updated_at[lte]
        #
        #   @return [Telnyx::Models::MessagingProfiles::AutorespConfigListParams::UpdatedAt, nil]
        optional :updated_at, -> { Telnyx::MessagingProfiles::AutorespConfigListParams::UpdatedAt }

        # @!method initialize(country_code: nil, created_at: nil, updated_at: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::MessagingProfiles::AutorespConfigListParams} for more details.
        #
        #   @param country_code [String]
        #
        #   @param created_at [Telnyx::Models::MessagingProfiles::AutorespConfigListParams::CreatedAt] Consolidated created_at parameter (deepObject style). Originally: created_at[gte
        #
        #   @param updated_at [Telnyx::Models::MessagingProfiles::AutorespConfigListParams::UpdatedAt] Consolidated updated_at parameter (deepObject style). Originally: updated_at[gte
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class CreatedAt < Telnyx::Internal::Type::BaseModel
          # @!attribute gte
          #
          #   @return [String, nil]
          optional :gte, String

          # @!attribute lte
          #
          #   @return [String, nil]
          optional :lte, String

          # @!method initialize(gte: nil, lte: nil)
          #   Consolidated created_at parameter (deepObject style). Originally:
          #   created_at[gte], created_at[lte]
          #
          #   @param gte [String]
          #   @param lte [String]
        end

        class UpdatedAt < Telnyx::Internal::Type::BaseModel
          # @!attribute gte
          #
          #   @return [String, nil]
          optional :gte, String

          # @!attribute lte
          #
          #   @return [String, nil]
          optional :lte, String

          # @!method initialize(gte: nil, lte: nil)
          #   Consolidated updated_at parameter (deepObject style). Originally:
          #   updated_at[gte], updated_at[lte]
          #
          #   @param gte [String]
          #   @param lte [String]
        end
      end
    end
  end
end
