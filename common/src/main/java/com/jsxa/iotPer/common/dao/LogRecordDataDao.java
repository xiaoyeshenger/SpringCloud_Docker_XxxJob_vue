package com.jsxa.iotPer.common.dao;

import com.jsxa.iotPer.common.bo.po.LogRecordData;
import com.jsxa.iotPer.common.mongo.MongoBaseDao;
import org.springframework.data.domain.Page;


public interface LogRecordDataDao extends MongoBaseDao<LogRecordData> {

    Page<LogRecordData> getLogRecordDataPageList(String alarmType, Integer dataType,String deviceId, String searchKey, Integer pageIndex, Integer pageSize);

    LogRecordData getLastLogRecordData(String deviceId);
}
