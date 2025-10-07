# Normalization

## First Normal Form (1NF):
No repeating groups and all attributes contain atomic values.

Status: The schema is already in 1NF as all attributes (like first_name, email, rating, comment) are atomic (indivisible) and there are no multi-valued attributes stored in a single column.

## Second Normal Form (2NF):
It must be in 1NF, and no non-key attribute is dependent on only a part of the composite primary key.

Status: All tables currently have single-column primary keys (UUIDs) except possibly for associative entities if they were created (but they weren't needed here). With single-column PKs, there are no partial dependencies, so the schema is in 2NF.

## Third Normal Form (3NF):
It must be in 2NF, and no non-key attribute is transitively dependent on the primary key (i.e., no non-key attribute is dependent on another non-key attribute).

Status: No non-key attribute in any table appears to determine the value of another non-key attribute.
