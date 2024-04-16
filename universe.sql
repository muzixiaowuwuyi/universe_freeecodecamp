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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    description text,
    name character varying(50) NOT NULL,
    distance_from_earth numeric,
    galaxy_type text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    description text,
    name character varying(50) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    description text,
    name character varying(50) NOT NULL,
    has_life boolean,
    age_in_millions_of_years integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: solar_system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solar_system (
    solar_system_id integer NOT NULL,
    name character varying(50) NOT NULL,
    star_id integer NOT NULL,
    description text
);


ALTER TABLE public.solar_system OWNER TO freecodecamp;

--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.solar_system_solar_system_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solar_system_solar_system_id_seq OWNER TO freecodecamp;

--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.solar_system_solar_system_id_seq OWNED BY public.solar_system.solar_system_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    description text,
    name character varying(50) NOT NULL,
    has_life boolean,
    is_spherical boolean,
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: solar_system solar_system_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system ALTER COLUMN solar_system_id SET DEFAULT nextval('public.solar_system_solar_system_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'The galaxy containing our solar system.', 'Milky Way', 1000000, 'Spiral');
INSERT INTO public.galaxy VALUES (2, 'The closest spiral galaxy to the Milky Way.', 'Andromeda', 2000000, 'Spiral');
INSERT INTO public.galaxy VALUES (3, 'A massive galaxy located in the Virgo Cluster.', 'Messier 87', 5000000, 'Elliptical');
INSERT INTO public.galaxy VALUES (4, 'A small spiral galaxy in the constellation Triangulum.', 'Triangulum', 3000000, 'Spiral');
INSERT INTO public.galaxy VALUES (5, 'A prominent galaxy in the Centaurus constellation.', 'Centaurus A', 4000000, 'Elliptical');
INSERT INTO public.galaxy VALUES (6, 'A classic spiral galaxy in the constellation Canes Venatici.', 'Whirlpool', 1500000, 'Spiral');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Earth''s only natural satellite.', 'Moon', NULL, true, 4500, 1);
INSERT INTO public.moon VALUES (2, 'The larger and closer of the two natural satellites of Mars.', 'Phobos', NULL, true, 4000, 2);
INSERT INTO public.moon VALUES (3, 'The smaller and outermost of the two natural satellites of Mars.', 'Deimos', NULL, true, 4000, 2);
INSERT INTO public.moon VALUES (4, 'The largest moon of Jupiter and in the Solar System.', 'Ganymede', NULL, true, 4500, 3);
INSERT INTO public.moon VALUES (5, 'The largest moon of Saturn.', 'Titan', NULL, true, 4000, 4);
INSERT INTO public.moon VALUES (6, 'The largest natural satellite of the planet Neptune.', 'Triton', NULL, true, 4500, 5);
INSERT INTO public.moon VALUES (7, 'The innermost of the four Galilean moons of the planet Jupiter.', 'Io', NULL, true, 4000, 3);
INSERT INTO public.moon VALUES (8, 'The smallest of the four Galilean moons orbiting Jupiter.', 'Europa', NULL, true, 4500, 3);
INSERT INTO public.moon VALUES (9, 'The second-largest moon of Jupiter.', 'Callisto', NULL, true, 4000, 3);
INSERT INTO public.moon VALUES (10, 'The second-largest moon of Saturn and the ninth-largest moon in the Solar System.', 'Rhea', NULL, true, 4000, 4);
INSERT INTO public.moon VALUES (11, 'The third-largest moon of Saturn.', 'Iapetus', NULL, true, 4500, 4);
INSERT INTO public.moon VALUES (12, 'The largest moon of the dwarf planet Pluto.', 'Charon', NULL, true, 4000, 5);
INSERT INTO public.moon VALUES (13, 'The sixth-largest moon of Saturn.', 'Enceladus', NULL, true, 4500, 4);
INSERT INTO public.moon VALUES (14, 'The fourth-largest moon of Saturn.', 'Dione', NULL, true, 4000, 4);
INSERT INTO public.moon VALUES (15, 'A moon of Saturn which is best known for its large crater, Herschel.', 'Mimas', NULL, true, 4500, 4);
INSERT INTO public.moon VALUES (16, 'A mid-sized moon of Saturn about 1,060 km across.', 'Tethys', NULL, true, 4000, 4);
INSERT INTO public.moon VALUES (17, 'The smallest and innermost of Uranus''s five round satellites.', 'Miranda', NULL, true, 4500, 5);
INSERT INTO public.moon VALUES (18, 'A moon of Uranus discovered by William Lassell in 1851.', 'Umbriel', NULL, true, 4000, 5);
INSERT INTO public.moon VALUES (19, 'Ariel is the brightest and possibly the youngest large moon of Uranus.', 'Ariel', NULL, true, 4500, 5);
INSERT INTO public.moon VALUES (20, 'The largest moon of Uranus.', 'Titania', NULL, true, 4000, 5);
INSERT INTO public.moon VALUES (21, 'Oberon is the second-largest and outermost of the major moons of Uranus.', 'Oberon', NULL, true, 4500, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'The third planet from the Sun and the only astronomical object known to harbor life.', 'Earth', true, 4500, 1);
INSERT INTO public.planet VALUES (2, 'The fourth planet from the Sun and the second smallest planet in the Solar System.', 'Mars', false, 4000, 1);
INSERT INTO public.planet VALUES (3, 'The largest planet in the Solar System.', 'Jupiter', false, 4500, 1);
INSERT INTO public.planet VALUES (4, 'The sixth planet from the Sun and the second-largest in the Solar System, after Jupiter.', 'Saturn', false, 4000, 1);
INSERT INTO public.planet VALUES (5, 'The eighth and farthest-known Solar planet from the Sun.', 'Neptune', false, 4500, 1);
INSERT INTO public.planet VALUES (6, 'The seventh planet from the Sun.', 'Uranus', false, 4000, 1);
INSERT INTO public.planet VALUES (19, 'A hypothetical planet once believed to exist in an orbit between Mercury and the Sun.', 'Vulcan', false, 4500, 1);
INSERT INTO public.planet VALUES (20, 'A moon of the gas giant Polyphemus in the Alpha Centauri system, depicted in the film Avatar.', 'Pandora', true, 100, 1);
INSERT INTO public.planet VALUES (21, 'A desert planet in a binary star system in the Star Wars universe.', 'Tatooine', false, 500, 1);
INSERT INTO public.planet VALUES (22, 'A peaceful and prosperous planet in the Star Wars universe, destroyed by the Death Star.', 'Alderaan', false, 2000, 1);
INSERT INTO public.planet VALUES (23, 'The home planet of Superman in the DC Comics universe, destroyed in a cataclysmic event.', 'Krypton', false, 10000, 1);
INSERT INTO public.planet VALUES (24, 'A desert planet and the only source of the spice melange in the Dune universe.', 'Arrakis', false, 10000, 1);


--
-- Data for Name: solar_system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.solar_system VALUES (1, 'Alpha Centauri System', 2, 'The closest star system to the Solar System, containing Alpha Centauri A, Alpha Centauri B, and Proxima Centauri.');
INSERT INTO public.solar_system VALUES (2, 'Sirius System', 3, 'A binary star system consisting of the stars Sirius A and Sirius B.');
INSERT INTO public.solar_system VALUES (3, 'Proxima Centauri System', 6, 'The closest known star system to the Solar System, containing the star Proxima Centauri.');
INSERT INTO public.solar_system VALUES (4, 'Tau Ceti System', 8, 'A single G-type star system located in the constellation Cetus, known to have one confirmed exoplanet.');
INSERT INTO public.solar_system VALUES (5, 'TRAPPIST-1 System', 9, 'A planetary system located 39 light-years away from the Solar System, notable for its seven Earth-sized exoplanets.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'The star at the center of the Solar System.', 'Sun', NULL, true, NULL, 5000, 1);
INSERT INTO public.star VALUES (2, 'The primary star in the Alpha Centauri system.', 'Alpha Centauri A', NULL, true, NULL, 6000, 1);
INSERT INTO public.star VALUES (3, 'The brightest star in the night sky.', 'Sirius', NULL, true, NULL, 8000, 1);
INSERT INTO public.star VALUES (4, 'A red supergiant in the constellation Orion.', 'Betelgeuse', NULL, true, NULL, 10000, 1);
INSERT INTO public.star VALUES (5, 'A bright star in the northern sky.', 'Vega', NULL, true, NULL, 20000, 1);
INSERT INTO public.star VALUES (6, 'The closest known star to the Sun.', 'Proxima Centauri', NULL, true, NULL, 2000, 1);
INSERT INTO public.star VALUES (7, 'A hypothetical planet once believed to exist in an orbit between Mercury and the Sun.', 'Vulcan', false, NULL, NULL, 4500, 1);
INSERT INTO public.star VALUES (8, 'A moon of the gas giant Polyphemus in the Alpha Centauri system, depicted in the film Avatar.', 'Pandora', true, NULL, NULL, 100, 2);
INSERT INTO public.star VALUES (9, 'A desert planet in a binary star system in the Star Wars universe.', 'Tatooine', false, NULL, NULL, 500, 3);
INSERT INTO public.star VALUES (10, 'A peaceful and prosperous planet in the Star Wars universe, destroyed by the Death Star.', 'Alderaan', false, NULL, NULL, 2000, 3);
INSERT INTO public.star VALUES (11, 'The home planet of Superman in the DC Comics universe, destroyed in a cataclysmic event.', 'Krypton', false, NULL, NULL, 10000, 4);
INSERT INTO public.star VALUES (12, 'A desert planet and the only source of the spice melange in the Dune universe.', 'Arrakis', false, NULL, NULL, 10000, 5);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 24, true);


--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.solar_system_solar_system_id_seq', 5, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 13, true);


--
-- Name: galaxy galaxy_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_unique UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_unique UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: solar_system solar_system_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_name_key UNIQUE (name);


--
-- Name: solar_system solar_system_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_pkey PRIMARY KEY (solar_system_id);


--
-- Name: star star_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unique UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: solar_system solar_system_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

