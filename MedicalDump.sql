--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1 (Debian 16.1-1.pgdg120+1)
-- Dumped by pg_dump version 16.1 (Debian 16.1-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
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
-- Name: achievements; Type: TABLE; Schema: public; Owner: Pelimenya
--

CREATE TABLE public.achievements (
    achievement_id integer NOT NULL,
    achievement_name character varying(255) NOT NULL
);


ALTER TABLE public.achievements OWNER TO "Pelimenya";

--
-- Name: achievements_achievement_id_seq; Type: SEQUENCE; Schema: public; Owner: Pelimenya
--

CREATE SEQUENCE public.achievements_achievement_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.achievements_achievement_id_seq OWNER TO "Pelimenya";

--
-- Name: achievements_achievement_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Pelimenya
--

ALTER SEQUENCE public.achievements_achievement_id_seq OWNED BY public.achievements.achievement_id;


--
-- Name: banstatus; Type: TABLE; Schema: public; Owner: Pelimenya
--

CREATE TABLE public.banstatus (
    ban_status_id integer NOT NULL,
    ban_status_name character varying(255) NOT NULL
);


ALTER TABLE public.banstatus OWNER TO "Pelimenya";

--
-- Name: banstatus_ban_status_id_seq; Type: SEQUENCE; Schema: public; Owner: Pelimenya
--

CREATE SEQUENCE public.banstatus_ban_status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.banstatus_ban_status_id_seq OWNER TO "Pelimenya";

--
-- Name: banstatus_ban_status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Pelimenya
--

ALTER SEQUENCE public.banstatus_ban_status_id_seq OWNED BY public.banstatus.ban_status_id;


--
-- Name: gender; Type: TABLE; Schema: public; Owner: Pelimenya
--

CREATE TABLE public.gender (
    gender_id integer NOT NULL,
    gender_name character varying(255) NOT NULL
);


ALTER TABLE public.gender OWNER TO "Pelimenya";

--
-- Name: gender_gender_id_seq; Type: SEQUENCE; Schema: public; Owner: Pelimenya
--

CREATE SEQUENCE public.gender_gender_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.gender_gender_id_seq OWNER TO "Pelimenya";

--
-- Name: gender_gender_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Pelimenya
--

ALTER SEQUENCE public.gender_gender_id_seq OWNED BY public.gender.gender_id;


--
-- Name: role; Type: TABLE; Schema: public; Owner: Pelimenya
--

CREATE TABLE public.role (
    role_id integer NOT NULL,
    role_name character varying(255) NOT NULL
);


ALTER TABLE public.role OWNER TO "Pelimenya";

--
-- Name: role_role_id_seq; Type: SEQUENCE; Schema: public; Owner: Pelimenya
--

CREATE SEQUENCE public.role_role_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.role_role_id_seq OWNER TO "Pelimenya";

--
-- Name: role_role_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Pelimenya
--

ALTER SEQUENCE public.role_role_id_seq OWNED BY public.role.role_id;


--
-- Name: statistics; Type: TABLE; Schema: public; Owner: Pelimenya
--

CREATE TABLE public.statistics (
    stat_id integer NOT NULL,
    achievement_id integer,
    playtime_hours integer
);


ALTER TABLE public.statistics OWNER TO "Pelimenya";

--
-- Name: statistics_stat_id_seq; Type: SEQUENCE; Schema: public; Owner: Pelimenya
--

CREATE SEQUENCE public.statistics_stat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.statistics_stat_id_seq OWNER TO "Pelimenya";

--
-- Name: statistics_stat_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Pelimenya
--

ALTER SEQUENCE public.statistics_stat_id_seq OWNED BY public.statistics.stat_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: Pelimenya
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(255) NOT NULL,
    password_hash character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    first_name character varying(255),
    last_name character varying(255),
    middle_name character varying(255),
    age integer,
    photo character varying(255) DEFAULT NULL::character varying,
    phone_number character varying(20) DEFAULT NULL::character varying,
    role_id integer,
    gender_id integer,
    ban_status_id integer,
    status_id integer,
    stat_id integer
);


ALTER TABLE public.users OWNER TO "Pelimenya";

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: Pelimenya
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_user_id_seq OWNER TO "Pelimenya";

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Pelimenya
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: userstatus; Type: TABLE; Schema: public; Owner: Pelimenya
--

CREATE TABLE public.userstatus (
    status_id integer NOT NULL,
    status_name character varying(255) NOT NULL
);


ALTER TABLE public.userstatus OWNER TO "Pelimenya";

