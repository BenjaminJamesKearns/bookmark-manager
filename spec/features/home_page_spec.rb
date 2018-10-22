feature 'viewing homepage'do
    scenario 'visiting the website' do 
       visit ('/') 
       expect(page).to have_content 'Bookmark Manager'
    end
end