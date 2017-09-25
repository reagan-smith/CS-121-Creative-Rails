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

Our web app is built using Ruby on Rails. We used Ruby gems to help support our development. Devise was used for the user accounts, ___ was used for the postings, and there weren't any gems used for the todos.

We used bootstrap for the formatting. **FINISH LATER :D**
* Todos:
The Tasks page let's you create tasks you need to accomplish, and when you need to, mark them completed, edit them, view them, or delete them. 
The todo page is modeled off a rails tutorial for making articles (see below). In the future we would like to add an Accomplishments page which adds items as they are marked completed off the tasks page.

## Discuss the key issues that arose in the development of you project and what you did to resolve them.

For the todos, there was a lot of struggle on how to archive them or check of completed tasks. Checkboxes were deceivingly tricky because of how you need to store whether or not boxes have been checked. A simpler approach to marking tasks as complete was to simply remove them from the site using the :delete method for todos. This was a close enough approximation to what marking complete means that we could accomplish in the 8 hours spent this week.

## Discuss major issues still present (e.g., "Known bugs"): what the problem is, what options have been tried or considered, and how those options might fall short.

As mentioned above, the marking tasks complete is still a bug for todos. We tried making a new controller/model to copy informaiton from todos over onto a new page of completed tasks and we tried making check boxes persistent when clicked. The checkboxes were far too complicated for their simple look in the site to justify keeping. We still think the new controller/model to be a viable option when moving forward on making the todo page more realistic.

## References. List all the resources that you used to create your project. Books, tutorials, templates, libraries, helpful StackOverflow pages -- if it was useful, include it, and make sure to reference it in the appropriate section of the README. (Choose whatever citation format you like (e.g., APA) and use it consistently.)

The todos were modeled after [this](http://guides.rubyonrails.org/getting_started.html) site and we got the information on how to do checkboxes (later abandoned) [here](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/checkbox).

