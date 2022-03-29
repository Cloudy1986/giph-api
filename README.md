# Aim of app:

- User visits homepage, enters a mood (like "happy", or "silly", or "vindictive") into a form and hits "Submit".
- That form posts to a controller action that uses the Giph class (coded in app/models/giph.rb to send a request to the Giphy API, get back some giphs and grab their image URLs).
- That same controller action renders the app/views/giphs/index.html.erb view which will show a list of all of the giphs.
