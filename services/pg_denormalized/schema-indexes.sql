SET max_parallel_maintenance_workers TO 70;
SET max_parallel_workers TO 70;
SET maintenance_work_mem TO '8 GB';
create index b1 on tweets_jsonb using gin((data->'extended_tweet'->'entities'->'hashtags'));
create index b2 on tweets_jsonb using gin((data->'entities'->'hashtags'));
create index b3 on tweets_jsonb using gin(to_tsvector('english', coalesce(data->'extended_tweet'->>'full_text', data->>'text'))) where (data->>'lang'='en');
create index b4 on tweets_jsonb((data->>'lang'));
