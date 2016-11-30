#Proposal

**Problem solved for the user**

Imagine yourself travelling through Central-America. Lot&#39;s of places to go and things to see. Before you left your country of residence you did some research. Part of that research was talking to some friends of whom you knew that they already visited some of the countries you are going to visit. They recommended all kinds of places to stay, restaurants to eat in and things to see and do. But while traveling you notice that you didn&#39;t remember all those places. What was it that they recommended exactly? This application will end that problem forever.

This will be an application for travellers and people who want to discover the unknown. It will allow you to share experiences you had with your friends and use theirs.

The idea is that the user can follow other users (people). These people could be friends, friends of friends, relatives or anybody else. People that you think have the same interests as you and because of that the same travel interests. So when you arrive in a new place you can use the app to check whether users that you are following visited that place before. If so, you can use the experiences of those users for your own benefit. So if you choose wisely who you follow, you will only get recommendations that are useful to you.

**Features**

* User can create an account.
* User can follow accounts of other users.
* User can add a recommendation connected to a location.
    1. Add on is current location.
    2. Add on any location by tabbing (holding on map).
* With the recommendation the user can:
    1. Add a title.
    2. Add a description.
    3. Add a photo (or multiple).
    4. Add a category.
    5. Add a place name.
* User can view a map (map initially at user&#39;s location).
* Map has pinpoints with recommendations provided by the users that the user is following.
* When pinpoint is tabbed, user can review the recommendation.
* User can view list of recommendation of one specific user (who the user is following).
* User can view a list of all recommendations connected to a certain place or category.

**Parts of the application**

The app is going to be divided into the following parts:

* Login/signup screen: Login and sign up.
* Main screen: A map view, which will be the main screen of the application. From there the users will be able to navigate to the other parts.
* Add recommendation screen: A screen to add a recommendation. You can reach this screen by clicking on the add button on the main screen or tabbing and holding a position on the map view (one for adding on your current location en the other for any location the user wishes).
* Friends screen: A screen where you can see which friends you are currently following (in a table view). By clicking on one of those friends you will be directed to their profile.
* Profile screen: Here the user can see some basic information about the profile he selected. Also he can review the recommendations given by that user.
* Personal profile screen: Here the user can review his basic information and the recommendations that he has given.
* Fiend friend screen: On the friend&#39;s screen, there is a find button which directs the user to a screen with a search box. Here the user can type in the name of a friend he wants to follow. If that friend has a profile the user can click on that profile (shown in a table view) en is then directed to that profile&#39;s page. Here the user can click on a follow button to start following.
* View recommendation screen: This screen is reached in a number of ways.
    1. The first way is to click on a pin shown on the map. The screen will then show the recommendation that the pin represents.
    2. The second way is via the search field on the main screen. There you can search for a place name (like Amsterdam) en a roll down table view is shown (on top of the map) with all the recommendations in that place (added by the user his friends). If the user tabs on one of the recommendations shown in the roll down table view the View recommendation screen is shown.
    3. The third way to reach the screen is via a profile page of one of your friends. On the profile page there is a button with that friend his recommendations. Once the button is tabbed a table view is shown with al the recommendations of that friend. When the user tabs one of the table cells the View recommendation screen is shown.

**External components (APIs)**

* Parse (data storage)
* MapKit (viewing a map and knowing the users&#39; location)

**Data sets and sources**

All the data will be stored in a Parse database on the AMS Amazon Server. The only data sources will be MapKit and the users them self.

**Technical problems and limitations**

The application should be possible to create. The only thing that I have no clue how to create is the drop down table view that appears when the user tries to find recommendations on the Main screen in a certain place.

I have never worked with the combination of parse and AMS Amazon. That is going to take some figuring out ass well.

**Similar applications or visualizations**
