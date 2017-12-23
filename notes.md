Hi 

Sorry I was not able to get to the heart of it.
But maybe just talking through it will help the log jam. You are not alone!  :-)

I did notice that throughout the React app, there are several places where I could not see expected data, in props or state. There are some things that I don't entirely understand yet (Redux and actions for example), so take all of this with that caveat. 

But, state and props should be identifiable at certain points in the app. 
I've put some comments here in this forked branch titled 'list-items', where I tried to reveal state and props and variables:
https://github.com/smithWEBtek/essential-oils-app-client/tree/list-items


Also, for the Rail API, see the branch titled:  "seed-data" here: 
https://github.com/smithWEBtek/essential-oils-app-api/commits/seed-data

I created a nice seed file and elaborated the database into 3 main tables with 2 join tables. 
I put a rake task in there ( rake db:dcms ) which will drop, create, migrate and seed the database. 
Also I put a couple of controllers and serializers for everything, so the API rocks with nested data. 
That should at least make it easier to see 'oil.uses' for example becuase it is broken out in the API before it even gets to the React app.


I would ask myself these questions for every file in the React app: 

  1. What is the state at this point?
  2. What are the props at this point?
  3. Where (which component, state, or prop) did this data come from?
  4. Where (which component, state, or prop) is getting this data next?

And be able to trace exactly where the data flows. 
It is so easy to create too much complexity with React, and I find my brain gets lost keeping track of it. 
Rails seems so easy compared to this because we had so many tried and true conventions to follow. 

Let me know how  you manage.
I'm still battling my own project, so it was nice to take a break and think about something different.

Brad Smith