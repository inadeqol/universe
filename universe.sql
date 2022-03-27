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
-- Name: austronaut; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.austronaut (
    austronaut_id integer NOT NULL,
    name character varying(60),
    number_in_space integer NOT NULL,
    year_bt integer NOT NULL
);


ALTER TABLE public.austronaut OWNER TO freecodecamp;

--
-- Name: austronaut_austronaut_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.austronaut_austronaut_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.austronaut_austronaut_id_seq OWNER TO freecodecamp;

--
-- Name: austronaut_austronaut_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.austronaut_austronaut_id_seq OWNED BY public.austronaut.austronaut_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60),
    distanse_mpk numeric NOT NULL,
    has_life boolean,
    size_m integer NOT NULL,
    size integer NOT NULL
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
    name character varying(60),
    year integer NOT NULL,
    d integer NOT NULL,
    t integer NOT NULL,
    planet_id integer NOT NULL
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
    name character varying(60),
    temp integer NOT NULL,
    d integer NOT NULL,
    has_life boolean,
    star_id integer NOT NULL
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60),
    constellation text,
    fd integer NOT NULL,
    hip integer NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: austronaut austronaut_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.austronaut ALTER COLUMN austronaut_id SET DEFAULT nextval('public.austronaut_austronaut_id_seq'::regclass);


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: austronaut; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.austronaut VALUES (1, 'Juriy Gagarin', 1, 1934);
INSERT INTO public.austronaut VALUES (2, 'Alan Shepard', 2, 1923);
INSERT INTO public.austronaut VALUES (3, 'Pham Tuan', 8, 1947);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 0.008, true, 1, -21);
INSERT INTO public.galaxy VALUES (2, 'Canis Major Dwarf', 0.008, false, 23, -15);
INSERT INTO public.galaxy VALUES (3, 'Segue 1', 0.075, false, 14, -3);
INSERT INTO public.galaxy VALUES (4, 'Sagittarius Dwarf Sphr', 0.078, false, 5, -13);
INSERT INTO public.galaxy VALUES (5, 'Ursa Major II Dwarf', 0.098, false, 14, -4);
INSERT INTO public.galaxy VALUES (6, 'Triangulum II', 0.102, false, 16, -2);
INSERT INTO public.galaxy VALUES (7, 'Reticulum II', 0.102, false, 14, -3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Crateris 31', 1712, 16253, 23700, 1);
INSERT INTO public.moon VALUES (2, 'Neith', 1672, 13245, 33502, 2);
INSERT INTO public.moon VALUES (3, '3753 Cruithne', 1986, 5, 2534, 3);
INSERT INTO public.moon VALUES (4, 'Deimos', 1877, 12, 233, 4);
INSERT INTO public.moon VALUES (5, 'Phobos', 1877, 22, 233, 4);
INSERT INTO public.moon VALUES (6, 'Io', 1610, 1821, 110, 5);
INSERT INTO public.moon VALUES (7, 'Eorupe', 1610, 1561, 85, 5);
INSERT INTO public.moon VALUES (8, 'Ganimed', 1610, 2634, 110, 5);
INSERT INTO public.moon VALUES (9, 'Callisto', 1610, 2410, 134, 5);
INSERT INTO public.moon VALUES (10, 'Amaltheya', 1892, 83, 140, 5);
INSERT INTO public.moon VALUES (11, 'Gimalia', 1904, 170, 124, 5);
INSERT INTO public.moon VALUES (12, 'Elara', 1905, 86, 124, 5);
INSERT INTO public.moon VALUES (13, 'Pasiphe', 1908, 58, 130, 5);
INSERT INTO public.moon VALUES (14, 'Sinophe', 1914, 19, 124, 5);
INSERT INTO public.moon VALUES (15, 'Lisitheya', 1938, 36, 145, 5);
INSERT INTO public.moon VALUES (16, 'Titania', 1787, 1576, 77, 7);
INSERT INTO public.moon VALUES (17, 'Oberon', 1787, 1522, 80, 7);
INSERT INTO public.moon VALUES (18, 'Ariel', 1851, 579, 84, 7);
INSERT INTO public.moon VALUES (19, 'Puck', 1985, 81, 14, 7);
INSERT INTO public.moon VALUES (20, 'Mab', 2003, 24, 63, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 500, 4880, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 737, 6051, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 300, 6371, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 210, 3389, false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 165, 69911, false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 134, 58232, false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 76, 25362, false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 72, 24622, false, 1);
INSERT INTO public.planet VALUES (9, 'Brown Bear', 100, 53600, false, 4);
INSERT INTO public.planet VALUES (10, 'Kepler-22b', 262, 24, false, 1);
INSERT INTO public.planet VALUES (11, 'Gliese 163 c', 277, 24, false, 1);
INSERT INTO public.planet VALUES (12, 'HD 85512 b', 298, 36, false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Rigel', 'Orion', 19, 24436, 1);
INSERT INTO public.star VALUES (2, 'Sirius A', 'Canis Major', 9, 32349, 2);
INSERT INTO public.star VALUES (3, 'e Sgr', 'Sagittarius', 20, 90185, 3);
INSERT INTO public.star VALUES (4, 'Mizar', 'Ursa Major', 79, 65378, 5);
INSERT INTO public.star VALUES (5, 'e Uma', 'Ursa Major', 77, 62956, 5);
INSERT INTO public.star VALUES (6, 'a Ret', 'Reticulum', 1, 19780, 7);


--
-- Name: austronaut_austronaut_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.austronaut_austronaut_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: austronaut austronaut_austronaut_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.austronaut
    ADD CONSTRAINT austronaut_austronaut_id_key UNIQUE (austronaut_id);


--
-- Name: austronaut austronaut_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.austronaut
    ADD CONSTRAINT austronaut_pkey PRIMARY KEY (austronaut_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

