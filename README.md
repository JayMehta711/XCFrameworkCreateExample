# XCFrameworkCreateExample
Build xcframework using Aggregated Targets in xcode.

# Aggregated Targets
Aggregated Targets is used when we need to build multiple targets together somehow.

<img width="300" alt="Screenshot 2022-12-21 at 3 04 06 PM" src="https://user-images.githubusercontent.com/6177191/208872341-dcd49665-ce82-4329-a995-fb8bd0c4c025.png">

you can give name like "AggregatedFramework"
Change the scheme to "AggregatedFramework" Scheme and then edit scheme.
Choose Run tab from the left panel then change the build configuration to release.

<img width="300" alt="Screenshot 2022-12-21 at 3 07 58 PM" src="https://user-images.githubusercontent.com/6177191/208873100-78f75018-89fa-483e-b80c-434ac2bc81d7.png">

Go back and choose "AggregatedFramework" from the targets then choose Build Phases then click on the little + to add a dependency, and choose Grocerybag Framework Target.

<img width="350" alt="Screenshot 2022-12-21 at 3 09 58 PM" src="https://user-images.githubusercontent.com/6177191/208873486-1fba0bf0-dc3e-4882-81da-5a51beadbeb5.png">

Then click on the other + above Target dependancies word to add a New Run Script Phase
<img width="500" alt="Screenshot 2022-12-21 at 3 11 43 PM" src="https://user-images.githubusercontent.com/6177191/208874077-f5f9c44b-5c1f-45ca-9fe2-263c5d831014.png">

You can rename the script to what it will do, for example "Create Aggregated Framework"
<img width="500" alt="Screenshot 2022-12-21 at 3 20 35 PM" src="https://user-images.githubusercontent.com/6177191/208875567-b73fcf17-d183-407b-9aaf-02f0f9bb1361.png">

Start typing in the script area or copy past from this sample project.

<img width="500" alt="Screenshot 2022-12-21 at 3 26 06 PM" src="https://user-images.githubusercontent.com/6177191/208876699-a68b5502-3119-40d3-991d-816e87756f37.png">

After script part ready choose the AggregatedTarget and run you project.
Once it builds successfully check your project directory, you should be able to see a new directory named xcframework which contains your framework and if you look inside you should see both simulator and iphone architectures are in there.

**if you received below error while build framework.**
"No 'swiftinterface' files found within ..."
<img width="1122" alt="Screenshot 2022-12-21 at 3 33 08 PM" src="https://user-images.githubusercontent.com/6177191/208878558-2afe35a6-c7e9-48c6-9558-dbc6ca925d94.png">

**Please follow below steps:**

Project target-> Build settings-> BUILD_LIBRARY_FOR_DISTRIBUTION = YES Project target-> Build settings-> Skip Install = NO

**Or** 

Select Framework from target like "Grocerybag" goto Build settings-> BUILD_LIBRARY_FOR_DISTRIBUTION = YES

and then again come back to AggregatedFramework tagrget and try to build.
<img width="500" alt="Screenshot 2022-12-21 at 3 40 47 PM" src="https://user-images.githubusercontent.com/6177191/208879832-fb3eecf3-8c62-4989-b6f2-ca3029480197.png">

**OUTPUT:**


<img width="320" alt="Screenshot 2022-12-21 at 3 42 31 PM" src="https://user-images.githubusercontent.com/6177191/208880179-898d04b3-debb-4abd-9b7c-4197399897bb.png">

**Now you can darg and drop framework in your project and import when you needed.
Check below image for reference:**

<img width="1000" alt="Screenshot 2022-12-21 at 3 47 02 PM" src="https://user-images.githubusercontent.com/6177191/208881339-a05fa55c-cc60-490c-b6e9-457f93fc98ce.png">

**For further learning you can check below Apple video:**
https://developer.apple.com/wwdc19/416
