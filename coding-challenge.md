# ABC Coding Challenge
​
Thank you for your interest in working on the **ABC** team! Below is a coding challenge we will use to evaluate your skills and see how well we would work together as a team. Please complete the following requirements, writing code that you would be comfortable submitting to a collaborative enterprise application codebase. The app does not have to have a beautiful UI but must be functional as per the requirements. We will discuss the code with you so be prepared to justify your architectural and stylistic choices.
​
​
# WeatherZip
​
The app will consist of one screen. On this screen, the app will display a zip code (chosen and hard-coded by you), as
well as details of the current weather for that zip code. The details will include:
1. The name of the City for that zip code.
2. The name of the State for that zip code.
3. A general description of the current weather at that zip code provided by the API (e.g. "Sunny, Mild")
4. The current temperature for that zip code.
5. An icon that represents the current weather conditions at that zip code. (e.g. a Sun image)
​
The above data can all be provided by **Weather API**. You will have to [sign up](https://www.weatherapi.com/signup.aspx) for a free account to use it. You're free to use a different API service if you'd like as long as it can satisfy the above requirements.

Please use native Swift with UIKit and not SwiftUI, as most code our team will be working on cannot use SwiftUI at this time.



Feedback from a reviewer
•    The network layer was put in an extension of the ViewController, instead of being separated or abstracted. This detracts from the testability of the data processing
•    The network layer extension was named GetAPICall, which does not reflect a naming convention that could keep things organized as the projects grows in size
•    There was some messiness in the project, like a reference in the project file to the deleted View folder, resulting in a red folder in the project hierarchy, and commented out code left in
•    The constraints were not configured in a localization-friendly manner. If the language changed the text could be shrunk or truncated, and any changes that needed to be made to the view would have resulted in having to do all the constraints from scratch.
•    If the iconURL was malformed at all from the server, it would have resulted in a crash due to a force unwrap on line 52
