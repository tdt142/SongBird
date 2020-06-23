<h1>Song Bird (<a href="https://songbird-180a0.web.app">Website</a>) </h1>
<ol>
    <li><h3>Use of files:</h3>
    <ul>
        <li>admin_login.html: Login for admin, team members only</li>
        <li>admin_update.html: For database update (ex: add more songs), for admin only</li>
        <li>category.html: Showing available categories</li>
        <li>song.html: Generate songs automatically base on chosen category</li>
        <li>hearsong.html: Watch song videos, read reviews, make reviews for chosen song </li>
        <li>homepage.html: Introduce group members, homepage.</li>
        <li>index.html: Login page for user</li>
        <li>login.html: Login page for user (Alternate page for index.html)</li>
        <li>signup.html: Signup page for user</li>
        <li>userlogin.html: Choose type of login</li>
        <li>mainpages.css: CSS styling page for normal pages</li>
        <li>signup.css: CSS styling page for login/ signup pages</li>
    <ul>
    </li>
    <li><h3>Set up:</h3>
    <ul>
        <li>Clone, Download git repository</li>
        <li>Have to login (use admin_login.html for admins, login.html for users) to be able to use functionality
        </li>
        <li>Use admin_update.html for updating database. Minizing edit directly on database </li>
        <li>Reference the comment sections in codeblocks to understand how to use or change it.</li>
        <li>Use project Firebase page to add admin account (Admin accounts can not be created anywhere else) </li>
    </ul>
    </li>
    <li><h3>Dependencies:</h3>
    <ul>
        <li><b><u>For admins:</b></u> All updates activities need to login by admin account (Not normal user accounts)</li>
        <li><b><u>For admins:</b></u> Need to use admin_login.html to be able to use admin_update.html</li>
        <li>All user functionalities could not be used if user did not login</li>
        <li>song.html page depends on category.html page to generate songs</li>
        <li>hearsong.html page depends on category.html and song.html to generate content for songs, add comments, view comments for that song</li>
    </ul>
    </li>
</ol>
        
     