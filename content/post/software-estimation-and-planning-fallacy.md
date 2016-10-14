+++
date = "2016-09-11T09:34:47Z"
title = "Software, Estimation and the Planning Fallacy"
description= ""
categories= ["Software","Estimation","Planning Fallacy","Bias"]
draft=true
+++

# Software, Estimation and the Planning Fallacy

My flight is delayed for 3 hours so I'm taking the rare opportunity to put together some thoughts on how software project estimation can trip companies, teams and individuals up.    

Remember way back when we had the Waterfall model?  Well actually we didn't have the Waterfall, the Waterfall model was put forward by Winston Royce back in the early 70's as an example of a *broken* SDLC model, unfortunately this little note was lost in the scramble to adopt it as the de-facto model to use!  Lets forget all of that, you would be hard pressed to find any organizations still working under a Waterfall model and the reason for that is pretty strong.   

It didn't work. A big upfront design session only works if you know what you are designing, anyone who has worked on any Enterprise level applications knows that a project that has a clearly defined end goal is pretty rare. Oh sure there are ideas, and concepts, and even some rules about what it *won't* be but often the final product evolves significantly from beginning to end. So if you don't know what you are building until you see it then all of that Waterfall upfront design time is not only wasted effort, it is baggage that you have to carry with you, making it harder to pivot or change plans once the real product starts to form.   

*It didn't work so we abandoned it, right? We understand that change and evolution is a part of product development now, right?*  

"It depends" seems to be the answer, we gave up on the structured requirements gathering and big upfront design phases in favour of entering the implementation phases much earlier.  In the Agile world you would look to define an MVP product, Epics are identified and prioritized, you start implementing the pieces you can earlier and find your way as you go.  It's not that this way is the ultimate solution, but at least it works to some degree, where Waterfall did not work at all for most projects (there are projects where large upfront design can work well).

So why are we still expecting upfront estimates considering we know that this is already a flawed model?  And even more puzzling, why do we have an expectation for estimates to be be highly accurate, and for them to get more accurate over time?  Like a hunter stalking deer in a deep forest at night, estimators are expected to get better at hitting the mark with practice.   

Lets talk for a moment about why estimation is a broken concept.

The Sydney opera house[1](#1) is one of the most famous budget overruns for any construction project, coming in at a whopping ten years and fourteen times over original estimate, final costs are at around $102M.  But of course that is concrete and steel, surely software doesn't cost as much and is easier to estimate, right?  Not so, Wikipedia keeps a nice list of failed and overbudget software projects[2](#2), here are a few highlights:
- NHS Connecting for Health[3](#3) - Estimated at £2.3bn over 3 years, it has so far cost £12.4bn over 10 years.
- Universal Credit[4](#4) - Estimated at £2.2bn this was later revised to £12.8bn and again revised to £15.8bn.
- Expeditionary Combat Support System [5](#5) - $1.1bn was spent with no significant deliverables, another $1.1bn would need to be invested to even achieve a quarter of original scope.
Those are staggering numbers making the Opera house seem like a bargain at $100M.  

Software is still a relatively new industry in comparison to construction, each decade sees major changes in how software is built and how projects are managed e.g. Waterfall to Agile. Humans have been building homes and other structures for centuries yet we still fail to accurately estimate the cost of construction. Why are we so bad at estimating?

There are a number of factors and some previous studies are pretty revealing. **Overly optimistic planning:** Buehler and associates (1995)[6](#6) performed a study on a number of students and asked each of them to estimate the date by which they would be finished their Senior Thesis.  The average was 33.9 days.  They then asked the students to estimate how long it would take if everything went perfectly to plan and the average was 27.4 days.  They then asked how long it would take if everything went as poorly as possible and the response was an average of 48.6 days.  The actual time it took the students to complete their thesis was 55.5 days.  So even when we try to estimate the worst case scenario we fail to come close.  In fact the estimate for how long it will take is very close to the perfect scenario.  It seems people are optimists by nature and while that helps us to believe it is physically possible to build skyscrapers it probably does not help us estimate the cost of the skyscraper.  

So what is to be done?  The old way of doing things was to estimate the cost of a proposed project and compare it against the projected return (cost saving, ROI, new customers, whatever) in order to green light a project or not.  We *know* the estimate is going to be off, in some  cases by an order of magnitude.  If we are honest we can also say that the projected return suffers from the same problem.  So I suggest dropping the whole thing and change how you green light projects.

**Seed money:** Give a Product Owner (there should be one...) some seed money and a team, maybe a month, maybe 3 depending on the product.  Get them to build something real, something representative of a final product.  Have a second round of funding meeting where Product Owners pitch for funding based on what they have built.  By that point they should have a much clearer picture of the real cost required (being 1% complete, 10% complete...) to build a production ready product (including architectural signoff on plans, quality metrics on what has been built so far etc).  The return on investment should also be easier to quantify if not actually visualize with the working prototype.

Funding should be pretty ruthless at this point, it should be easy to scrap a product that is not showing enough promise in favour of something else.  

<hr/>

**Notes**

<a name="1">[1]</a> https://en.wikipedia.org/wiki/Sydney_Opera_House

<a name="2">[2]</a> https://en.wikipedia.org/wiki/List_of_failed_and_overbudget_custom_software_projects  
When I started looking at this I was reminded of something from another interest of mine, history.  Prior to Napoleon wars were relatively smaller affairs with troop numbers limited to around 30K due to economic constraints.  Napoleon was able to gather armies up to 300K-500K men funded a booming french economy.  The huge cost of the software projects listed here are far beyond the reach of most enterprises.  Much like war, mistakes at this scale can only really be funded by the economy of a large nation.

<a name="3">[3]</a> https://en.wikipedia.org/wiki/NHS_Connecting_for_Health

<a name="4">[4]</a> https://en.wikipedia.org/wiki/Universal_Credit

<a name="5">[5]</a> https://en.wikipedia.org/wiki/Expeditionary_Combat_Support_System

<a name="6">[6]</a> http://web.mit.edu/curhan/www/docs/Articles/biases/67_J_Personality_and_Social_Psychology_366,_1994.pdf