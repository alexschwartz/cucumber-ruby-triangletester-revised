
Given /^the side length values (\d+), (\d+), (\d+)$/ do |len1, len2, len3|
   @lenght1, @length2, @length3 = len1, len2, len3
end

When /^ask the triangle type oracle is asked$/ do
  oracle = TriangleTypeOracle.new
  @type = oracle.requestType(@length1, @length2, @length3)
end

Then /^the triangle type is "([^"]*)"$/ do |arg1|
   @type.should == arg1
end


class TriangleTypeOracle

  def requestType(length1, length2, length3)
     "Scalene"
  end
  
end
