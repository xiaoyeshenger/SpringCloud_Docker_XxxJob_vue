package com.jsxa.iotPer.taskCenter.admin.core.alarm;

import com.jsxa.iotPer.taskCenter.admin.core.model.XxlJobInfo;
import com.jsxa.iotPer.taskCenter.admin.core.model.XxlJobLog;

/**
 * @author xuxueli 2020-01-19
 */
public interface JobAlarm {

    /**
     * job alarm
     *
     * @param info
     * @param jobLog
     * @return
     */
    public boolean doAlarm(XxlJobInfo info, XxlJobLog jobLog);

}
