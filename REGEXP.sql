------------------- string before special cheracter----------------------------
REGEXP_SUBSTR(CONVERSATION_ID,'[^_]+',1,1) 
REGEXP_SUBSTR(MOR_REFERENCE_VALUE,'[^_]+',1,2)


----------------------------------just number-----------------------------------
REGEXP_REPLACE(REGEXP_SUBSTR(MAE_DETAILS,'[^-]+',1,1),'[^0-9]', '')
REGEXP_SUBSTR(MAE_DETAILS,'(\d+)',1,1)
REGEXP_REPLACE(REGEXP_SUBSTR(MAL_REASON, '[^*]+'),'[^0-9]', '')


--------------string after special cheracter------------------------------------
REGEXP_REPLACE(MAE_DETAILS, '^[^-]+[-]', '')
REGEXP_REPLACE(MAE_DETAILS, '^[^.]+[.]', '')
TRIM(REGEXP_SUBSTR(REGEXP_SUBSTR(MAL_REASON,'[^:]+',1,2), '[^,]+'))


