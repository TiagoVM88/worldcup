--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: games_opponent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_opponent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_opponent_id_seq OWNER TO freecodecamp;

--
-- Name: games_opponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_opponent_id_seq OWNED BY public.games.opponent_id;


--
-- Name: games_winner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_winner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_winner_id_seq OWNER TO freecodecamp;

--
-- Name: games_winner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_winner_id_seq OWNED BY public.games.winner_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(20) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: games winner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN winner_id SET DEFAULT nextval('public.games_winner_id_seq'::regclass);


--
-- Name: games opponent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN opponent_id SET DEFAULT nextval('public.games_opponent_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (204, 2018, 'Final', 803, 802, 4, 2);
INSERT INTO public.games VALUES (205, 2018, 'Third Place', 805, 804, 2, 0);
INSERT INTO public.games VALUES (206, 2018, 'Semi-Final', 802, 804, 2, 1);
INSERT INTO public.games VALUES (207, 2018, 'Semi-Final', 803, 805, 1, 0);
INSERT INTO public.games VALUES (208, 2018, 'Quarter-Final', 802, 806, 3, 2);
INSERT INTO public.games VALUES (209, 2018, 'Quarter-Final', 804, 807, 2, 0);
INSERT INTO public.games VALUES (210, 2018, 'Quarter-Final', 805, 808, 2, 1);
INSERT INTO public.games VALUES (211, 2018, 'Quarter-Final', 803, 809, 2, 0);
INSERT INTO public.games VALUES (212, 2018, 'Eighth-Final', 804, 810, 2, 1);
INSERT INTO public.games VALUES (213, 2018, 'Eighth-Final', 807, 811, 1, 0);
INSERT INTO public.games VALUES (214, 2018, 'Eighth-Final', 805, 812, 3, 2);
INSERT INTO public.games VALUES (215, 2018, 'Eighth-Final', 808, 813, 2, 0);
INSERT INTO public.games VALUES (216, 2018, 'Eighth-Final', 802, 814, 2, 1);
INSERT INTO public.games VALUES (217, 2018, 'Eighth-Final', 806, 815, 2, 1);
INSERT INTO public.games VALUES (218, 2018, 'Eighth-Final', 809, 816, 2, 1);
INSERT INTO public.games VALUES (219, 2018, 'Eighth-Final', 803, 817, 4, 3);
INSERT INTO public.games VALUES (220, 2014, 'Final', 818, 817, 1, 0);
INSERT INTO public.games VALUES (221, 2014, 'Third Place', 819, 808, 3, 0);
INSERT INTO public.games VALUES (222, 2014, 'Semi-Final', 817, 819, 1, 0);
INSERT INTO public.games VALUES (223, 2014, 'Semi-Final', 818, 808, 7, 1);
INSERT INTO public.games VALUES (224, 2014, 'Quarter-Final', 819, 820, 1, 0);
INSERT INTO public.games VALUES (225, 2014, 'Quarter-Final', 817, 805, 1, 0);
INSERT INTO public.games VALUES (226, 2014, 'Quarter-Final', 808, 810, 2, 1);
INSERT INTO public.games VALUES (227, 2014, 'Quarter-Final', 818, 803, 1, 0);
INSERT INTO public.games VALUES (228, 2014, 'Eighth-Final', 808, 821, 2, 1);
INSERT INTO public.games VALUES (229, 2014, 'Eighth-Final', 810, 809, 2, 0);
INSERT INTO public.games VALUES (230, 2014, 'Eighth-Final', 803, 822, 2, 0);
INSERT INTO public.games VALUES (231, 2014, 'Eighth-Final', 818, 823, 2, 1);
INSERT INTO public.games VALUES (232, 2014, 'Eighth-Final', 819, 813, 2, 1);
INSERT INTO public.games VALUES (233, 2014, 'Eighth-Final', 820, 824, 2, 1);
INSERT INTO public.games VALUES (234, 2014, 'Eighth-Final', 817, 811, 1, 0);
INSERT INTO public.games VALUES (235, 2014, 'Eighth-Final', 805, 825, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (802, 'Croatia');
INSERT INTO public.teams VALUES (803, 'France');
INSERT INTO public.teams VALUES (804, 'England');
INSERT INTO public.teams VALUES (805, 'Belgium');
INSERT INTO public.teams VALUES (806, 'Russia');
INSERT INTO public.teams VALUES (807, 'Sweden');
INSERT INTO public.teams VALUES (808, 'Brazil');
INSERT INTO public.teams VALUES (809, 'Uruguay');
INSERT INTO public.teams VALUES (810, 'Colombia');
INSERT INTO public.teams VALUES (811, 'Switzerland');
INSERT INTO public.teams VALUES (812, 'Japan');
INSERT INTO public.teams VALUES (813, 'Mexico');
INSERT INTO public.teams VALUES (814, 'Denmark');
INSERT INTO public.teams VALUES (815, 'Spain');
INSERT INTO public.teams VALUES (816, 'Portugal');
INSERT INTO public.teams VALUES (817, 'Argentina');
INSERT INTO public.teams VALUES (818, 'Germany');
INSERT INTO public.teams VALUES (819, 'Netherlands');
INSERT INTO public.teams VALUES (820, 'Costa Rica');
INSERT INTO public.teams VALUES (821, 'Chile');
INSERT INTO public.teams VALUES (822, 'Nigeria');
INSERT INTO public.teams VALUES (823, 'Algeria');
INSERT INTO public.teams VALUES (824, 'Greece');
INSERT INTO public.teams VALUES (825, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 235, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 1, false);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 1, false);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 825, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

