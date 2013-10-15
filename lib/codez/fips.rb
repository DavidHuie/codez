class Codez::Fips

  class << self
    attr_accessor :data
  end

  data_file = File.open(Codez::ZIP_TO_FIPS_FILE, "r")
  self.data = JSON.load(data_file)

  def self.from_zip(zip)
    data[zip.to_s].to_a[0]
  end

  def self.area_code(zip)
    data[zip.to_s].to_a[1]
  end
end
