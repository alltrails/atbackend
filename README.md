# AllTails at Lunch Backend app

### React UI repo
https://github.com/electricjug/atfrontend

### Prerequisites
Make sure you have the Foreman gem installed `gem install foreman`

### Instructions
Clone the repo
Run `rails credentials:edit`
Save the Google API key as `places_api_key`

Run the server `foreman start -f Procfile.dev`
It runs on http://localhost:3001

If you suspect the submodule (the fonrend app) is out of sync, you can run
`git submodule update --remote --recursive`

### Screenshots
![desktop](http://www.tuskerette.com/projects/atscreenshots/pizza-desktop.png)
![desktop-selected](http://www.tuskerette.com/projects/atscreenshots/pizza-selected-desktop.png)
![mobile](http://www.tuskerette.com/projects/atscreenshots/pizza-mobile.png)

### Libraries
this app uses
https://github.com/qpowell/google_places

