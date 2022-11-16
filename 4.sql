create sequence OBJECT_SEQ
    maxvalue 1000
/

CREATE OR REPLACE TRIGGER OBJECTS_TRIGGER_ID
    BEFORE INSERT
    ON OBJECTS
    FOR EACH ROW
    BEGIN
        IF(:NEW.OBJECT_ID IS NULL) THEN
            SELECT OBJECT_SEQ.NEXTVAL INTO :NEW.OBJECT_ID FROM DUAL;
        end if;
    end;