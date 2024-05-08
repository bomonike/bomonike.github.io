kanban.md

If I'm working with small team or just by myself, I use the Kanban system to stay focused.

I've found that the KanBan system helps me focus and collaborate better with others.

And that's not only because I've worked at Toyota, where Kanban was made famous.

## What's KanBan?

Kanban is a japanese word coined in the 1950s by Taiichi Ohno, an industrial engineer at Toyota.

Use of Kanban enabled the car manufacturer to achieve large efficiency and quality gains in the 1950s and beyond.

Instead of computers, the Kanban system uses a card to represent each product (that generates value) traveling through the production line. It's a just-in-time scheduling system because movement of a card visually signals the need to create that part. 

The transparency made possible by visible cards enable "lean manufacturing" practioners to measure lead time and cycle time as a way to highlight problem areas.

Kanban is described as an approach that "pulls" items from upstream rather than having items "pushed" downstream processes.

Kanban aims focus on the "now" -- on the most urgent items at the top of the "Doing" stack.

## Trello.com

I and my team uses Trello.com's free website to use Kanban.

Trello was purchased by Atlanssian, which also makes Jira, a licensed product also used to manage Kanban.
See my https://wilsonmar.github.io/jira 

Kanban is not suited for a very creative endeavor.

PROTIP: Each Kanban board is best for <strong>processing well-known tasks like in a factory</strong>.
Thus, each Kanban board tyically organizes people with the <strong>same skillset</strong>.

   Kanban is particularly useful for those with multi-disciplinary skills. Workers can pick to work any task from the <strong>top</strong> of the Current ToDo list any task they have been cleared to do (front-end UI, database, utilities, etc.).

Time is being wasted when team members skip tasks only others can handle.
With such boards, it's crucial to designate the specific member who can handle each task.

## Kanban board

The flow of columns from left to right represents common names for the flow of work from ideation to completion.

PROTIP: The methodology and rules here use the Kanban board to minimize live meetings,
so is ideal for team members working in different time zones around the world.

### Doing column

