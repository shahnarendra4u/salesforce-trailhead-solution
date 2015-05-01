@isTest
public class TestVerifyDate {
    @isTest static void checkDateIn30() {
        Date date1=Date.today();
        Date date2=Date.today();
        system.debug('1st.' +VerifyDate.CheckDates(date1, date2.addDays(35)) + '    ' + date2);
        System.assertEquals(date2,VerifyDate.CheckDates(date1, date2));
    }
    @isTest static void checkDateOutOf30() {
        Date date1=Date.today();
        Date date2=Date.today();
        system.debug('2nd.' + VerifyDate.CheckDates(date1, date2)  + '   ' +Date.newInstance(date1.year(), date1.month(), Date.daysInMonth(date1.year(),date1.month())) );
        System.assertEquals(Date.newInstance(date1.year(), date1.month(), Date.daysInMonth(date1.year(),date1.month())),VerifyDate.CheckDates(date1, date2.addDays(35)));
    }
}