--
-- Name: userstatus_status_id_seq; Type: SEQUENCE; Schema: public; Owner: Pelimenya
--

CREATE SEQUENCE public.userstatus_status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.userstatus_status_id_seq OWNER TO "Pelimenya";

--
-- Name: userstatus_status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Pelimenya
--

ALTER SEQUENCE public.userstatus_status_id_seq OWNED BY public.userstatus.status_id;


--
-- Name: achievements achievement_id; Type: DEFAULT; Schema: public; Owner: Pelimenya
--

ALTER TABLE ONLY public.achievements ALTER COLUMN achievement_id SET DEFAULT nextval('public.achievements_achievement_id_seq'::regclass);


--
-- Name: banstatus ban_status_id; Type: DEFAULT; Schema: public; Owner: Pelimenya
--

ALTER TABLE ONLY public.banstatus ALTER COLUMN ban_status_id SET DEFAULT nextval('public.banstatus_ban_status_id_seq'::regclass);


--
-- Name: gender gender_id; Type: DEFAULT; Schema: public; Owner: Pelimenya
--

ALTER TABLE ONLY public.gender ALTER COLUMN gender_id SET DEFAULT nextval('public.gender_gender_id_seq'::regclass);


--
-- Name: role role_id; Type: DEFAULT; Schema: public; Owner: Pelimenya
--

ALTER TABLE ONLY public.role ALTER COLUMN role_id SET DEFAULT nextval('public.role_role_id_seq'::regclass);


--
-- Name: statistics stat_id; Type: DEFAULT; Schema: public; Owner: Pelimenya
--

