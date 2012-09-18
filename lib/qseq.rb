class Qseq

  attr_accessor :fp # file pointer for qseq file
  attr_reader :end_type # single end or pair end

  def initilize(end_type = :single, adaptor_seq = "GATCGGAAGAG")
    @end_type = end_type
    @adaptor_seq = adaptor_seq
  end

  def include_adaptor?(seq)
    return true if /#{@adaptor_seq}/ =~ seq
  end

  def include_n?
    return true if /N/ =~ seq
  end

  def to_fastq
    @fp.lines do |line|
      line_ary = line.split
      fastq = (send "to_fastq_#{end_type}", line_array)
    end
    yield fastq
  end

  def to_fastq_single(qseq)
    "@#{qseq[0]}:#{qseq[2]}:#{qseq[3]}:#{qseq[4]}:#{qseq[5]}#0/\n#{qseq[8].gsub(/\./,'N')}\n+\n#{qseq[9]}" if qseq[10]=="1"
  end

end
