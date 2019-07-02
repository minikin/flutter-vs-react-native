The Xcode project defines build configurations: Debug, Release
Flutter expects a build configuration named Profile or similar.
Open Xcode to fix the problem:
  open ios/Runner.xcworkspace
1. Click on "Runner" in the project navigator.
2. Ensure the Runner PROJECT is selected, not the Runner TARGET.
3. Click the Editor->Add Configuration->Duplicate "Release" Configuration.

   If this option is disabled, it is likely you have the target selected instead
   of the project; see:
   https://stackoverflow.com/questions/19842746/adding-a-build-configuration-in-xcode

   If you have created a completely custom set of build configurations,
   you can set the FLUTTER_BUILD_MODE=profile
   in the .xcconfig file for that configuration and run from Xcode.

4. If you are not using completely custom build configurations, name the newly created configuration profile.
Could not build the precompiled application for the device.

Error running application on Sasha’s iPhone.