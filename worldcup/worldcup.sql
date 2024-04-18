--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: games_temp; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games_temp (
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner character varying(50) NOT NULL,
    opponent character varying(50) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games_temp OWNER TO freecodecamp;

--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(100) NOT NULL
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
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (67, 2018, 'Final', 722, 739, 4, 2);
INSERT INTO public.games VALUES (68, 2018, 'Third Place', 727, 731, 2, 0);
INSERT INTO public.games VALUES (69, 2018, 'Semi-Final', 739, 731, 2, 1);
INSERT INTO public.games VALUES (70, 2018, 'Semi-Final', 722, 727, 1, 0);
INSERT INTO public.games VALUES (71, 2018, 'Quarter-Final', 739, 737, 3, 2);
INSERT INTO public.games VALUES (72, 2018, 'Quarter-Final', 731, 718, 2, 0);
INSERT INTO public.games VALUES (73, 2018, 'Quarter-Final', 727, 738, 2, 1);
INSERT INTO public.games VALUES (74, 2018, 'Quarter-Final', 722, 728, 2, 0);
INSERT INTO public.games VALUES (75, 2018, 'Eighth-Final', 731, 720, 2, 1);
INSERT INTO public.games VALUES (76, 2018, 'Eighth-Final', 718, 736, 1, 0);
INSERT INTO public.games VALUES (77, 2018, 'Eighth-Final', 727, 734, 3, 2);
INSERT INTO public.games VALUES (78, 2018, 'Eighth-Final', 738, 740, 2, 0);
INSERT INTO public.games VALUES (79, 2018, 'Eighth-Final', 739, 735, 2, 1);
INSERT INTO public.games VALUES (80, 2018, 'Eighth-Final', 737, 726, 2, 1);
INSERT INTO public.games VALUES (81, 2018, 'Eighth-Final', 728, 719, 2, 1);
INSERT INTO public.games VALUES (82, 2018, 'Eighth-Final', 722, 730, 4, 3);
INSERT INTO public.games VALUES (83, 2014, 'Final', 729, 730, 1, 0);
INSERT INTO public.games VALUES (84, 2014, 'Third Place', 725, 738, 3, 0);
INSERT INTO public.games VALUES (85, 2014, 'Semi-Final', 730, 725, 1, 0);
INSERT INTO public.games VALUES (86, 2014, 'Semi-Final', 729, 738, 7, 1);
INSERT INTO public.games VALUES (87, 2014, 'Quarter-Final', 725, 741, 1, 0);
INSERT INTO public.games VALUES (88, 2014, 'Quarter-Final', 730, 727, 1, 0);
INSERT INTO public.games VALUES (89, 2014, 'Quarter-Final', 738, 720, 2, 1);
INSERT INTO public.games VALUES (90, 2014, 'Quarter-Final', 729, 722, 1, 0);
INSERT INTO public.games VALUES (91, 2014, 'Eighth-Final', 738, 733, 2, 1);
INSERT INTO public.games VALUES (92, 2014, 'Eighth-Final', 720, 728, 2, 0);
INSERT INTO public.games VALUES (93, 2014, 'Eighth-Final', 722, 724, 2, 0);
INSERT INTO public.games VALUES (94, 2014, 'Eighth-Final', 729, 721, 2, 1);
INSERT INTO public.games VALUES (95, 2014, 'Eighth-Final', 725, 740, 2, 1);
INSERT INTO public.games VALUES (96, 2014, 'Eighth-Final', 741, 732, 2, 1);
INSERT INTO public.games VALUES (97, 2014, 'Eighth-Final', 730, 736, 1, 0);
INSERT INTO public.games VALUES (98, 2014, 'Eighth-Final', 727, 723, 2, 1);


--
-- Data for Name: games_temp; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games_temp VALUES (2018, 'Final', 'France', 'Croatia', 4, 2);
INSERT INTO public.games_temp VALUES (2018, 'Third Place', 'Belgium', 'England', 2, 0);
INSERT INTO public.games_temp VALUES (2018, 'Semi-Final', 'Croatia', 'England', 2, 1);
INSERT INTO public.games_temp VALUES (2018, 'Semi-Final', 'France', 'Belgium', 1, 0);
INSERT INTO public.games_temp VALUES (2018, 'Quarter-Final', 'Croatia', 'Russia', 3, 2);
INSERT INTO public.games_temp VALUES (2018, 'Quarter-Final', 'England', 'Sweden', 2, 0);
INSERT INTO public.games_temp VALUES (2018, 'Quarter-Final', 'Belgium', 'Brazil', 2, 1);
INSERT INTO public.games_temp VALUES (2018, 'Quarter-Final', 'France', 'Uruguay', 2, 0);
INSERT INTO public.games_temp VALUES (2018, 'Eighth-Final', 'England', 'Colombia', 2, 1);
INSERT INTO public.games_temp VALUES (2018, 'Eighth-Final', 'Sweden', 'Switzerland', 1, 0);
INSERT INTO public.games_temp VALUES (2018, 'Eighth-Final', 'Belgium', 'Japan', 3, 2);
INSERT INTO public.games_temp VALUES (2018, 'Eighth-Final', 'Brazil', 'Mexico', 2, 0);
INSERT INTO public.games_temp VALUES (2018, 'Eighth-Final', 'Croatia', 'Denmark', 2, 1);
INSERT INTO public.games_temp VALUES (2018, 'Eighth-Final', 'Russia', 'Spain', 2, 1);
INSERT INTO public.games_temp VALUES (2018, 'Eighth-Final', 'Uruguay', 'Portugal', 2, 1);
INSERT INTO public.games_temp VALUES (2018, 'Eighth-Final', 'France', 'Argentina', 4, 3);
INSERT INTO public.games_temp VALUES (2014, 'Final', 'Germany', 'Argentina', 1, 0);
INSERT INTO public.games_temp VALUES (2014, 'Third Place', 'Netherlands', 'Brazil', 3, 0);
INSERT INTO public.games_temp VALUES (2014, 'Semi-Final', 'Argentina', 'Netherlands', 1, 0);
INSERT INTO public.games_temp VALUES (2014, 'Semi-Final', 'Germany', 'Brazil', 7, 1);
INSERT INTO public.games_temp VALUES (2014, 'Quarter-Final', 'Netherlands', 'Costa Rica', 1, 0);
INSERT INTO public.games_temp VALUES (2014, 'Quarter-Final', 'Argentina', 'Belgium', 1, 0);
INSERT INTO public.games_temp VALUES (2014, 'Quarter-Final', 'Brazil', 'Colombia', 2, 1);
INSERT INTO public.games_temp VALUES (2014, 'Quarter-Final', 'Germany', 'France', 1, 0);
INSERT INTO public.games_temp VALUES (2014, 'Eighth-Final', 'Brazil', 'Chile', 2, 1);
INSERT INTO public.games_temp VALUES (2014, 'Eighth-Final', 'Colombia', 'Uruguay', 2, 0);
INSERT INTO public.games_temp VALUES (2014, 'Eighth-Final', 'France', 'Nigeria', 2, 0);
INSERT INTO public.games_temp VALUES (2014, 'Eighth-Final', 'Germany', 'Algeria', 2, 1);
INSERT INTO public.games_temp VALUES (2014, 'Eighth-Final', 'Netherlands', 'Mexico', 2, 1);
INSERT INTO public.games_temp VALUES (2014, 'Eighth-Final', 'Costa Rica', 'Greece', 2, 1);
INSERT INTO public.games_temp VALUES (2014, 'Eighth-Final', 'Argentina', 'Switzerland', 1, 0);
INSERT INTO public.games_temp VALUES (2014, 'Eighth-Final', 'Belgium', 'United States', 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (718, 'Sweden');
INSERT INTO public.teams VALUES (719, 'Portugal');
INSERT INTO public.teams VALUES (720, 'Colombia');
INSERT INTO public.teams VALUES (721, 'Algeria');
INSERT INTO public.teams VALUES (722, 'France');
INSERT INTO public.teams VALUES (723, 'United States');
INSERT INTO public.teams VALUES (724, 'Nigeria');
INSERT INTO public.teams VALUES (725, 'Netherlands');
INSERT INTO public.teams VALUES (726, 'Spain');
INSERT INTO public.teams VALUES (727, 'Belgium');
INSERT INTO public.teams VALUES (728, 'Uruguay');
INSERT INTO public.teams VALUES (729, 'Germany');
INSERT INTO public.teams VALUES (730, 'Argentina');
INSERT INTO public.teams VALUES (731, 'England');
INSERT INTO public.teams VALUES (732, 'Greece');
INSERT INTO public.teams VALUES (733, 'Chile');
INSERT INTO public.teams VALUES (734, 'Japan');
INSERT INTO public.teams VALUES (735, 'Denmark');
INSERT INTO public.teams VALUES (736, 'Switzerland');
INSERT INTO public.teams VALUES (737, 'Russia');
INSERT INTO public.teams VALUES (738, 'Brazil');
INSERT INTO public.teams VALUES (739, 'Croatia');
INSERT INTO public.teams VALUES (740, 'Mexico');
INSERT INTO public.teams VALUES (741, 'Costa Rica');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 98, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 741, true);


--
-- Name: teams constraint_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT constraint_name UNIQUE (name);


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
-- Name: games fk_opponent_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent_id FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner_id FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

