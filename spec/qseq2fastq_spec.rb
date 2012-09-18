require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
=begin
describe Qseq do
  describe "#to_fastq" do
    it "should convert qseq into fastq and return fastq" do
      q = Qseq.new("se")
      q.to_fastq
    end
  end
  describe "#include_adaptor?" do
    it "should return true when including adaptor sequence" do
      
    end
  end
  describe "#include_n?" do
    it "should return true when including base N" do

    end
  end
end

#=begin
describe "Qseq2fastq" do
  it "fails" do
    fail "hey buddy, you should probably rename this file and start specing for real"
  end
end
=end
