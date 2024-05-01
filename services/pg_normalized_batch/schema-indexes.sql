SET max_parallel_maintenance_workers TO 50;
SET max_parallel_workers TO 50;
SET maintenance_work_mem TO '4 GB';
CREATE INDEX a1 ON tweet_tags(id_tweets, tag);
CREATE INDEX a2 ON tweet_tags(tag, id_tweets);
CREATE INDEX a3 ON tweets(id_tweets, lang);
CREATE INDEX a4 ON tweets(lang);
CREATE INDEX a5 ON tweets USING GIN(to_tsvector('english', text)) where lang = 'en';
