# Module that can be included (mixin) to take and output TSV data
module TsvBuddy
  # take_tsv: converts a String with TSV data into @data
  # parameter: tsv - a String in TSV format
  def take_tsv(tsv)
  	#separate tsv string into lines and fields
    lines = tsv.split("\n")
    header = lines.shift.split("\t")
    @data = []
    lines.each do |line|
      values = line.split("\t")
      record = values.map.with_index { |value, i| [header[i], value] }.to_h
      @data << record
    end
  end
 
  # to_tsv: converts @data into tsv string
  # returns: String in TSV format
  def to_tsv
    # Get the header
    header = @data[1].keys.join("\t")
    #Get the values
    array = @data.map{|x| x.values.join("\t")}
    #join into single string
    contents = array.join("\n")
    #join the header and values
    final = header + "\n" + contents +"\n"
  end
end
