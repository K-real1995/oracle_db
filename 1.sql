CREATE OR REPLACE FUNCTION Hash_MD5 (p_msisdn IN VARCHAR2) RETURN VARCHAR2 IS
      v_secret VARCHAR2(32) := 'kirill_secret_key';
   BEGIN
      RETURN (DBMS_CRYPTO.HASH (UTL_I18N.STRING_TO_RAW (v_secret||p_msisdn, 'AL32UTF8'), DBMS_CRYPTO.HASH_MD5));
   END Hash_MD5;



select Hash_MD5('Privet') from dual;
