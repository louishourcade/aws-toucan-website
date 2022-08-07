require_relative '../../spec_helper'
require_relative 'fixtures/classes'

describe "IO#close_write" do
  before :each do
    @io = IO.popen 'cat', 'r+'
    @path = tmp('io.close.txt')
  end

  after :each do
    @io.close unless @io.closed?
    rm_r @path
  end

  it "closes the write end of a duplex I/O stream" do
    @io.close_write

    -> { @io.write "attempt to write" }.should raise_error(IOError)
  end

  it "does nothing on subsequent invocations" do
    @io.close_write

    @io.close_write.should be_nil
  end

  it "allows subsequent invocation of close" do
    @io.close_write

    -> { @io.close }.should_not raise_error
  end

  it "raises an IOError if the stream is readable and not duplexed" do
    io = File.open @path, 'w+'

    begin
      -> { io.close_write }.should raise_error(IOError)
    ensure
      io.close unless io.closed?
    end
  end

  it "closes the stream if it is neither readable nor duplexed" do
    io = File.open @path, 'w'

    io.close_write

    io.closed?.should == true
  end

  it "flushes and closes the write stream" do
    @io.puts '12345'

    @io.close_write

    @io.read.should == "12345\n"
  end

  it "does nothing on closed stream" do
    @io.close

    @io.close_write.should be_nil
  end
end
