import { LightningElement } from 'lwc';
import { createLogger } from 'c/logger';

export default class LoggerDemo extends LightningElement {
    logger;

    async connectedCallback() {
        this.logger = await createLogger();
        this.logger.setScenario('some scenario');
        this.logger.finer('initialized demo LWC');
    }

    logSomeStuff() {
        if (this.logger) {
            this.logger.error('Add log entry using Nebula Logger with logging level == ERROR').addTag('some important tag');
            this.logger.warn('Add log entry using Nebula Logger with logging level == WARN');
            this.logger.info('Add log entry using Nebula Logger with logging level == INFO');
            this.logger.debug('Add log entry using Nebula Logger with logging level == DEBUG');
            this.logger.fine('Add log entry using Nebula Logger with logging level == FINE');
            this.logger.finer('Add log entry using Nebula Logger with logging level == FINER');
            this.logger.finest('Add log entry using Nebula Logger with logging level == FINEST');
            this.logger.saveLog();
        }
    }
}
