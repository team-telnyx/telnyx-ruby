# frozen_string_literal: true

module Telnyx
  module Models
    class VideoRegion < Telnyx::Internal::Type::BaseModel
      # @!attribute height
      #   Height of the video region
      #
      #   @return [Integer, nil]
      optional :height, Integer, nil?: true

      # @!attribute max_columns
      #   Maximum number of columns of the region's placement grid. By default, the region
      #   has as many columns as needed to layout all the specified video sources.
      #
      #   @return [Integer, nil]
      optional :max_columns, Integer, nil?: true

      # @!attribute max_rows
      #   Maximum number of rows of the region's placement grid. By default, the region
      #   has as many rows as needed to layout all the specified video sources.
      #
      #   @return [Integer, nil]
      optional :max_rows, Integer, nil?: true

      # @!attribute video_sources
      #   Array of video recording ids to be composed in the region. Can be "\*" to
      #   specify all video recordings in the session
      #
      #   @return [Array<String>, nil]
      optional :video_sources, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute width
      #   Width of the video region
      #
      #   @return [Integer, nil]
      optional :width, Integer, nil?: true

      # @!attribute x_pos
      #   X axis value (in pixels) of the region's upper left corner relative to the upper
      #   left corner of the whole room composition viewport.
      #
      #   @return [Integer, nil]
      optional :x_pos, Integer, nil?: true

      # @!attribute y_pos
      #   Y axis value (in pixels) of the region's upper left corner relative to the upper
      #   left corner of the whole room composition viewport.
      #
      #   @return [Integer, nil]
      optional :y_pos, Integer, nil?: true

      # @!attribute z_pos
      #   Regions with higher z_pos values are stacked on top of regions with lower z_pos
      #   values
      #
      #   @return [Integer, nil]
      optional :z_pos, Integer, nil?: true

      # @!method initialize(height: nil, max_columns: nil, max_rows: nil, video_sources: nil, width: nil, x_pos: nil, y_pos: nil, z_pos: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::VideoRegion} for more details.
      #
      #   @param height [Integer, nil] Height of the video region
      #
      #   @param max_columns [Integer, nil] Maximum number of columns of the region's placement grid. By default, the region
      #
      #   @param max_rows [Integer, nil] Maximum number of rows of the region's placement grid. By default, the region ha
      #
      #   @param video_sources [Array<String>] Array of video recording ids to be composed in the region. Can be "\*" to
      #   specify
      #
      #   @param width [Integer, nil] Width of the video region
      #
      #   @param x_pos [Integer, nil] X axis value (in pixels) of the region's upper left corner relative to the upper
      #
      #   @param y_pos [Integer, nil] Y axis value (in pixels) of the region's upper left corner relative to the upper
      #
      #   @param z_pos [Integer, nil] Regions with higher z_pos values are stacked on top of regions with lower z_pos
    end
  end
end
