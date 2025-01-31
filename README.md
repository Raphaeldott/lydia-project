This repository is for the Technical test given by Lydia:

Build an app that fetches data from this service :
randomuser.me

Goal of the app:
• Use https://randomuser.me/api/?results=10 to get 10 contacts for each 
api call
• Like most lists, implement infinite scro
• Reload of the list of users should be possible
• The app must handles connectivity issues and displays the complete last 
results received if it can't retrieve one at launch.
• Touching an item on the list should make appear a detail page listing 
every attribute.

Technical implementation constraint:
• The app must be in Swift.
• Any third-party libraries are allowed but the choice must be justifie
• Controllers should be made without storyboard or any xib.
• SwiftUI is not allowed.

As i have never used Swift znd have 0 expérience in mobile app programation
i will estimate the time needed to finish this app:

-Learning and setup (30-50 hours)

-Implementing the app (40 hours)

-Debugging (15 - ...hours)

I will have at most have 20 hours this week for this project so my main objectif
will be to learn really fast about  API and make it to use directly (5 hours),
then make the app usable (15 hours)

It took 10 hours to set swift on windows, you will find the solution that worked for me:
If you have more luck you could usually install virtualbox and download the mac environement but for me the mac file was always broken:
-https://www.youtube.com/watch?v=yUsc4VfkkvM

I found another way that partially work on VScode:
https://www.swift.org/install/windows/
Once you have installed this version on your terminal you will have to modify the setting.json file 
of the directory of your swift project, so you can write the path to the Toolchains of swift in your computer.
for example:
{
    "lldb.library": "C:\\Users\\ERIC\\AppData\\Local\\Programs\\Swift\\Toolchains\\6.0.2+Asserts\\usr\\bin\\liblldb.dll",
    "lldb.launch.expressions": "native",
    "editor.quickSuggestions": {
        "other": false,
        "comments": false,
        "strings": false
    }
}

I still have a lot of problems on the output in VScode but my program can compile and execute.

Here is the links of the courses i have watched to learn swift:

https://www.freecodecamp.org/news/how-to-make-your-first-api-call-in-swift/
https://www.youtube.com/@SwiftfulThinking

I couldnt find a way yet to test my program since URLSession.shared isn't implemented properly on Windows,
meaning the Api dont work.

I have divided my program in 3 parts:(5 hours)
-Structure of the user date
-The function that will fetch the data with the api
-The call of this function using the structure

I couldnt give it more time this week so i didnt make all the implementation asked and i dont even know yet if this program works properly as i had imagined it, and the Json files are new to me so i dont really get yet how to use them.

I hope my work will make sens, thank you for your correction