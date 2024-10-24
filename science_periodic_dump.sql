--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0 (Debian 17.0-1.pgdg120+1)
-- Dumped by pg_dump version 17.0 (Debian 17.0-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: article; Type: TABLE; Schema: public; Owner: science_periodic_user
--

CREATE TABLE public.article (
    id integer NOT NULL,
    author_id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.article OWNER TO science_periodic_user;

--
-- Name: article_id_seq; Type: SEQUENCE; Schema: public; Owner: science_periodic_user
--

CREATE SEQUENCE public.article_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.article_id_seq OWNER TO science_periodic_user;

--
-- Name: article_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: science_periodic_user
--

ALTER SEQUENCE public.article_id_seq OWNED BY public.article.id;


--
-- Name: author; Type: TABLE; Schema: public; Owner: science_periodic_user
--

CREATE TABLE public.author (
    id integer NOT NULL,
    surname text NOT NULL,
    name text NOT NULL,
    fathername text
);


ALTER TABLE public.author OWNER TO science_periodic_user;

--
-- Name: author_id_seq; Type: SEQUENCE; Schema: public; Owner: science_periodic_user
--

CREATE SEQUENCE public.author_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.author_id_seq OWNER TO science_periodic_user;

--
-- Name: author_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: science_periodic_user
--

ALTER SEQUENCE public.author_id_seq OWNED BY public.author.id;


--
-- Name: num_of_release; Type: TABLE; Schema: public; Owner: science_periodic_user
--

CREATE TABLE public.num_of_release (
    id integer NOT NULL,
    publication_id integer NOT NULL,
    num_of_publication integer NOT NULL,
    date timestamp without time zone NOT NULL
);


ALTER TABLE public.num_of_release OWNER TO science_periodic_user;

--
-- Name: num_of_release_id_seq; Type: SEQUENCE; Schema: public; Owner: science_periodic_user
--

CREATE SEQUENCE public.num_of_release_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.num_of_release_id_seq OWNER TO science_periodic_user;

--
-- Name: num_of_release_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: science_periodic_user
--

ALTER SEQUENCE public.num_of_release_id_seq OWNED BY public.num_of_release.id;


--
-- Name: publication; Type: TABLE; Schema: public; Owner: science_periodic_user
--

CREATE TABLE public.publication (
    id integer NOT NULL,
    name text NOT NULL,
    publishing_house_id integer NOT NULL,
    number_of_releases integer NOT NULL,
    CONSTRAINT num_of_publication CHECK ((number_of_releases > 0)),
    CONSTRAINT number_of_releases CHECK ((number_of_releases >= 0))
);


ALTER TABLE public.publication OWNER TO science_periodic_user;

--
-- Name: publication_id_seq; Type: SEQUENCE; Schema: public; Owner: science_periodic_user
--

CREATE SEQUENCE public.publication_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.publication_id_seq OWNER TO science_periodic_user;

--
-- Name: publication_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: science_periodic_user
--

ALTER SEQUENCE public.publication_id_seq OWNED BY public.publication.id;


--
-- Name: publication_of_article; Type: TABLE; Schema: public; Owner: science_periodic_user
--

CREATE TABLE public.publication_of_article (
    article_id integer NOT NULL,
    num_of_release_id integer NOT NULL
);


ALTER TABLE public.publication_of_article OWNER TO science_periodic_user;

--
-- Name: publishing_house; Type: TABLE; Schema: public; Owner: science_periodic_user
--

CREATE TABLE public.publishing_house (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.publishing_house OWNER TO science_periodic_user;

--
-- Name: publishing_house_id_seq; Type: SEQUENCE; Schema: public; Owner: science_periodic_user
--

CREATE SEQUENCE public.publishing_house_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.publishing_house_id_seq OWNER TO science_periodic_user;

--
-- Name: publishing_house_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: science_periodic_user
--

ALTER SEQUENCE public.publishing_house_id_seq OWNED BY public.publishing_house.id;


--
-- Name: article id; Type: DEFAULT; Schema: public; Owner: science_periodic_user
--

ALTER TABLE ONLY public.article ALTER COLUMN id SET DEFAULT nextval('public.article_id_seq'::regclass);


--
-- Name: author id; Type: DEFAULT; Schema: public; Owner: science_periodic_user
--

ALTER TABLE ONLY public.author ALTER COLUMN id SET DEFAULT nextval('public.author_id_seq'::regclass);


--
-- Name: num_of_release id; Type: DEFAULT; Schema: public; Owner: science_periodic_user
--

ALTER TABLE ONLY public.num_of_release ALTER COLUMN id SET DEFAULT nextval('public.num_of_release_id_seq'::regclass);


--
-- Name: publication id; Type: DEFAULT; Schema: public; Owner: science_periodic_user
--

ALTER TABLE ONLY public.publication ALTER COLUMN id SET DEFAULT nextval('public.publication_id_seq'::regclass);


--
-- Name: publishing_house id; Type: DEFAULT; Schema: public; Owner: science_periodic_user
--

ALTER TABLE ONLY public.publishing_house ALTER COLUMN id SET DEFAULT nextval('public.publishing_house_id_seq'::regclass);


--
-- Data for Name: article; Type: TABLE DATA; Schema: public; Owner: science_periodic_user
--

COPY public.article (id, author_id, name) FROM stdin;
0	0	Поведение свободноживущих шимпанзе в резервации Гомбе
1	3	О новом радиоактивном веществе, содержащемся в урановой руде
2	1	Молекулярная конфигурация в натриевом тимонуклеате
3	2	К электродинамике движущихся тел
4	4	Принцип наименьшего действия в квантовой механике
\.


--
-- Data for Name: author; Type: TABLE DATA; Schema: public; Owner: science_periodic_user
--

COPY public.author (id, surname, name, fathername) FROM stdin;
0	Гудолл	Джейн	\N
1	Франклин	Розалинд	\N
2	Эйнштейн	Альберт	\N
3	Кюри	Мари	\N
4	Фейнман	Ричард	\N
\.


--
-- Data for Name: num_of_release; Type: TABLE DATA; Schema: public; Owner: science_periodic_user
--

COPY public.num_of_release (id, publication_id, num_of_publication, date) FROM stdin;
0	0	1	2001-01-01 00:00:00
1	0	2	2001-02-01 00:00:00
2	1	1	2001-01-15 00:00:00
3	2	1	2001-01-10 00:00:00
4	2	2	2001-03-10 00:00:00
5	3	1	2002-01-20 00:00:00
6	4	1	2010-01-10 00:00:00
7	4	2	2010-01-20 00:00:00
8	4	3	2010-01-30 00:00:00
9	5	1	2022-01-18 00:00:00
\.


--
-- Data for Name: publication; Type: TABLE DATA; Schema: public; Owner: science_periodic_user
--

COPY public.publication (id, name, publishing_house_id, number_of_releases) FROM stdin;
0	Nature	0	12
1	The Lancet	1	12
2	Advanced Materials	2	6
3	Journal of Applied Psychology	19	6
4	American Journal of Sociology	20	36
5	IEEE Transactions on Neural Networks and Learning Systems	21	24
\.


--
-- Data for Name: publication_of_article; Type: TABLE DATA; Schema: public; Owner: science_periodic_user
--

COPY public.publication_of_article (article_id, num_of_release_id) FROM stdin;
0	0
0	7
1	1
1	3
2	4
3	0
3	4
4	9
\.


--
-- Data for Name: publishing_house; Type: TABLE DATA; Schema: public; Owner: science_periodic_user
--

COPY public.publishing_house (id, name) FROM stdin;
0	Springer Nature
1	Elsevier
2	Wiley
19	Taylor & Francis
20	SAGE Publications
21	IEEE (Institute of Electrical)
\.


--
-- Name: article_id_seq; Type: SEQUENCE SET; Schema: public; Owner: science_periodic_user
--

SELECT pg_catalog.setval('public.article_id_seq', 1, false);


--
-- Name: author_id_seq; Type: SEQUENCE SET; Schema: public; Owner: science_periodic_user
--

SELECT pg_catalog.setval('public.author_id_seq', 5, true);


--
-- Name: num_of_release_id_seq; Type: SEQUENCE SET; Schema: public; Owner: science_periodic_user
--

SELECT pg_catalog.setval('public.num_of_release_id_seq', 1, false);


--
-- Name: publication_id_seq; Type: SEQUENCE SET; Schema: public; Owner: science_periodic_user
--

SELECT pg_catalog.setval('public.publication_id_seq', 1, false);


--
-- Name: publishing_house_id_seq; Type: SEQUENCE SET; Schema: public; Owner: science_periodic_user
--

SELECT pg_catalog.setval('public.publishing_house_id_seq', 1, false);


--
-- Name: article article_pkey; Type: CONSTRAINT; Schema: public; Owner: science_periodic_user
--

ALTER TABLE ONLY public.article
    ADD CONSTRAINT article_pkey PRIMARY KEY (id);


--
-- Name: author author_pkey; Type: CONSTRAINT; Schema: public; Owner: science_periodic_user
--

ALTER TABLE ONLY public.author
    ADD CONSTRAINT author_pkey PRIMARY KEY (id);


--
-- Name: num_of_release num_of_release_pkey; Type: CONSTRAINT; Schema: public; Owner: science_periodic_user
--

ALTER TABLE ONLY public.num_of_release
    ADD CONSTRAINT num_of_release_pkey PRIMARY KEY (id);


--
-- Name: publication_of_article publication_of_article_pkey; Type: CONSTRAINT; Schema: public; Owner: science_periodic_user
--

ALTER TABLE ONLY public.publication_of_article
    ADD CONSTRAINT publication_of_article_pkey PRIMARY KEY (article_id, num_of_release_id);


--
-- Name: publication publication_pkey; Type: CONSTRAINT; Schema: public; Owner: science_periodic_user
--

ALTER TABLE ONLY public.publication
    ADD CONSTRAINT publication_pkey PRIMARY KEY (id);


--
-- Name: publishing_house publishinghouse_pkey; Type: CONSTRAINT; Schema: public; Owner: science_periodic_user
--

ALTER TABLE ONLY public.publishing_house
    ADD CONSTRAINT publishinghouse_pkey PRIMARY KEY (id);


--
-- Name: article articlefk; Type: FK CONSTRAINT; Schema: public; Owner: science_periodic_user
--

ALTER TABLE ONLY public.article
    ADD CONSTRAINT articlefk FOREIGN KEY (author_id) REFERENCES public.author(id);


--
-- Name: publication_of_article pof_article_idfk; Type: FK CONSTRAINT; Schema: public; Owner: science_periodic_user
--

ALTER TABLE ONLY public.publication_of_article
    ADD CONSTRAINT pof_article_idfk FOREIGN KEY (article_id) REFERENCES public.article(id);


--
-- Name: publication_of_article pof_num_of_realese_idfk; Type: FK CONSTRAINT; Schema: public; Owner: science_periodic_user
--

ALTER TABLE ONLY public.publication_of_article
    ADD CONSTRAINT pof_num_of_realese_idfk FOREIGN KEY (num_of_release_id) REFERENCES public.num_of_release(id);


--
-- Name: num_of_release publication_idfk; Type: FK CONSTRAINT; Schema: public; Owner: science_periodic_user
--

ALTER TABLE ONLY public.num_of_release
    ADD CONSTRAINT publication_idfk FOREIGN KEY (publication_id) REFERENCES public.publication(id);


--
-- Name: publication publishinghouse_idfk; Type: FK CONSTRAINT; Schema: public; Owner: science_periodic_user
--

ALTER TABLE ONLY public.publication
    ADD CONSTRAINT publishinghouse_idfk FOREIGN KEY (publishing_house_id) REFERENCES public.publishing_house(id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: pg_database_owner
--

GRANT CREATE ON SCHEMA public TO science_periodic_user;


--
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT ALL ON TABLES TO science_periodic_user;


--
-- PostgreSQL database dump complete
--

