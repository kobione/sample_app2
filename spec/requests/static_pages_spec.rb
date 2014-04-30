require 'spec_helper'

describe "Static pages" do
    
    describe "Home page" do
    
        it "should have the content 'Home and Welcome'" do
            visit '/static_pages/home'
            expect(page).to have_content('Welcome, Home Page')
        end

        it "should have the BASE title 'Home'" do
            visit '/static_pages/home'
            expect(page).to have_title("Ruby on Rails Tutorial Sample App2")
        end

        it "should not have a custom page title 'Home'" do
            visit '/static_pages/home'
            expect(page).not_to have_title('| Welcome, Home Page')
        end

    end


    describe "Help page" do 
    
        it "should have the content 'Help'" do
            visit '/static_pages/help'
            expect(page).to have_content('Help')
        end

        it "should have the title 'Help'" do
           visit '/static_pages/help'
            expect(page).to have_title("Ruby on Rails Tutorial Sample App2 | Help")
        end        
    end

    describe "About page" do
    
        it "should have the content 'About Us'" do
            visit '/static_pages/about'
            expect(page).to have_content('About Us')
        end

        it "should have the title 'About Us'" do
            visit '/static_pages/about'
            expect(page).to have_title("Ruby on Rails Tutorial Sample App2 | About Us")
        end        
    end    

    describe "Contact page" do
    
        it "should have the content 'Contact Us'" do
            visit '/static_pages/contact'
            expect(page).to have_content('Contact Us')
        end

        it "should have the title 'Contact Us'" do
            visit '/static_pages/contact'
            expect(page).to have_title("Ruby on Rails Tutorial Sample App2 | Contact Us")
        end        
    end
end