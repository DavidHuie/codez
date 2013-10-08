class Codez::Fips

  class << self
    attr_accessor :data
  end

  data_file = File.open("./lib/codez/data/zip_to_fips.json", "r")
  self.data = JSON.load(data_file)

  def self.from_zip(zip)
    data[zip.to_s]
  end

end
