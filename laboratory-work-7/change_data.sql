
CREATE OR REPLACE FUNCTION change_data(a_id TEXT, new_name TEXT)
RETURNS VOID AS $$
BEGIN
    EXECUTE 'UPDATE auto SET name = ''' || new_name || ''' WHERE a_id = ''' || a_id || '''';
END;
$$ LANGUAGE plpgsql;



CREATE OR REPLACE FUNCTION change_data_secure(p_a_id INT, new_name TEXT)
RETURNS VOID AS $$
BEGIN
    UPDATE auto
    SET name = new_name
    WHERE auto.a_id = p_a_id;
END;
$$ LANGUAGE plpgsql;






