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
    author_id integer,
    name text
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
    surname text,
    name text,
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
    publication_id integer,
    num_of_publication integer,
    date timestamp without time zone
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
    name text,
    publishing_house_id integer,
    number_of_releases integer
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
    name text
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
\.


--
-- Data for Name: author; Type: TABLE DATA; Schema: public; Owner: science_periodic_user
--

COPY public.author (id, surname, name, fathername) FROM stdin;
\.


--
-- Data for Name: num_of_release; Type: TABLE DATA; Schema: public; Owner: science_periodic_user
--

COPY public.num_of_release (id, publication_id, num_of_publication, date) FROM stdin;
\.


--
-- Data for Name: publication; Type: TABLE DATA; Schema: public; Owner: science_periodic_user
--

COPY public.publication (id, name, publishing_house_id, number_of_releases) FROM stdin;
\.


--
-- Data for Name: publication_of_article; Type: TABLE DATA; Schema: public; Owner: science_periodic_user
--

COPY public.publication_of_article (article_id, num_of_release_id) FROM stdin;
\.


--
-- Data for Name: publishing_house; Type: TABLE DATA; Schema: public; Owner: science_periodic_user
--

COPY public.publishing_house (id, name) FROM stdin;
\.


--
-- Name: article_id_seq; Type: SEQUENCE SET; Schema: public; Owner: science_periodic_user
--

SELECT pg_catalog.setval('public.article_id_seq', 1, false);


--
-- Name: author_id_seq; Type: SEQUENCE SET; Schema: public; Owner: science_periodic_user
--

SELECT pg_catalog.setval('public.author_id_seq', 1, false);


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

