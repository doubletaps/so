Given /^I have no supports$/ do
  Support.delete_all
end

Given /^I (only )?have supports titled "?([^\"]*)"?$/ do |only, titles|
  Support.delete_all if only
  titles.split(', ').each do |title|
    Support.create(:title => title)
  end
end

Then /^I should have ([0-9]+) supports?$/ do |count|
  Support.count.should == count.to_i
end
