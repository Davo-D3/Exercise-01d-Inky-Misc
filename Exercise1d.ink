/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night




-> seashore

== seashore ==
You are sitting on the beach. 

It is{ advance_time() } 

* { time == 2} [ Go into the ocean] -> Ocean

+ [ Stroll down the beach ] -> beach2
-> DONE

== beach2 ==
This is further down the beach.

It is{ advance_time() } 
*{ time == 1} [Pick up Seashells] -> shells
+ [Stroll back up the beach] -> seashore
* { time == 2} [ Go into the ocean] -> Ocean

== shells ==
You pick up the shells
-> beach2

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }

    
        
    ~ return time
    
    
    

=== Ocean  ===
You are now in the ocean
*[ Walk to home] ->Crab_home
-> END

=== Crab_home ===
You return home to surronded by 158 of your children after coming home from an long and productive day.
{ advance_time() } 
+ [Sleep] -> Crab_home
+{time == 0}[Go to the Forge] -> Crab_forge
+{ time == 1} [ Go to the city] -> Crabdom

-> END

=== Crab_forge ===
The great forge of Crabeou son of BOB.
{ advance_time() } 
* {time == 2 } [ Go Home] -> Crab_home
+ [ work ] -> Crab_home
-> END



=== Ocean_floor ===
This is the content of the knot.
-> END

=== Crabdom ===
Sand castlse and sea guard as for as the eye can see
+[Go to Market ] ->Crab_Market
+[ Walk home] -> Crab_home
-> END

=== Crab_Market ===
In this market sea shells mean everything
* [ buy food for some sea shells] -> Crabdom
-> END



