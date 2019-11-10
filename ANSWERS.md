# Q0: Why are these two errors being thrown?
	The first one occurred because we did not run rails db:migrate. The second was because we did not create the Pokemon model yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
	In the home controller, the instance variable @pokemon gets assigned to a random trainerless pokemon. The @pokemon variable is used in the view file and shows up as a wild pokemon. All the Pokemon randomly appearing are starter pokemon and do not have a trainer.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
	The line creates a button that says “Throw a Pokeball!”. When pressed, it calls the patch function capture and sets the Pokemon’s trainer to the current trainer logged in. It then redirects you back to the home page.

# Question 3: What would you name your own Pokemon?
	I would name it Adinasaur.

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
	It was an URI where I passed in an ID into the trainer’s show method. It is similar to having a path.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
	Application.html.erb sets a format for files to follow when being displayed on a webpage when there is no controller-specific layout. At the end, it renders messages, which is where the flash is shown on the form.

# Give us feedback on the project and decal below!
https://github.com/rails-decal/fa19-proj1-adinachen
# Extra credit: Link your Heroku deployed app