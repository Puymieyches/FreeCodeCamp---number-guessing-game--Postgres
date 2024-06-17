--
-- PostgreSQL database dump
--

-- Dumped from database version 12.18 (Ubuntu 12.18-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.18 (Ubuntu 12.18-0ubuntu0.20.04.1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    secret_number integer NOT NULL,
    number_of_guesses integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (467, 146, 19, 10);
INSERT INTO public.games VALUES (468, 147, 812, 813);
INSERT INTO public.games VALUES (469, 147, 138, 139);
INSERT INTO public.games VALUES (470, 148, 351, 352);
INSERT INTO public.games VALUES (471, 148, 950, 951);
INSERT INTO public.games VALUES (472, 147, 324, 327);
INSERT INTO public.games VALUES (473, 147, 834, 835);
INSERT INTO public.games VALUES (474, 147, 742, 743);
INSERT INTO public.games VALUES (475, 149, 329, 330);
INSERT INTO public.games VALUES (476, 149, 984, 985);
INSERT INTO public.games VALUES (477, 150, 187, 188);
INSERT INTO public.games VALUES (478, 150, 354, 355);
INSERT INTO public.games VALUES (479, 149, 586, 589);
INSERT INTO public.games VALUES (480, 149, 459, 460);
INSERT INTO public.games VALUES (481, 149, 198, 199);
INSERT INTO public.games VALUES (482, 146, 471, 9);
INSERT INTO public.games VALUES (483, 151, 744, 745);
INSERT INTO public.games VALUES (484, 151, 68, 69);
INSERT INTO public.games VALUES (485, 152, 88, 89);
INSERT INTO public.games VALUES (486, 152, 58, 59);
INSERT INTO public.games VALUES (487, 151, 429, 432);
INSERT INTO public.games VALUES (488, 151, 962, 963);
INSERT INTO public.games VALUES (489, 151, 272, 273);
INSERT INTO public.games VALUES (490, 153, 764, 765);
INSERT INTO public.games VALUES (491, 153, 70, 71);
INSERT INTO public.games VALUES (492, 154, 592, 593);
INSERT INTO public.games VALUES (493, 154, 813, 814);
INSERT INTO public.games VALUES (494, 153, 519, 522);
INSERT INTO public.games VALUES (495, 153, 555, 556);
INSERT INTO public.games VALUES (496, 153, 509, 510);
INSERT INTO public.games VALUES (497, 155, 830, 831);
INSERT INTO public.games VALUES (498, 155, 925, 926);
INSERT INTO public.games VALUES (499, 156, 294, 295);
INSERT INTO public.games VALUES (500, 156, 977, 978);
INSERT INTO public.games VALUES (501, 155, 357, 360);
INSERT INTO public.games VALUES (502, 155, 378, 379);
INSERT INTO public.games VALUES (503, 155, 609, 610);
INSERT INTO public.games VALUES (504, 157, 675, 676);
INSERT INTO public.games VALUES (505, 157, 985, 986);
INSERT INTO public.games VALUES (506, 158, 173, 174);
INSERT INTO public.games VALUES (507, 158, 16, 17);
INSERT INTO public.games VALUES (508, 157, 270, 273);
INSERT INTO public.games VALUES (509, 157, 492, 493);
INSERT INTO public.games VALUES (510, 157, 521, 522);
INSERT INTO public.games VALUES (511, 146, 374, 10);
INSERT INTO public.games VALUES (512, 159, 249, 250);
INSERT INTO public.games VALUES (513, 159, 161, 162);
INSERT INTO public.games VALUES (514, 160, 390, 391);
INSERT INTO public.games VALUES (515, 160, 922, 923);
INSERT INTO public.games VALUES (516, 159, 214, 217);
INSERT INTO public.games VALUES (517, 159, 59, 60);
INSERT INTO public.games VALUES (518, 159, 109, 110);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (146, 'Steve');
INSERT INTO public.users VALUES (147, 'user_1718642498025');
INSERT INTO public.users VALUES (148, 'user_1718642498024');
INSERT INTO public.users VALUES (149, 'user_1718642581456');
INSERT INTO public.users VALUES (150, 'user_1718642581455');
INSERT INTO public.users VALUES (151, 'user_1718642837195');
INSERT INTO public.users VALUES (152, 'user_1718642837194');
INSERT INTO public.users VALUES (153, 'user_1718642842918');
INSERT INTO public.users VALUES (154, 'user_1718642842917');
INSERT INTO public.users VALUES (155, 'user_1718642851060');
INSERT INTO public.users VALUES (156, 'user_1718642851059');
INSERT INTO public.users VALUES (157, 'user_1718642856062');
INSERT INTO public.users VALUES (158, 'user_1718642856061');
INSERT INTO public.users VALUES (159, 'user_1718643017852');
INSERT INTO public.users VALUES (160, 'user_1718643017851');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 518, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 160, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

