/*
 * Copyright 2005-2014 The Kuali Foundation
 * 
 * Licensed under the Educational Community License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.opensource.org/licenses/ecl1.php
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.kuali.coeus.sys.framework.scheduling.seq;

import org.quartz.CronTrigger;
import org.quartz.TriggerUtils;

import java.text.ParseException;
import java.util.Date;
import java.util.List;

/**
 * This class is default implementation of ScheduleSequence Interface.
 * <p>
 * This implementation should be used if dates generated by schedule sequence needs no modification. Implementation uses
 * org.quartz.TriggerUtils class to generate List of dates from Cron expression.
 * <p>
 * It uses current time zone, where application is hosted. 
 * <p>
 * Note: Dates used in generating schedule must be wrapped with required time accuracy.
 * e.g.  Start Date: 02/01/09 10:10 End Date: 02/05/09 10:10 
 * Generated Dates will be in between 02/01/09 10:10 and 02/05/09 10:10.
 * Any date expected before 02/01/09 10:09 will be ignored. Date 02/01/09 10:00 will be ignored.
 * Any date expected after  02/05/09 10:11 will be ignored. Date 02/05/09 12:00 will be ignored.
 */
public class DefaultScheduleSequence implements ScheduleSequence {
    
    /**
     * @see ScheduleSequence#executeScheduleSequence(java.lang.String, java.util.Date, java.util.Date)
     */
    @SuppressWarnings("unchecked")
    public List<Date> executeScheduleSequence(String expression, Date startDate, Date endDate) throws ParseException {

        CronTrigger ct = new CronTrigger(NAME, GROUP, JOBNAME, JOBGROUP, startDate, null, expression);
        return TriggerUtils.computeFireTimesBetween(ct, null, startDate, endDate);
    }

}
