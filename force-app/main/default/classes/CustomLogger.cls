//I created this class only for exposing the package's content to the LWC, but it works without intervention with Apex code & triggers

public with sharing class CustomLogger {
    @AuraEnabled(cacheable=true)
    public static void error(String message) {
        Logger.error(message);
    }

    @AuraEnabled
    public static void warn(String message) {
        Logger.warn(message);
    }

    @AuraEnabled
    public static void info(String message) {
        Logger.info(message);
    }

    @AuraEnabled
    public static void debug(String message) {
        Logger.debug(message);
    }

    @AuraEnabled
    public static void fine(String message) {
        Logger.fine(message);
    }

    @AuraEnabled
    public static void finer(String message) {
        Logger.finer(message);
    }

    @AuraEnabled
    public static void finest(String message) {
        Logger.finest(message);
    }

    @AuraEnabled
    public static void saveLog() {
        Logger.saveLog();
    }
}
