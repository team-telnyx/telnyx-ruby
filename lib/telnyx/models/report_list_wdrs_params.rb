# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Reports#list_wdrs
    class ReportListWdrsParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute id
      #   Filter results by identifier.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute end_date
      #   End date
      #
      #   @return [String, nil]
      optional :end_date, String

      # @!attribute imsi
      #   Filter results by imsi.
      #
      #   @return [String, nil]
      optional :imsi, String

      # @!attribute mcc
      #   Filter results by mcc.
      #
      #   @return [String, nil]
      optional :mcc, String

      # @!attribute mnc
      #   Filter results by mnc.
      #
      #   @return [String, nil]
      optional :mnc, String

      # @!attribute page_number
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!attribute phone_number
      #   Filter results by phone number.
      #
      #   @return [String, nil]
      optional :phone_number, String

      # @!attribute sim_card_id
      #   Filter results by sim card id.
      #
      #   @return [String, nil]
      optional :sim_card_id, String

      # @!attribute sim_group_id
      #   Filter results by sim group id.
      #
      #   @return [String, nil]
      optional :sim_group_id, String

      # @!attribute sim_group_name
      #   Filter results by sim group name.
      #
      #   @return [String, nil]
      optional :sim_group_name, String

      # @!attribute sort
      #   Field and direction to sort the results by.
      #
      #   @return [Array<String>, nil]
      optional :sort, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute start_date
      #   Start date
      #
      #   @return [String, nil]
      optional :start_date, String

      # @!method initialize(id: nil, end_date: nil, imsi: nil, mcc: nil, mnc: nil, page_number: nil, page_size: nil, phone_number: nil, sim_card_id: nil, sim_group_id: nil, sim_group_name: nil, sort: nil, start_date: nil, request_options: {})
      #   @param id [String] Filter results by identifier.
      #
      #   @param end_date [String] End date
      #
      #   @param imsi [String] Filter results by imsi.
      #
      #   @param mcc [String] Filter results by mcc.
      #
      #   @param mnc [String] Filter results by mnc.
      #
      #   @param page_number [Integer]
      #
      #   @param page_size [Integer]
      #
      #   @param phone_number [String] Filter results by phone number.
      #
      #   @param sim_card_id [String] Filter results by sim card id.
      #
      #   @param sim_group_id [String] Filter results by sim group id.
      #
      #   @param sim_group_name [String] Filter results by sim group name.
      #
      #   @param sort [Array<String>] Field and direction to sort the results by.
      #
      #   @param start_date [String] Start date
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
