# CS-121-Creative-Rails

## Names 
Reagan Smith
Maeve Murphy
Coco Stiff

## A summary: 
This web app allows a user to keep track of their tasks while sharing their progress. Has user sign in/sign up, task tracking, and posting abilities.

## Describe your MVP. What features are essential for your MVP? 
Our MVP includes a basic task entering/task checking function, a simple posting function, and users.

## Describe the functionality of your project to the potential users. 
Do you want to be able to manage your time better? Keep track of everything on? As well as share your status with friends (and parents)?

This web app can help. With our website, you can easily store a todo list. You can also share your project status or fun facts on the about page. Posts made by users can be seen by all other users too. Share some accomplishments or some motivations for others!

## Describe the architecture of the project: its major components, their roles and responsibilities, and their interactions. 
Think of a component as a part of the system that contributes to the system's functionality. For example, user data input is a functionality that is accomplished using components such as data collection interface and database storage. Describe what technology you used for each.

Our web app is built using Ruby on Rails. We used Ruby gems to help support our development. ckeditor was used to help with post creation, and bcrypt was used for password storage.
We used bootstrap for the formatting. 
* User Accounts:
User accounts are stored based on username, and include an email field as well. All usernames must be unique, and emails are checked to ensure that they are in a valid format. While user sign up and log in do not accomplish much on their own, they interface with various different pieces of the site. For example, posts can only be added by logged-in users.

* Posts: 
The about page allows logged-in users to post updates to the page, and edit or delete previous updates. Post creation uses ckeditor, in order to have a better formatted text input page that allows for images. Once a post is created, the post can be read individually or all together on the about page.
* Todos:
The Tasks page let's you create tasks you need to accomplish, and when you need to, mark them completed, edit them, view them, or delete them. 
The todo page is modeled off a rails tutorial for making articles (see below). In the future we would like to add an Accomplishments page which adds items as they are marked completed off the tasks page.

## Discuss the key issues that arose in the development of you project and what you did to resolve them.

For the todos, there was a lot of struggle on how to archive them or check of completed tasks. Checkboxes were deceivingly tricky because of how you need to store whether or not boxes have been checked. A simpler approach to marking tasks as complete was to simply remove them from the site using the :delete method for todos. This was a closeur nough approximation to what marking complete means that we could accomplish in the 8 hours spent this week.

Another struggle was trying to put the site up on Heroku, which was not part of our MVP but was a stretch goal. Heroku doesn't allow sqlite, which is what our databases were originally based on, so all of the databases would have to be migrated to PostGreSQL. While this seemed easy enough, several small bugs arose throughout development that were almost impossible to track down, due to a combination of our unfamiliarity with postgreSQL and also the struggles with using Heroku. Ultimately, we had to abandon this stretch goal.

Lastly, we dealt with a problem regarding the bootstrap implementation. The original download of the program didn't successfully place all the files where the program expected them to be located. I attempted to resolve this by googling the error messages and reading up on general Bootstrap/Ruby on Rails integration. However, I couldn't find the issue until discussing the bug with Prof Kate and asking for advice about hunting it down. After she discovered it, I was able to then fix the problem and successfully load bootstrap onto our app.

## Discuss major issues still present (e.g., "Known bugs"): what the problem is, what options have been tried or considered, and how those options might fall short.

As mentioned above, the marking tasks complete is still a bug for todos. We tried making a new controller/model to copy informaiton from todos over onto a new page of completed tasks and we tried making check boxes persistent when clicked. The checkboxes were far too complicated for their simple look in the site to justify keeping. We still think the new controller/model to be a viable option when moving forward on making the todo page more realistic.

## References. List all the resources that you used to create your project. Books, tutorials, templates, libraries, helpful StackOverflow pages -- if it was useful, include it, and make sure to reference it in the appropriate section of the README. (Choose whatever citation format you like (e.g., APA) and use it consistently.)

The todos were modeled after [this](http://guides.rubyonrails.org/getting_started.html) site and we got the information on how to do checkboxes (later abandoned) [here](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/checkbox).

Blog posts were based on [this tutorial](https://scotch.io/tutorials/build-a-blog-with-ruby-on-rails-part-1), and user modeling and login/signup was done from [this tutorial](https://www.railstutorial.org/book/modeling_users).

Bootstrap advice was found [here](https://www.w3schools.com/bootstrap/bootstrap_navbar.asp). The glyphs in the navbar were described [here](https://getbootstrap.com/docs/3.3/components/), and the original template this was modeled off of is a combination of [this](https://startbootstrap.com/template-overviews/bare/) and the one used in [this](https://www.youtube.com/watch?v=MpFO4Zr0EPE) tutorial.