ALTER TABLE ONLY public.statistics ALTER COLUMN stat_id SET DEFAULT nextval('public.statistics_stat_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: Pelimenya
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Name: userstatus status_id; Type: DEFAULT; Schema: public; Owner: Pelimenya
--

ALTER TABLE ONLY public.userstatus ALTER COLUMN status_id SET DEFAULT nextval('public.userstatus_status_id_seq'::regclass);


--
-- Data for Name: achievements; Type: TABLE DATA; Schema: public; Owner: Pelimenya
--

COPY public.achievements (achievement_id, achievement_name) FROM stdin;
1	╨Я╨╛╨▒╨╡╨┤╨╕╤В╨╡╨╗╤М
2	╨Ю╨┐╤Л╤В╨╜╤Л╨╣ ╨╕╨│╤А╨╛╨║
3	╨Э╨╛╨▓╨╕╤З╨╛╨║
\.


--
-- Data for Name: banstatus; Type: TABLE DATA; Schema: public; Owner: Pelimenya
--

COPY public.banstatus (ban_status_id, ban_status_name) FROM stdin;
1	No Ban
2	Time Ban
3	Permanent Ban
\.


--
-- Data for Name: gender; Type: TABLE DATA; Schema: public; Owner: Pelimenya
--

COPY public.gender (gender_id, gender_name) FROM stdin;
1	╨Ь╤Г╨╢╤Б╨║╨╛╨╣
2	╨Ц╨╡╨╜╤Б╨║╨╕╨╣
\.


--
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: Pelimenya
--

COPY public.role (role_id, role_name) FROM stdin;
1	Administrator
2	Moderator
3	User
\.


--
-- Data for Name: statistics; Type: TABLE DATA; Schema: public; Owner: Pelimenya
--

COPY public.statistics (stat_id, achievement_id, playtime_hours) FROM stdin;
2	2	30
3	3	20
1	1	50
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: Pelimenya
--

COPY public.users (user_id, username, password_hash, email, first_name, last_name, middle_name, age, photo, phone_number, role_id, gender_id, ban_status_id, status_id, stat_id) FROM stdin;
2	Dairow	hash2	petrov@example.com	╨Я╨░╨▓╨╡╨╗	╨Я╨░╨╜╤З╨╡╨╜╨║╨╛	╨Р╨╗╨╡╨║╤Б╨░╨╜╨┤╤А╨╛╨▓╨╕╤З	25	path/to/photo2.jpg	+9876543210	3	1	1	1	2
1	Pelimenya	af316ecb91a8ee7ae99210702b2d4758f30cdde3bf61e3d8e787d74681f90a6e	ivanov@example.com	╨Ъ╨╛╨╜╤Б╤В╨░╨╜╤В╨╕╨╜	╨Ы╤П╨┐╨╕╨╜	╨Ф╨╝╨╕╤В╤А╨╕╨╡╨▓╨╕╤З	30	path/to/photo1.jpg	+1234567890	1	1	1	1	1
3	HypeBeast	hash3	sidorov@example.com	╨Ъ╨╛╨╜╤Б╤В╨░╨╜╤В╨╕╨╜	╨б╨╛╨╗╨╜╤Ж╨╡╨▓	╨Т╨╗╨░╨┤╨╕╨╝╨╕╤А╨╛╨▓╨╕╤З	22	\N	\N	3	1	1	1	3
\.


--
-- Data for Name: userstatus; Type: TABLE DATA; Schema: public; Owner: Pelimenya
--

COPY public.userstatus (status_id, status_name) FROM stdin;
1	Online
2	Offline
\.


--
-- Name: achievements_achievement_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Pelimenya
--

SELECT pg_catalog.setval('public.achievements_achievement_id_seq', 4, true);


--
-- Name: banstatus_ban_status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Pelimenya
--

SELECT pg_catalog.setval('public.banstatus_ban_status_id_seq', 3, true);


--
-- Name: gender_gender_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Pelimenya
--

SELECT pg_catalog.setval('public.gender_gender_id_seq', 2, true);


--
-- Name: role_role_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Pelimenya
--

SELECT pg_catalog.setval('public.role_role_id_seq', 5, true);


--
-- Name: statistics_stat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Pelimenya
--

SELECT pg_catalog.setval('public.statistics_stat_id_seq', 4, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Pelimenya
--

SELECT pg_catalog.setval('public.users_user_id_seq', 21, true);


--
-- Name: userstatus_status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Pelimenya
--

SELECT pg_catalog.setval('public.userstatus_status_id_seq', 2, true);


--
-- Name: achievements achievements_pkey; Type: CONSTRAINT; Schema: public; Owner: Pelimenya
--

ALTER TABLE ONLY public.achievements
    ADD CONSTRAINT achievements_pkey PRIMARY KEY (achievement_id);


--
-- Name: banstatus banstatus_pkey; Type: CONSTRAINT; Schema: public; Owner: Pelimenya
--

ALTER TABLE ONLY public.banstatus
    ADD CONSTRAINT banstatus_pkey PRIMARY KEY (ban_status_id);


--
-- Name: gender gender_pkey; Type: CONSTRAINT; Schema: public; Owner: Pelimenya
--

ALTER TABLE ONLY public.gender
    ADD CONSTRAINT gender_pkey PRIMARY KEY (gender_id);


--
-- Name: role role_pkey; Type: CONSTRAINT; Schema: public; Owner: Pelimenya
--

ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (role_id);


--
-- Name: statistics statistics_pkey; Type: CONSTRAINT; Schema: public; Owner: Pelimenya
--

ALTER TABLE ONLY public.statistics
    ADD CONSTRAINT statistics_pkey PRIMARY KEY (stat_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: Pelimenya
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: userstatus userstatus_pkey; Type: CONSTRAINT; Schema: public; Owner: Pelimenya
--

ALTER TABLE ONLY public.userstatus
    ADD CONSTRAINT userstatus_pkey PRIMARY KEY (status_id);


--
-- Name: statistics statistics_achievement_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Pelimenya
--

ALTER TABLE ONLY public.statistics
    ADD CONSTRAINT statistics_achievement_id_fkey FOREIGN KEY (achievement_id) REFERENCES public.achievements(achievement_id);


--
-- Name: users users_ban_status_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Pelimenya
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_ban_status_id_fkey FOREIGN KEY (ban_status_id) REFERENCES public.banstatus(ban_status_id);


--
-- Name: users users_gender_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Pelimenya
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_gender_id_fkey FOREIGN KEY (gender_id) REFERENCES public.gender(gender_id);


--
-- Name: users users_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Pelimenya
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.role(role_id);


--
-- Name: users users_stat_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Pelimenya
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_stat_id_fkey FOREIGN KEY (stat_id) REFERENCES public.statistics(stat_id);


--
-- Name: users users_status_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: Pelimenya
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_status_id_fkey FOREIGN KEY (status_id) REFERENCES public.userstatus(status_id);


--
-- Name: TABLE statistics; Type: ACL; Schema: public; Owner: Pelimenya
--

GRANT INSERT,DELETE,UPDATE ON TABLE public.statistics TO gaming_editor;


--
-- Name: TABLE userstatus; Type: ACL; Schema: public; Owner: Pelimenya
--

GRANT ALL ON TABLE public.userstatus TO gaming_user;


--
-- PostgreSQL database dump complete
--

