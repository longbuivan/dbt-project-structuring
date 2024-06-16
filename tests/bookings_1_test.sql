-- tests/bookings_1_test.sql
{{ config(
    { "severity": "ERROR", "tags": ["bookings_1", "test"] }
) }}

SELECT *
FROM {{ ref('bookings_1') }}
WHERE id IS NULL OR booking_reference IS NULL