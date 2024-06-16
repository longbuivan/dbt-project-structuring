## Description

Demo Project For Data Engineering Camping

## Setting up

> dbt init

> dbt deps

> dbt build

```bash
dbt build
WARNING: version 0.37.20 of the dbt Cloud CLI is now available. As of now, old versions are not actively supported - update now!

Created invocation id 872abce7-4878-4ca7-95b3-7c33693a7007
14:34:15 Running dbt...
14:34:16 Found 5 models, 3 data tests, 3 seeds, 562 macros
14:34:16
14:34:27 Concurrency: 1 threads (target='default')
14:34:27
14:34:27 1 of 11 START seed file default.bookings_1 ..................................... [RUN]
14:34:31 1 of 11 OK loaded seed file default.bookings_1 ................................. [INSERT 7 in 4.64s]
14:34:31 2 of 11 START seed file default.bookings_2 ..................................... [RUN]
14:34:36 2 of 11 OK loaded seed file default.bookings_2 ................................. [INSERT 7 in 4.84s]
14:34:36 3 of 11 START seed file default.customers ...................................... [RUN]
14:34:41 3 of 11 OK loaded seed file default.customers .................................. [INSERT 2 in 4.79s]
14:34:41 4 of 11 START test bookings_1_test ............................................. [RUN]
14:34:44 4 of 11 PASS bookings_1_test ................................................... [PASS in 2.57s]
14:34:44 5 of 11 START sql view model transform.customer ................................ [RUN]
14:34:46 5 of 11 OK created sql view model transform.customer ........................... [SUCCESS 1 in 2.40s]
14:34:46 6 of 11 START sql view model transform.combined_bookings ....................... [RUN]
14:34:49 6 of 11 OK created sql view model transform.combined_bookings .................. [SUCCESS 1 in 2.90s]
14:34:49 7 of 11 START test not_null_customer_id ........................................ [RUN]
14:34:51 7 of 11 PASS not_null_customer_id .............................................. [PASS in 2.36s]
14:34:51 8 of 11 START test unique_customer_id .......................................... [RUN]
14:34:54 8 of 11 PASS unique_customer_id ................................................ [PASS in 2.47s]
14:34:54 9 of 11 START sql view model transform.prepped_data ............................ [RUN]
14:34:56 9 of 11 OK created sql view model transform.prepped_data ....................... [SUCCESS 1 in 2.36s]
14:34:56 10 of 11 START sql view model analysis.hotel_count_by_day ...................... [RUN]
14:34:59 10 of 11 OK created sql view model analysis.hotel_count_by_day ................. [SUCCESS 1 in 2.50s]
14:34:59 11 of 11 START sql view model analysis.thirty_day_avg_cost ..................... [RUN]
14:35:01 11 of 11 OK created sql view model analysis.thirty_day_avg_cost ................ [SUCCESS 1 in 2.42s]
14:35:01
14:35:01 Finished running 3 seeds, 3 data tests, 5 view models in 0 hours 0 minutes and 44.84 seconds (44.84s).
14:35:01
14:35:01 Completed successfully
14:35:01
14:35:01 Done. PASS=11 WARN=0 ERROR=0 SKIP=0 TOTAL=11

Invocation has finished.
```


> dbt compile

```bash
dbt compile
WARNING: version 0.37.20 of the dbt Cloud CLI is now available. As of now, old versions are not actively supported - update now!

Created invocation id 4a0e65e2-a733-408b-8b35-d5e3d7f687be
14:33:41 Running dbt...
14:33:43 Found 5 models, 3 data tests, 3 seeds, 562 macros
14:33:43
14:33:49 Concurrency: 1 threads (target='default')
14:33:49

Invocation has finished
```

> dbt test

```bash
14:30:52 Found 5 models, 3 data tests, 3 seeds, 562 macros
14:30:52
14:30:58 Concurrency: 1 threads (target='default')
14:30:58
14:30:58 1 of 3 START test bookings_1_test .............................................. [RUN]
14:31:00 1 of 3 PASS bookings_1_test .................................................... [PASS in 2.70s]
14:31:00 2 of 3 START test not_null_customer_id ......................................... [RUN]
14:31:03 2 of 3 PASS not_null_customer_id ............................................... [PASS in 2.48s]
14:31:03 3 of 3 START test unique_customer_id ........................................... [RUN]
14:31:06 3 of 3 PASS unique_customer_id ................................................. [PASS in 2.91s]
14:31:06
14:31:06 Finished running 3 data tests in 0 hours 0 minutes and 14.34 seconds (14.34s).
14:31:06
14:31:06 Completed successfully
14:31:06
14:31:06 Done. PASS=3 WARN=0 ERROR=0 SKIP=0 TOTAL=3
```

## Database Creation
```sql
CREATE TABLE bookings_1 (
    id INTEGER,
    booking_reference INTEGER,
    hotel STRING,
    booking_date DATE,
    cost INTEGER
);
CREATE TABLE bookings_2 (
    id INTEGER,
    booking_reference INTEGER,
    hotel STRING,
    booking_date DATE,
    cost INTEGER
);
CREATE TABLE customers (
    id INTEGER,
    first_name STRING,
    last_name STRING,
    birthdate DATE,
    membership_no INTEGER
);

```
