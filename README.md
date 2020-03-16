# Wakhir

Project: WaKhir 


Description: 

Wakhir is a mobile app that keeps track of the interactions among individuals to help reducing or controlling the spread of Covid-19 using peer-to-peer connectivity. A sophisticated algorithm enriched with the latest medical information on Covid-19, will estimate the risk level of each user based on his interactions with other app users. The collected information will make people safer by alerting them about dangerous encounters detected by GPS, Bluetooth, and WiFi Direct technologies. The data collected can help governments track and isolate infected individuals efficiently and promptly. The statistical information collected from users experiences can help scientists better understand Covid-19 infectiousness. 



Key features:

1- The user will create a profile providing information including (gender, nationality, age, medical history, etc) linking the account to his/her verified mobile number and email. 

2- The user will be given a unique ID shared with the authorities (ministry of health).

3- At any time a user can update his/her own health status (symptoms, Corona virus test result, travel history, etc). Alternatively, the status can be changed by the admin (ministry) based on tests.

4- As users move close to each other (WiFi/Bluetooth distance)  their devices will detect each other and communicate via short messages in the background using Bluetooth or WiFi Direct (P2P) (No Internet is needed). Discovered users will be shown to the user without revealing their personal identities (Only showing gender, skin colour, physical shape, nationality, glasses, etc) so they can be identified among the discovered users.

4- Each user’s device stores a list (tree) of all interactions he/she had over a defined period (14 days?) which will be forwarded to users approaching by in the future and may be uploaded to the App server (managed by authorities). 

5- All received interactions are processed by an intelligent algorithm (AI?) residing on the user’s device (and/or server) that analyses the risk level of the user’s recent exposures and updates his/her risk status (probability of being infected) accordingly. 

6- When a user approaches another user with a high risk, the approaching using will be notified by the app to take precautions. While users are moving by cars, the app should be smart to detect and ignore users in other cars within P2P distance. 

7- A user can manually indicate the interactions with all the recently discovered users such as if they shock hands, kissed, exchanged personal items, etc. 

8- In case a user tested positive or developed symptoms, all users who had interactions with the infected user will receive instant notification (through Internet connection). Also, users who interacted with those who contacted the positively-tested user will receive notifications and so on. 

9- Users who are determined by the algorithm (according to authority standards) as requiring self-quarantine or hospital quarantine will be marked so and notifications will be immediately broadcast to the authorities as well as all users interacted with them recently. 

10- Users who do not abide by the quarantine measures will be reported by the app to the authorities. Those users even if not carrying their phones or disabling the connectivity can be reported by other users who know them personally. 

11- A user can add individuals living in his household who are unable to join the app such as children and manually define their interactions with others. 

12- A user who contact an individual not shown in his/her discovered list, may indicate this interaction manually by providing the persons’ details (phone number, etc). Later, if this persons joins the app, this interaction will then show on the newly joining user’s list.



Extra features:

1- The app will send frequent hand-wash reminders to the user based on their interactions and movements. 
2- A smart watch version can detect if a user raised his hand to his face and reminds the user to wash hands immediately. 
3- User’s travel/commuting status is continuously monitored by the app using GPS and P2P interactions and points are earned accordingly. Users with high scores may be rewarded (creating incentives). 


Target Release Date: 
As soon as possible!


Required Man power: 
Managers, software analysts, data base experts, software engineers, developers, programmers (iOS/Android), testers, health professionals, graphic designers, network experts. AI experts. 



User Requirements

General requirements:

1- The app should come in iOS and Android versions. 

2- The app should be compatible with most iOS/Andriod versions currently in use. 

3- The app should not consume the phones battery considerably. 

4- The app should respect user’s privacy. 

5- The app can be used on multiple devices but not simultaneously. 





Sign-up / Login requirements:

1- After the first launch, the user is asked to create an account by providing the following minimum information:
	1- Phone number: Unique and verified using a code sent by sms.
	2- Email address: Unique and verified using email link verification.
           3- Password: Minimum 8 characters including numbers. 
           4- Forgotten password can be obtained by email/sms verification.
           

2- After sign-up, a unique login name (User ID) is created for the user.

3- Further details may be required if the app becomes official including:
	1- Civil ID. 
           2- Full name
           3- Home address

4- The user is shown a list of terms and conditions that he/she must accept before using the app.

