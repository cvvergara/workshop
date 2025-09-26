\o configuration_structure.txt
\dS+ configuration
\o configuration_contents.txt

SELECT tag_id, tag_key, tag_value
FROM configuration
ORDER BY tag_id;

\o configuration_used.txt

SELECT distinct tag_id, tag_key, tag_value
FROM ways JOIN configuration USING (tag_id)
ORDER BY tag_id;

\o configuration_end.txt
\o
