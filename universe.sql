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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    color character varying(20),
    size integer,
    galaxy_type character varying
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
    name character varying(30) NOT NULL,
    distance_from_earth numeric(4,1),
    age_in_millions_of_years integer,
    planet_id integer NOT NULL,
    size integer
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
    name character varying(30) NOT NULL,
    has_life boolean,
    description text,
    is_spherical boolean,
    star_id integer NOT NULL,
    size integer
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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    galaxy_id integer NOT NULL,
    size integer
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
-- Name: types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.types (
    types_id integer NOT NULL,
    name character varying(30),
    date date,
    is_good boolean NOT NULL,
    avg integer NOT NULL
);


ALTER TABLE public.types OWNER TO freecodecamp;

--
-- Name: types_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.types_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.types_type_id_seq OWNER TO freecodecamp;

--
-- Name: types_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.types_type_id_seq OWNED BY public.types.types_id;


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
-- Name: types types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.types ALTER COLUMN types_id SET DEFAULT nextval('public.types_type_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'one', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'two', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'three', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'four', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'five', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'six', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 3.4, 50, 6, NULL);
INSERT INTO public.moon VALUES (2, 'm_one', 13.4, 150, 3, NULL);
INSERT INTO public.moon VALUES (3, 'm_two', 15.2, 160, 3, NULL);
INSERT INTO public.moon VALUES (4, 'm_three', 14.4, 157, 3, NULL);
INSERT INTO public.moon VALUES (5, 'm_one', 61.4, 50, 4, NULL);
INSERT INTO public.moon VALUES (6, 'm_two', 55.2, 60, 4, NULL);
INSERT INTO public.moon VALUES (7, 'm_three', 54.4, 57, 4, NULL);
INSERT INTO public.moon VALUES (8, 'm_one', 81.4, 50, 8, NULL);
INSERT INTO public.moon VALUES (9, 'm_two', 85.2, 60, 8, NULL);
INSERT INTO public.moon VALUES (10, 'm_three', 84.4, 57, 8, NULL);
INSERT INTO public.moon VALUES (11, 'm_one', 41.4, 50, 2, NULL);
INSERT INTO public.moon VALUES (12, 'm_two', 45.2, 60, 2, NULL);
INSERT INTO public.moon VALUES (13, 'm_three', 44.4, 57, 2, NULL);
INSERT INTO public.moon VALUES (14, 'm_one', 41.4, 50, 1, NULL);
INSERT INTO public.moon VALUES (15, 'm_two', 45.2, 60, 1, NULL);
INSERT INTO public.moon VALUES (16, 'm_three', 44.4, 57, 1, NULL);
INSERT INTO public.moon VALUES (17, 'm_one', 41.4, 50, 7, NULL);
INSERT INTO public.moon VALUES (18, 'm_two', 45.2, 60, 7, NULL);
INSERT INTO public.moon VALUES (19, 'm_three', 44.4, 57, 7, NULL);
INSERT INTO public.moon VALUES (20, 'm_one', 41.4, 50, 10, NULL);
INSERT INTO public.moon VALUES (21, 'm_two', 45.2, 60, 10, NULL);
INSERT INTO public.moon VALUES (22, 'm_three', 44.4, 57, 10, NULL);
INSERT INTO public.moon VALUES (23, 'm_one', 41.4, 50, 10, NULL);
INSERT INTO public.moon VALUES (24, 'm_two', 45.2, 60, 10, NULL);
INSERT INTO public.moon VALUES (25, 'm_three', 44.4, 57, 10, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'venus', false, 'one of the planet in the universe', true, 1, NULL);
INSERT INTO public.planet VALUES (2, 'mars', false, 'one of the planet in the universe', true, 1, NULL);
INSERT INTO public.planet VALUES (3, 'jupiter', false, 'one of the largest  planet in the universe', true, 1, NULL);
INSERT INTO public.planet VALUES (4, 'pluto', false, 'one of the largest  planet in the universe', true, 1, NULL);
INSERT INTO public.planet VALUES (5, 'naptune', false, 'one of the largest  planet in the universe', true, 1, NULL);
INSERT INTO public.planet VALUES (6, 'earth', true, 'ONLY PLANET WITH LIVES in the universe', true, 1, NULL);
INSERT INTO public.planet VALUES (7, 'pl_one', false, 'one of many  in the universe', true, 2, NULL);
INSERT INTO public.planet VALUES (8, 'pl_two', false, 'one of many  in the universe', true, 2, NULL);
INSERT INTO public.planet VALUES (9, 'pl_three', false, 'one of many  in the universe', true, 2, NULL);
INSERT INTO public.planet VALUES (10, 'pl_four', false, 'one of many  in the universe', true, 2, NULL);
INSERT INTO public.planet VALUES (11, 'pl_five', false, 'one of many  in the universe', true, 2, NULL);
INSERT INTO public.planet VALUES (12, 'pl_six', false, 'one of many  in the universe', true, 2, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'st_one', 4, 1, NULL);
INSERT INTO public.star VALUES (2, 'st_two', 84, 1, NULL);
INSERT INTO public.star VALUES (3, 'st_three', 32, 2, NULL);
INSERT INTO public.star VALUES (4, 'st_four', 2, 2, NULL);
INSERT INTO public.star VALUES (5, 'st_five', 9, 3, NULL);
INSERT INTO public.star VALUES (6, 'st_six', 13, 5, NULL);


--
-- Data for Name: types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.types VALUES (1, 'oaa', '2022-10-23', true, 32);
INSERT INTO public.types VALUES (2, 'obbb', '2022-10-23', false, 32);
INSERT INTO public.types VALUES (3, 'occcc', '2022-10-23', false, 32);
INSERT INTO public.types VALUES (4, 'odddd', '2022-10-23', false, 32);
INSERT INTO public.types VALUES (5, 'oeeee', '2022-10-23', false, 32);
INSERT INTO public.types VALUES (6, 'offf', '2022-10-23', false, 32);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 25, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: types_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.types_type_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_size_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_size_key UNIQUE (size);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_size_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_size_key UNIQUE (size);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_size_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_size_key UNIQUE (size);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_size_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_size_key UNIQUE (size);


--
-- Name: types types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_pkey PRIMARY KEY (types_id);


--
-- Name: types uniq_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.types
    ADD CONSTRAINT uniq_name UNIQUE (name);


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

