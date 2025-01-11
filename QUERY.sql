--Table Client
--Memastikan tipe data numeric
ALTER TABLE client ALTER COLUMN clientid TYPE INTEGER;

--Membuat Sequence
CREATE SEQUENCE client_clientid_seq;

--Menjadikan kolom bernilai default dari Sequence
ALTER TABLE client ALTER COLUMN clientid SET DEFAULT nextval('client_clientid_seq');

--Menjadikan Sequence dimiliki oleh tabel
ALTER SEQUENCE client_clientid_seq OWNED BY client.clientid;


--Table m_news
--Memastikan tipe data numeric
ALTER TABLE m_news ALTER COLUMN newsid TYPE INTEGER;

--Membuat Sequence
CREATE SEQUENCE m_news_newsid_seq;

--Menjadikan kolom bernilai default dari Sequence
ALTER TABLE m_news ALTER COLUMN newsid SET DEFAULT nextval('m_news_newsid_seq');

--Menjadikan Sequence dimiliki oleh tabel
ALTER SEQUENCE m_news_newsid_seq OWNED BY m_news.newsid;


--Table m_user
--Memastikan tipe data numeric
ALTER TABLE m_user ALTER COLUMN userid TYPE INTEGER;

--Membuat Sequence
CREATE SEQUENCE m_user_userid_seq;

--Menjadikan kolom bernilai default dari Sequence
ALTER TABLE m_user ALTER COLUMN userid SET DEFAULT nextval('m_user_userid_seq');

--Menjadikan Sequence dimiliki oleh tabel
ALTER SEQUENCE m_user_userid_seq OWNED BY m_user.userid;


--Table news_category
--Memastikan tipe data numeric
ALTER TABLE news_category ALTER COLUMN newscategoryid  TYPE INTEGER;

--Membuat Sequence
CREATE SEQUENCE news_category_newscategoryid_seq;

--Menjadikan kolom bernilai default dari Sequence
ALTER TABLE news_category ALTER COLUMN newscategoryid  SET DEFAULT nextval('news_category_newscategoryid_seq');

--Menjadikan Sequence dimiliki oleh tabel
ALTER SEQUENCE news_category_newscategoryid_seq OWNED BY news_category.newscategoryid;


--Table opening_speach
--Memastikan tipe data numeric
ALTER TABLE opening_speach ALTER COLUMN openingspeachid   TYPE INTEGER;

--Membuat Sequence
CREATE SEQUENCE opening_speach_openingspeachid_seq;

--Menjadikan kolom bernilai default dari Sequence
ALTER TABLE opening_speach ALTER COLUMN openingspeachid  SET DEFAULT nextval('opening_speach_openingspeachid_seq');

--Menjadikan Sequence dimiliki oleh tabel
ALTER SEQUENCE opening_speach_openingspeachid_seq OWNED BY opening_speach.openingspeachid;


--Table testimonials
--Memastikan tipe data numeric
ALTER TABLE testimonials ALTER COLUMN testimonialid   TYPE INTEGER;

--Membuat Sequence
CREATE SEQUENCE testimonials_testimonialid_seq;

--Menjadikan kolom bernilai default dari Sequence
ALTER TABLE testimonials ALTER COLUMN testimonialid  SET DEFAULT nextval('testimonials_testimonialid_seq');

--Menjadikan Sequence dimiliki oleh tabel
ALTER SEQUENCE testimonials_testimonialid_seq OWNED BY testimonials.testimonialid;