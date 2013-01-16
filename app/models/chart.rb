class Chart
  include Mongoid::Document

  field :name, type: String
  field :csv, type: String

  mount_uploader :csv, ChartCsvUploader

  attr_accessible :name, :csv, :csv_cache
end
