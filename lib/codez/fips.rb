module Codez
  class Fips
    def self.from_zip(zip)
      data_array = Codez.data[zip.to_s]
      data_array[Codez::INDEX_FOR[:fips]] if data_array
    end
  end
end
