SET max_parallel_maintenance_workers TO 50;
SET max_parallel_workers TO 50;
SET maintenance_work_mem TO '4 GB';
CREATE INDEX ON tweet_tags(id_tweets, tag);
CREATE INDEX ON tweet_tags(tag, id_tweets);
CREATE INDEX ON tweets(id_tweets, lang);
CREATE INDEX ON tweets(lang);
CREATE INDEX ON tweets USING GIN(to_tsvector('english', text)) where lang = 'en';
