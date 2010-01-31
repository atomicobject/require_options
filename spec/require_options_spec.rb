require File.join(File.expand_path(File.dirname(__FILE__)), "/../lib/require_options")

describe RequireOptions do
  include RequireOptions
  
  describe "#require_options" do
    it "returns the list of values from the specified keys" do
      opts = {:gear => 2, :speed => 200}
      gear, speed = require_options(opts, :gear, :speed)
      
      gear.should == 2
      speed.should == 200
    end
    
    it "returns a value rather than a list of values if only one key is given" do
      opts = {:name => "John"}
      name = require_options(opts, :name)
      name.should == "John"
    end

    it "does NOT reject extraneous keys" do
      opts = {:name => "John", :tractor => "Deere"}
      name = require_options(opts, :name)
      name.should == "John"
    end
    
    it "raises an error if given key does not exist in hash" do
      opts = {:gear => 2}
      lambda {
        require_options(opts, :gear, :speed)
      }.should raise_error("speed required")
    end
  end
  
  describe "#allow_options" do
    it "disallows keys if they have not been specified" do
      opts = {:name => "Jason", :age => 22}
      lambda {
        allow_options(opts, :age)
      }.should raise_error("name not allowed")
    end
    
    it "does nothing if keys are allowed" do
      lambda {
        allow_options({:name => "Josh"}, :name)
      }.should_not raise_error
    end
  end
  
  describe "#require_at_least_one" do
    it "ensures that at least one of the given keys is present" do
      opts = {:license => "1234"}      
      
      lambda {
        require_at_least_one(opts, :license, :ssn)
      }.should_not raise_error
      
      opts = {:ssn => "4311"}
      
      lambda {
        require_at_least_one(opts, :license, :ssn)
      }.should_not raise_error
      
      opts = {:name => "Jane"}
      
      lambda {
        require_at_least_one(opts, :license, :ssn)
      }.should raise_error("license or ssn is required")
      
      opts = {:ssn => ""}
      
      lambda {
        require_at_least_one(opts, :license, :ssn)
      }.should raise_error("license or ssn is required")
    end
  end
end
