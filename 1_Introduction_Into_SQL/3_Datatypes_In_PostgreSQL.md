https://www.postgresql.org/docs/9.1/datatype-numeric.html

# Integral Numbers

| name        | Bytes | Description                          | Range                                                            |
|-------------|-------|--------------------------------------|------------------------------------------------------------------|
| smallint    | 2     | small-range-integer                  | 2**16 -> -32.768 to 32.767                                       |
| integer     | 4     | typical choice for integers          | 2**32 -> -2.147.483.648 to 2.147.483.647                         |
| bigint      | 8     | large-range integer                  | 2**64 -> -9.223.372.036.854.775.808 to 9.223.372.036.854.775.807 |
| smallserial | 4     | autoincrementing small-range-integer | 1 to 32.767                                                      |
| serial      | 4     | autoincrementing mid-range integer   | 1 to 2.147.483.647                                               |
| bigserial   | 8     | autoincrementing large-range integer | 1 to 9.223.372.036.854.775.807                                   |

# Real Numbers

| name                              | Bytes    | Description                       | Range                                  |
|-----------------------------------|----------|-----------------------------------|----------------------------------------|
| decimal / numeric                 | variable | User-specified precision, exact   | ±3.4 * (10 ** 38) to +3.4 * (10 ** 38) |
| real / float4                     | 4        | User-specified precision, inexact | 6 decimal digits precision             |
| Double precision / float8 / float | 8        | User-specified precision, inexact | 15 decimal digits precision            |

# Characters

| name    | Bytes    | Description                   | Range             |
|---------|----------|-------------------------------|-------------------|
| char    | variable | fixed-length character string | based on encoding |
| varchar | variable | fixed-length character string | based on encoding |
| text    | variable | fixed-length character string | based on encoding |

# Logical

| name           | Bytes | Description   | Range        |
|----------------|-------|---------------|--------------|
| Boolean / bool | 1     | used in logic | True / False |

# Temporal

| name        | Bytes | Description                         | Range                        |
|-------------|-------|-------------------------------------|------------------------------|
| date        | 4     | stores only date                    | 4713 B.C/ -> 294.276 AD      |
| time        | 8     | stores only tyme                    | 00:00:00 -> 24:00:00         |
| timestamp   | 8     | stores date & time                  | 4713 B.C. -> 294.276 AD      |
| interval    | 16    | stores difference between timestamp | -178.000.000 -> +178.000.000 |
| timestamptz | 8     | stores a timestamp + timezone       | 4713 B.C. -> 294.276 AD + tz |

# Other Data Types

* [Arrays](https://www.postgresql.org/docs/9.1/arrays.html)
* [JSON](https://www.postgresql.org/docs/13/datatype-json.html)
* [XML](https://www.postgresql.org/docs/9.3/datatype-xml.html)
* [Geometric Types](https://www.postgresql.org/docs/9.4/datatype-geometric.html)
* [User-Defined Types](https://www.postgresql.org/docs/9.5/xtypes.html)
