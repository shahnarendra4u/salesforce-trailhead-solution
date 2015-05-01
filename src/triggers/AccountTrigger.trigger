trigger AccountTrigger on Account (before insert,before update) {
CalloutClass.makeCallout();
}