1. The "Doing" (or "In Progress") column lists cards (tasks) the team <strong>currently</strong> "has on its plate".

   A glance at that column answers "who is working on what now"?

   PROTIP: Trello refreshes its dashboard automatically. So I have an old monitor display the Trello board continuously without going to sleep.
   
   RULE: Tasks in "Doing" must have a team member assigned (or it's not really being worked on).

   RULE: Tasks in "Doing" are listed in order of steps within a process flow from producer to customer. The task at the top of the list produces what is needed for tasks below it.

   PROTIP: The name of an item is often what becomes the message of the git commit message for the item into GitHub. Alternately, a Note would contain that message. Such a Note would provide a cross-reference to GitHub.

   RULE: Set a personal limit of how many tasks one person can do at the same time.
   RULE: The WIP (Work in Progress) Limit is the number of items the whole team can work on at the same time.

   ### Notes

1. PROTIP: As tasks are performed, since Notes in active cards are abandoned when done, ideas for <strong>improvement</strong> in future iterations are added in a <strong>separate template board</strong> containing items to be copied onto the team's active Kanban board "ToDo" column for each new project/customer. 

   Notes in the Template contain tips and caveats to perform each task. For example:
   As is common among Agile teams, the team has agreed ahead of time to a common "Definition of Done" (DoD) which defines the conditions for moving an item for another team member to Review/Test. For example:

   * Unit tests passed
   * Code reviewed
   
   * Functionality documented in necessary user documentation
   * Integrated into a clean build
   
   * Automated regression tests pass
   * Feature level functional tests passed
   * Functional Regression tests pass
   * Performance Regression tests pass
   * Non-functional requirements met
   
   * Meets defined market expectations
   * Meets organizational/industry standards (e.g. HIPAA compliance)
   * Meets general security requirements

   * End-to-end integration completed
   * Acceptance criteria met
   * Product Owner acceptance
   <br /><br />

   Notes in each item in the template board define the <strong>sequence (dependencies)</strong> of items before and after each task. The template may be a multi-dimensional diagram.

   Trello puts a red dot on items with new Note activity. Since that dot goes away after viewing, an additional reply such as "Noted" or "Agreed" is not necessary.

   ### Review/Test

1. When a task from the Doing column is complete, move it to the "Review/Test" column for someone else perform the Quality Control.

   PROTIP: Team members should pick "Review/Test" items before picking the next "To Do" item. This is so all items get to "Done" as soon as possible, without being stuck in progress.

   Part Quality Control is evaluation of the <strong>manual documentation or automation</strong>. Are they still accurate and efficient? Steps that are error-prone in future iterations should be flagged.

   ### Next To Do

1. The <strong>Next To Do</strong> column contain items which the team agrees it should do when all "Doing" and "Review/Testing" items are completed.

   Kanban is considered a continuous workflow. It's unlike Scrum's "time boxed" approach which some claim  intentionally adds psychological pressure to worry about how to cram a whole list of items into a fixed time-frame (sprint). 
   
   The culture of Kanban is that team members are not cohersed into accepting estimates as "commitments" that must be kept. This approach encourages open discussion/handling of delays without the shame which encourages lying and poor quality.

   ### Backlog

1. As you're working on an item and inspiration strikes, create a card in the <strong>bottom of the "Backlog" column<strong>. Backlog items are in a column all the way to the left, as in "from left field" in American Baseball slang, to refer to something that is unexpected, unusual, or surprising.

   Backlong items are also called <strong>unplanned</strong> because they have not been <strong>accepted</strong> as an item that <strong>should</strong> be worked on.
   
   PROTIP: Making acceptance a conscious step is important to ensure that the <strong>risks and costs</strong> be properly considered. That includes the possible benefit of NOT doing the item if that makes better sense.
   
   Movement of the item to the next column should usually occur after there is agreement about where the backlong item fits within the planned <strong>Product Roadmap/Timeline</strong>, as in which other tasks take precedent.

   During deliberations, some items may be broken out into separate items. 
   Other items may be combined with another item.

   Teams <strong>have a designated recurring time</strong> when team members deliberate Backlog items together. Before that meeting, each team member add notes and reply to notes. "+1" is added to designate acceptance of an item as stated. That would mute disscussion on the item, which enable "air time" to be on where it's most productive (such as on socializing).

   With that said, special meetings may be necessary to resolve emergencies.

   ### Stuck

1. If you get <strong>stuck</strong> working on an item, be weary of wasting time going in circles and getting frustrated. 

   It may be better use of time to move on to work the next item. But before you do that,
   to minimize <strong>switching costs</strong>, in a note within the blocked item, paste the error message output by the app. Define how to recreate the error and what you've tried.
   
   Then to summon help on the blocked item, add "<strong>BLOCKED:</strong>" at the beginning of its name. It's good for others to help you because they may learn something too.
   
   A key benefit of an Agile mindset is the invention of <strong>quick change</strong> mechanisms that enable more efficient switching between different types of tasks.

   Take a quick break while you see if someone can come to your aid.
   
   If you cannot work on an item, move it back to the top of the "To Do" list because you are not working on it.

   ### Closure

1. PROTIP: Unless otherwise agreed upon, only the person who created the item be the one to move to Done. This is to prevent unwarrented closures, which drains initiative. If allowed, it can be a "power move" to bully others.

   PROTIP: Marking items as done prematurely is a form of lying. Closing an item can be used to "sweep things under the carpet" and create invisible "Technical Debt".

1. Add "TEAM:" to the front of item names items which the entire team should review together.

   Pre-scheduled demo meetings would be an items with a date in the "Review/Test" column.

   ### Time Stamps

1. Optionally, time stamps the system automatically tracks enable Notes in the template to be updated with <strong>actual times</strong> of task completed during previous iterations, presented as a histogram if there are enough repeats. Several histograms can be presented for each level of difficulty.

1. Each team member should look at the board occassionally to pick up items unassigned.

   If you see an item marked "BLOCKED", see if you can help. 


## Kanban Stand-ups

We hold daily "stand-ups" to encourage collaboration, not for a military role call.

   Stand-ups are a time for the whole team to decide on items such as blocks.

   Stand-ups are NOT a time to repeat (confirm) what is already written.

1. Look at all items before each stand-up meeting.

Visualize the workflow: Divide your kanban board into columns that represent the different stages of your workflow, such as "ToDo", "In Progress", and "Done". This allows you to visualize the status of each task at a glance.1

   Limit on the number of items being worked on.


## Display continuosly

To continuously refresh any web page, either install browser extension "Auto Refresh & Page Monitor" for Google Chrome or code JavaScript. 

1. The extension allows you to automatically refresh web pages at specified time intervals, such as every 5 seconds, 10 minutes, etc. 

1. Use the <meta> tag in the HTML of the web page to automatically refresh it. For example, adding <meta http-equiv="refresh" content="10"> will refresh the page every 10 seconds.
Use JavaScript's setInterval() function to continuously reload the page.
For example, to reload the page every 2 seconds (2000 milliseconds):

<pre>
javascript
function autoRefresh() {
  window.location = window.location.href;
}
setInterval('autoRefresh()', 2000);
</pre>

   Leverage the &LT;meta> tag in the HTML2, or implement a JavaScript function that continuously reloads the page.

To keep a laptop continuously displayed on an external monitor even when the laptop lid is closed, you can follow these steps:

    Go to the Power Options in the Control Panel or Windows Settings. 1

3
4
Click on "Choose what closing the lid does" and select "Do nothing" for both when on battery power and when plugged in. 1
3
4
This will prevent the laptop from going to sleep or turning off the display when the lid is closed. 1

Additionally, you can:

    Disable the automatic sleep/hibernate settings in the Power Options to keep the laptop running continuously. 4
    Use a third-party software like Wakeful to prevent the laptop from going to sleep. 4

The key is to configure the power settings so that closing the laptop lid does not trigger the laptop to sleep, hibernate or turn off the display. This will allow the laptop to continue running and displaying content on the external monitor even with the lid closed. 1
3
4 Just remember that keeping the laptop running continuously will drain the battery faster, so it's best to keep it plugged into a power source. 4 1
https://www.youtube.com/watch?v=iBp8B7Vicvs[3] https://www.youtube.com/watch?v=etH24opBZwo[4] https://v2cloud.com/tutorials/how-to-keep-computer-running-all-the-time

## References

https://www.kanban.help/
by <a target="_blank" href="https://www.linkedin.com/in/marcore69/">Marco Re</a>

https://www.linkedin.com/advice/0/how-do-you-design-kanban-board-complex-uncertain-environment
