select f_code as item_code, concat(f_code,f_name) as item_name, f_icon as item_icon from t_defectitem where f_defectType = 1



SELECT f_name AS team_name,defect_name,defect_count FROM (
SELECT F_NAME AS defect_name,count(F_NAME) AS defect_count,F_TEAMCD FROM T_DefectRecord a,T_DefectItem b WHERE a.F_defectitemcd=b.F_CODE AND F_MATCD AND '2019-12-03'<=F_DATE AND '2019-12-18'>=F_DATE GROUP BY F_NAME,F_TEAMCD) c,T_Team d WHERE c.F_TEAMCD=d.F_ID 




SELECT F_CODE as code,F_NAME as name,COUNT(*) AS count,F_TEAMCD FROM T_DefectRecord LEFT JOIN T_DefectItem ON T_DefectRecord.F_DEFECTITEMCD = T_DefectItem.F_CODE WHERE   F_MATCD = 10100800 AND '2019-12-03'<=F_DATE AND '2019-12-18'>=F_DATE group by F_TEAMCD,F_CODE




SELECT * from T_DefectRecord a ,t_shift b WHERE a.F_SHIFTCD = b.F_id 



SELECT * from T_RunRecordTemp where id=297

insert into T_DefectRecord 
SELECT '4',MAX(ID) from T_RunRecord