5- The user is asked to grant permission for the app to use certain required phone features (location, notification, Wifi/Bluetooth connectivity, etc).










User Profile requirements:


1- The user has a profile which is divided into the following sections:

	Personal Info Profile: 
Age, 
Gender.
Personal photo (optional).
If no photo is provided, and avatar is created reflecting gender, skin colour, ethnicity, beard style, hair style, glasses, dress, body shape etc.
Profession.
           
	Health Profile: 
Specify any underlying health issues (asthma, diabetes, hypertension, pregnant, etc).


	Symptoms Profile: 
Headache
Body temperature (enter measurements over days)
Sneezing.
Coughing.
Diarrhoea/vomiting.
Body aches


	Travel history: 
The user can add a trip (only trips ended after December 2019) by selecting the the country visited and duration of the visit.


	Coronavirus Test Results:
User can add a test taken with the following info: Date/Time of test, Place of test, Test result (Positive/negative/Pending), user can upload a scan of the test result. 
The test result may be overridden by the admin (authorities) if the app becomes official.


Protective Measures:
User can specify if he is currently wearing a face mask, gloves, glasses, etc.
User can update a counter whenever he washes his hands. 


2- All above profiles must be completed after the first launch.

3- The user may edit any information later. 

2- A user can add up to 8 dependant accounts for children in his household. Every child’s profile is completed as above.  

3- Unique IDs will be generated for each dependant and associated to the parent’s ID. 

4- The user can add/remove/edit dependant accounts at any time.

5- If a dependant user wants to have a separate individual account, the dependant can sign-up as an existing dependant and entering the ID under the parent’s account. Upon acceptance of the parent user (email link), the dependant becomes a separate account.


Interaction Tracking System Requirements:

1- When the app starts, it automatically and periodically broadcasts discovery beacons using P2P connectivity (BLE or WiFi-Direct) to announce itself to other app users nearby. 

2- The frequency of beacons is adjustable by the admin and can depend on the user’s movement as detected by motion sensors or GPS. 

3- A beacon message contains the following information: 
	1- User ID of the sending user.
           2- User Complete Profile Info. 
           3- User’s “User Risk Value” (explained below). 
           4- User’s precaution measures (mask on, last hand wash, etc).

4- Other users within (P2P) range from the user broadcasting the beacon will receive the beacon message. 

5- The app should show the discovered users in the discovered list with optional notification. 

6- The app should estimate the distance between the user and all discovered peers based on signal strength and distinguish real interactions from insignificant ones such as users in different cars passing by each other in a street. 

7- When the estimated distance is shorter than a pre-defined threshold the app on both users’s devices will create an “Interaction” entry between the two users. 

8- This interaction entry will have the following attributes:
	1- The IDs of the two users.
           2- The time and duration of the interaction. 
           3- The location of the interaction (GPS coordinates, venue, etc).
           4- The Interaction Risk value (IRV) (explained below).          

9- After an interaction is created, the users’s “User Risk Value” (URV) (explained next) is recalculated and updated accordingly (as defined below). 

10- Any time the URV of a user changes, the new URV is sent by the Internet connection to all users in current interactions with this user and their URVs may be updated accordingly which may cause their URVs to change and so on. 


User Risk Value (URV):
 
1- The user’s risk value (URV) is a variable that reflects the probability the individual is infected by Corona virus.

2- The URV takes one of a number of risk levels and associated probabilities defined by health professionals (or possibly by deep learning). Example of such URV levels could be:




3- The URV probability for each level starts at the lowest value when the conditions of the URV level are present. 

4- The probability may increase as a result of interactions with other individuals. The additional probability due to an interaction is computed as the URV probability of the other user multiplied by the IRV probability. 

5- When the total probability exceeds the upper value of the URV, the new URV of the user is changed to the level corresponding to the new probability range.

6- The URV level may also change due to change of conditions (test results, travel, symptoms) and may go up or down.



Interaction Risk Value (IRV):

1- Each interaction entry between two users is given a probability (IRV) of transmission which is the probability that one of the two users will infect the other user in case he/she was actually infected. 

2- The IRV probabilities depends on protective measures, duration of interaction, distance, Indoor/Outdoor. 




3- Each user in an interaction entry can mark the interaction as inaccurate if he/she believes so. If the interaction is reported by both users it is deleted (this option can be controlled by the admin). 
4- Each user in an interaction can manually adjust its IRV according to his belief. 

