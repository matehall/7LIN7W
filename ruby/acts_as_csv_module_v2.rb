module ActsAsCsv
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def acts_as_csv
      include InstanceMethods
    end
  end

  module InstanceMethods
    def read
      @csv_contents = []
      filename = self.class.to_s.downcase + '.txt'
      file = File.new(filename)
      @headers = file.gets.chomp.split(', ' )
      file.each do |row|
        @csv_contents << row.chomp.split(', ' )
      end
    end
    attr_accessor :headers, :csv_contents

    def initialize
      read
    end

    def each
        yield CvsRow
    end
  end
end

class RubyCsv # no inheritance! You can mix it in
  include ActsAsCsv
  acts_as_csv
end

class CvsRow
  def self.method_missing name, *args

  end
end

csv = RubyCsv.new
csv.each {|row| puts row.one}

#m = RubyCsv.new
#puts m.headers.inspect
#puts m.csv_contents.inspect
