--  @ins_new_company.sql
--
create or replace procedure ins_company 
IS

next_cuit         TAXPAYER_CORP.TC_CUIT_NUMBER%TYPE;
next_boid         BUSINESS_OWNER.BO_OWNER_ID%TYPE;
owner_id          BUSINESS_OWNER.BO_OWNER_ID%TYPE;
owner_ind_id      TAXPAYER_IND.TP_DOCUMENT_NUMBER%TYPE;
Owner_Name        BUSINESS_OWNER.BO_OWNER_NAME%TYPE;
Owner_DOB         BUSINESS_OWNER.BO_DOB%TYPE;
addr_mstr_id      ADDRESS_MASTER.AM_ADDRESS_ID%TYPE;
in_TMP_ID         TMP_TAXPAYER_CORP.TMP_ID%TYPE;
Company_Name      TAXPAYER_CORP.TC_CORP_NAME%TYPE;
Company_Startdate TAXPAYER_CORP.TC_CORP_NAME%TYPE;
Company_Website   TAXPAYER_CORP.TC_CORP_NAME%TYPE;
Street_Address    ADDRESS_MASTER.AM_ADDRESS1%TYPE;
Street_Address2   ADDRESS_MASTER.AM_ADDRESS2%TYPE;
City              ADDRESS_MASTER.AM_CITY%TYPE;
State             ADDRESS_MASTER.AM_STATE_PROV%TYPE;
Country           ADDRESS_MASTER.AM_COUNTRY%TYPE; 
Zip               ADDRESS_MASTER.AM_POSTAL_CODE%TYPE;
eMail             ADDRESS_MASTER.AM_EMAIL%TYPE; 
Phone             ADDRESS_MASTER.AM_HOME_PHONE%TYPE; 
Mobile            ADDRESS_MASTER.AM_CELL_PHONE%TYPE; 
Fax               ADDRESS_MASTER.AM_FAX%TYPE;

CURSOR GetNewCorp IS
  SELECT TMP_ID, NC_CORP_NAME, NC_START_DATE, NC_WEBSITE, NC_ADDRESS1, NC_ADDRESS2, NC_CITY, NC_STATE_PROV, NC_COUNTRY, NC_POSTAL_CODE, NC_EMAIL, NC_HOME_PHONE, NC_CELL_PHONE, NC_FAX
  FROM   TMP_TAXPAYER_CORP;
  
CURSOR GetNewOwner (in_TMP_ID IN NUMBER) IS
  SELECT NO_OWNER_NAME, NO_DOB, NO_ADDRESS1, NO_ADDRESS2, NO_CITY, NO_STATE_PROV, NO_COUNTRY, NO_POSTAL_CODE, NO_EMAIL, NO_HOME_PHONE, NO_CELL_PHONE, NO_FAX
  FROM   TMP_BUSINESS_OWNER
  WHERE  TMP_ID = in_TMP_ID;
  
BEGIN
   
   OPEN GetNewCorp;
   
   FOR x IN 1 .. 20000
   LOOP
    FETCH GetNewCorp INTO in_TMP_ID, Company_Name, Company_Startdate, Company_Website, Street_Address, Street_Address2, City, State, Country, Zip, eMail, Phone, Mobile, Fax;
    EXIT WHEN GetNewCorp%notfound;
	
    select max(TC_CUIT_NUMBER)+1 into next_cuit from TAXPAYER_CORP;
	select seq_address_master.NEXTVAL into addr_mstr_id from dual;
   	insert into ADDRESS_MASTER (AM_ADDRESS_ID, AM_ADDRESS1,    AM_ADDRESS2,     AM_CITY, AM_STATE_PROV, AM_COUNTRY, AM_POSTAL_CODE, AM_EMAIL, AM_HOME_PHONE, AM_CELL_PHONE, AM_FAX)
    values                     (addr_mstr_id,  Street_Address, Street_Address2, City,    State,         Country,    Zip,            eMail,    Phone,         Mobile,        Fax);

    insert into TAXPAYER_CORP (TC_CUIT_NUMBER, TC_CORP_NAME,     TC_START_DATE,     TC_WEBSITE,      TC_ADDRESS_ID, TC_OWNER_ID)
    values                    (next_cuit,      Company_Name,     Company_Startdate, Company_Website, addr_mstr_id,  owner_id);

    OPEN GetNewOwner (in_TMP_ID);
	
	   FOR x IN 1 .. 20000
       LOOP
        FETCH GetNewOwner INTO Owner_Name, Owner_DOB, Street_Address, Street_Address2, City, State, Country, Zip, eMail, Phone, Mobile, Fax;
        EXIT WHEN GetNewOwner%notfound;
	
        select TP_DOCUMENT_NUMBER 
        into   owner_ind_id 
        from   TAXPAYER_IND 
        where  TP_TAXPAYER_NAME = Owner_Name 
        and    TP_DOB           = Owner_DOB
        ;
   
        select bo_owner_id
        into   owner_id
        from   business_owner
        where  BO_OWNER_NAME = Owner_Name
        and    BO_DOB        = Owner_DOB
        ;
   
        IF owner_id IS NULL then
           select max(bo_owner_id)+1 into owner_id from business_owner;
        END IF;
        select seq_address_master.NEXTVAL into addr_mstr_id from dual;
        insert into ADDRESS_MASTER (AM_ADDRESS_ID, AM_ADDRESS1,    AM_ADDRESS2,     AM_CITY, AM_STATE_PROV, AM_COUNTRY, AM_POSTAL_CODE, AM_EMAIL, AM_HOME_PHONE, AM_CELL_PHONE, AM_FAX)
        values                     (addr_mstr_id,  Street_Address, Street_Address2, City,    State,         Country,    Zip,            eMail,    Phone,         Mobile,        Fax);

		insert into BUSINESS_OWNER (BO_OWNER_ID, BO_CUIT_NUMBER, BO_TAXPAYER_NUMBER, BO_OWNER_NAME, BO_DOB,    BO_ADDRESS_ID)
        values                     (owner_id,    next_cuit,      owner_ind_id,       Owner_Name,    Owner_DOB, addr_mstr_id);

       END LOOP;
       CLOSE GetNewOwner;
 
   END LOOP;  
   CLOSE GetNewCorp;
END;
/
sho err