5- If more than one interaction between two users is detected separated by a minimum period (defined by admin), the two interactions may be aggregated or most recent/most risky interaction will be kept while the others are deleted. 


Examples:

Scenario 1: Hassan joins the app. He has not been tested yet. He has not travelled recently. He is not having any symptoms. This brings his initial URV to “Very low Risk” with probability p1=(100/5,000,000) (currently confirmed cases to the total population). Hassan lives with 4 family members with same URV and his interactions with them have been of “Very High Risk”. This adds a probability of 4*m6*(100/5,000,000) to p1. If the total probability is still below p2 then his URV level remains “Very Low Risk”.

The next day, Hassan started feeling a headache and dry cough. He enters this into his app which brings his risk to level “Low Risk”. In turn, the URV of each of his family members will increase by m6*p2. Hassan became worried and went to test for Covid-19. The result came back negative. Hassan entered this into the app to bring his risk back to 0. The URV for each family member is reduced by m6*p2.

Scenario 2: Fatima having a URV of “Very Low Risk” went to the super market for shopping. After 10 days, a worker at that super market was diagnosed to be infected with covid-19. Fatima has interacted with this worker that day with a distance less than 1 meter but using gloves and mask and for less than 1 minutes. This is classified as High Risk. Her URV risk is updated by adding the value m4*1 to her current URV bringing her URV to “Very High Risk”. Only persons who have been in contact with Fatima after her visit to the super market will be affected.  



Quarantine Requirements:

1- When the user URV reaches a certain level, the user will be tagged as “Self-Quarantine” or “Institutional Quarantine” based on authority recommendations.

2- Users will the see the quarantine status of other users they approach or have interacted with. 

3- The app will count the number of days for the user quarantine and tag him as “not quarantined” when the recommended period is finished.

4- The app will also monitor the location of the self-quarantined user and in case a breach of quarantine is detected by GPS the user will be tagged so and a message is sent to authorities. 

5- Users can use the app to report self-quarantined users violating the quarantine measures. 

6- The start and end of institutional quarantine period are marked by authorities.

7- The start of self-quarantine period is marked by the user himself but possibly ended by authorities after testing. 




User Notification Requirements:

1-The user can turn the notifications on or off.

2- The user can receive notifications whenever the URV changes. A new interaction is detected. 

3- The user may choose to receive remainders to wash hands and to wear a face mask.




Data storage and Privacy Requirements:

1- The user’s profile data and interactions are stored locally on the user’s device. 

2- The data may be optionally stored on the app server if the app is officially released by the authorities.

3- A data base is created on the app server that stores all users profiles and interactions for statistical and national security reasons. 

4- Users may search and add other users using their User IDs.

5- If two users add each others as friends/family, they can access more information in each other’s profiles.



Graphical User Interface Requirements:

1- The app should have a user-friendly and self-explanatory GUI.

2- The app has an Arabic and an English version and the user can switch at any time.

3- The app structure should include the following pages:

     A. The main login/sign-up page: This is shown on first launch or after sign-out.
     B. User Profile Page: User enters/updates his details as above.
     C. User Personal Hygiene and Protection Page: Shows a counter for recent hash-           washes/sanitiser users. The user can toggle/gloves between mask on/off.
     D. User Symptoms Page: The user can toggle each symptom (on and off) and specifies intensity, time and duration of symptom.
     E. User URV Page: Shows current URV of the user and how it changed recently.
     F.  Current Interactions Page:  Shows all users that are currently being detected/connected  by P2P showing the URV value (colours) for each user. The user can click on  each detected user to viewer further details. After the connection to these users ends these interactions are shown in the Recent Interactions Page:
     G. Recent Interactions Page: Shows all interactions with sort and search options. Each interaction can be selected to view further details. 
     H. Messages: This page shows messages between the user and authorities. 


4- The UI includes a means to invite others to use the app by sms, or email.




Smart Watch Requirements:

1- The app can come with a Smartwatch extension than delivers notifications directly to the watch.

2- The watch app can be used to enter personal hygiene actions (hand wash etc). 

3- The watch app can view the list of approaching users with high risk.












Author: Mohammed S Bahbahani
Email: ms.bahbhani@paaet.edu.kw
Date: 16/3/2020



