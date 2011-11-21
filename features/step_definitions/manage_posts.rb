Given /^I saw list of all posts$/ do
  visit posts_path
end

Then /^I visited post new page$/ do
  click_link('Dodaj posta')
end

Then /^I added "([^"]*)" "([^"]*)" post$/ do |p_title, p_description|
  fill_in('post_title', :with => p_title)
  fill_in('post_description', :with => p_description)
  click_button('Dodaj')
end 

When /^I go to the list of all posts$/ do
   visit posts_path
end

Then /^I should see "([^"]*)" "([^"]*)"$/ do |p_title, p_description|
  if defined?(Spec::Rails::Matchers)
    page.should have_content(p_title)
    page.should have_content(p_description)
  else
    assert page.has_content?(p_title)
    assert page.has_content?(p_description)         
  end
end

