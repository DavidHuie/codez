module Codez
  INDEX_FOR = { fips: 0, area_code: 1, state: 2 }.freeze

  class << self
    attr_accessor :data
  end

  data_file = File.open(Codez::ZIP_TO_FIPS_FILE, "r")
  self.data = JSON.load(data_file)

  class Fips
    def self.from_zip(zip)
      data_array = Codez.data[zip.to_s]
      data_array[INDEX_FOR[:fips]] if data_array
    end
  end

  class AreaCode
    def self.from_zip(zip)
      data_array = Codez.data[zip.to_s]
      data_array[INDEX_FOR[:area_code]] if data_array
    end
  end

  class State
    def self.from_zip(zip)
      data_array = Codez.data[zip.to_s]
      data_array[INDEX_FOR[:state]] if data_array
    end
  end
end
