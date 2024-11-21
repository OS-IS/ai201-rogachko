CREATE OR REPLACE FUNCTION get_data(attribute TEXT, value TEXT)
RETURNS TABLE(a_id INT, name TEXT, year INT, spot_conf INT) AS $$
BEGIN
    RETURN QUERY 
    EXECUTE 'SELECT a_id, name::TEXT, year, spot_conf FROM auto WHERE ' || attribute || ' = ''' || value || '''';
END;
$$ LANGUAGE plpgsql;



CREATE OR REPLACE FUNCTION get_data_secure(attribute TEXT, value TEXT)
RETURNS TABLE(a_id INT, name TEXT, year INT, spot_conf INT) AS $$
BEGIN
    RETURN QUERY 
    EXECUTE 'SELECT a_id, ' || quote_ident(attribute) || '::text, year, spot_conf FROM auto WHERE ' || quote_ident(attribute) || ' = ' || quote_literal(value);
END;
$$ LANGUAGE plpgsql;


