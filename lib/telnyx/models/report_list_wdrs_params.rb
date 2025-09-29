# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Reports#list_wdrs
    class ReportListWdrsParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute id
      #   WDR uuid
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute end_date
      #   End date
      #
      #   @return [String, nil]
      optional :end_date, String

      # @!attribute imsi
      #   International mobile subscriber identity
      #
      #   @return [String, nil]
      optional :imsi, String

      # @!attribute mcc
      #   Mobile country code
      #
      #   @return [String, nil]
      optional :mcc, String

      # @!attribute mnc
      #   Mobile network code
      #
      #   @return [String, nil]
      optional :mnc, String

      # @!attribute page
      #   Consolidated page parameter (deepObject style). Originally: page[number],
      #   page[size]
      #
      #   @return [Telnyx::Models::ReportListWdrsParams::Page, nil]
      optional :page, -> { Telnyx::ReportListWdrsParams::Page }

      # @!attribute phone_number
      #   Phone number
      #
      #   @return [String, nil]
      optional :phone_number, String

      # @!attribute sim_card_id
      #   Sim card unique identifier
      #
      #   @return [String, nil]
      optional :sim_card_id, String

      # @!attribute sim_group_id
      #   Sim group unique identifier
      #
      #   @return [String, nil]
      optional :sim_group_id, String

      # @!attribute sim_group_name
      #   Sim group name
      #
      #   @return [String, nil]
      optional :sim_group_name, String

      # @!attribute sort
      #   Field used to order the data. If no field is specified, default value is
      #   'created_at'
      #
      #   @return [Array<String>, nil]
      optional :sort, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute start_date
      #   Start date
      #
      #   @return [String, nil]
      optional :start_date, String

      # @!method initialize(id: nil, end_date: nil, imsi: nil, mcc: nil, mnc: nil, page: nil, phone_number: nil, sim_card_id: nil, sim_group_id: nil, sim_group_name: nil, sort: nil, start_date: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::ReportListWdrsParams} for more details.
      #
      #   @param id [String] WDR uuid
      #
      #   @param end_date [String] End date
      #
      #   @param imsi [String] International mobile subscriber identity
      #
      #   @param mcc [String] Mobile country code
      #
      #   @param mnc [String] Mobile network code
      #
      #   @param page [Telnyx::Models::ReportListWdrsParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
      #
      #   @param phone_number [String] Phone number
      #
      #   @param sim_card_id [String] Sim card unique identifier
      #
      #   @param sim_group_id [String] Sim group unique identifier
      #
      #   @param sim_group_name [String] Sim group name
      #
      #   @param sort [Array<String>] Field used to order the data. If no field is specified, default value is 'create
      #
      #   @param start_date [String] Start date
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Page < Telnyx::Internal::Type::BaseModel
        # @!attribute number
        #   Page number
        #
        #   @return [Integer, nil]
        optional :number, Integer

        # @!attribute size
        #   Size of the page
        #
        #   @return [Integer, nil]
        optional :size, Integer

        # @!method initialize(number: nil, size: nil)
        #   Consolidated page parameter (deepObject style). Originally: page[number],
        #   page[size]
        #
        #   @param number [Integer] Page number
        #
        #   @param size [Integer] Size of the page
      end
    end
  end
end
