require 'spec_helper'

describe "Static pages (this is a string, for description)" do
    
    describe "Home page (this is a string, also for description)" do
    
        it "should have the content 'Home and Welcome' (a third String, for more detailed description)" do
            visit '/static_pages/home'
            expect(page).to have_content('Welcome, Home Page')
        end
    end

    describe "Help page" do
    
        it "should have the content 'Help'" do
            visit '/static_pages/help'
            expect(page).to have_content('Help')
        end
    end

    describe "About page" do
    
        it "should have the content 'About Us'" do
            visit '/static_pages/about'
            expect(page).to have_content('About Us')
        end
    end    
end