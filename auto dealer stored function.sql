   CREATE OR REPLACE FUNCTION total_sales(ref refcursor) 
   RETURNS refcursor 
   AS 
   $$
    BEGIN
        OPEN ref FOR SELECT SUM(price) FROM purchase_invoice;   
        RETURN ref;                                                       
    END;
    $$ 
    LANGUAGE plpgsql;

   BEGIN;
   SELECT total_sales('a_sum');
   FETCH ALL IN "a_sum";
   COMMIT;

