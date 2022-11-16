CREATE OR REPLACE FUNCTION TRUNC_TS(TS IN DATE) RETURN DATE AS RES DATE;
BEGIN
    RES := round((TS - trunc(TS)) * 48)/48 + trunc(TS);
    return RES;
END;

SELECT TRUNC_TS(to_date('12.10.2021 12:45:11', 'dd.mm.yyyy hh:mi:ss')) from dual;
