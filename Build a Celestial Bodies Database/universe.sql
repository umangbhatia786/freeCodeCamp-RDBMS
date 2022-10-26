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
-- Name: asteriod; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteriod (
    asteriod_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size_in_sq_km numeric(3,1),
    is_made_of_rock boolean NOT NULL
);


ALTER TABLE public.asteriod OWNER TO freecodecamp;

--
-- Name: asteriod_asteriod_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteriod_asteriod_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteriod_asteriod_id_seq OWNER TO freecodecamp;

--
-- Name: asteriod_asteriod_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteriod_asteriod_id_seq OWNED BY public.asteriod.asteriod_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age integer NOT NULL,
    population_in_millions integer,
    empire_or_republic character varying(8)
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
    name character varying(20) NOT NULL,
    description text,
    surface_area_in_mn_sq_km numeric(4,2),
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
    name character varying(20) NOT NULL,
    surface integer NOT NULL,
    empire_or_republic character varying(8),
    is_habitated boolean,
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
    name character varying(20) NOT NULL,
    lumen_in_millions integer,
    is_habitated boolean,
    empire_or_republic character varying(8),
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
-- Name: asteriod asteriod_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteriod ALTER COLUMN asteriod_id SET DEFAULT nextval('public.asteriod_asteriod_id_seq'::regclass);


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
-- Data for Name: asteriod; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteriod VALUES (1, 'GHNG12321', 23.1, true);
INSERT INTO public.asteriod VALUES (2, 'DGHG34542', 56.8, true);
INSERT INTO public.asteriod VALUES (3, 'TY4354252', 78.1, false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 5, 6, 'empire');
INSERT INTO public.galaxy VALUES (2, 'Black Eye', 6, 3, 'empire');
INSERT INTO public.galaxy VALUES (3, 'Milky Way', 2, 4, 'republic');
INSERT INTO public.galaxy VALUES (4, 'Hawk', 8, 7, 'empire');
INSERT INTO public.galaxy VALUES (5, 'Butterfly', 9, 5, 'republic');
INSERT INTO public.galaxy VALUES (6, 'Antennae', 3, 10, 'republic');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Alakatha', 'from K´vath', 34.33, 1);
INSERT INTO public.moon VALUES (2, 'Alaris prime', 'free moon', 45.44, 1);
INSERT INTO public.moon VALUES (3, 'Antar', 'from Antar', 48.44, 1);
INSERT INTO public.moon VALUES (4, 'Cybloc', 'from Cybloc', 43.23, 1);
INSERT INTO public.moon VALUES (5, 'Dorumaa', 'a free moon forever', 23.45, 2);
INSERT INTO public.moon VALUES (6, 'Dun', 'from Dun', 33.33, 2);
INSERT INTO public.moon VALUES (7, 'R3212', 'from FVEF', 45.66, 2);
INSERT INTO public.moon VALUES (8, 'X234234', 'a free moon somewhere', 29.77, 2);
INSERT INTO public.moon VALUES (9, 'Doon', 'from Doon', 66.54, 2);
INSERT INTO public.moon VALUES (10, 'Z2324', 'from VERGRE', 12.33, 3);
INSERT INTO public.moon VALUES (11, 'X234244', 'from ewefwr', 41.22, 3);
INSERT INTO public.moon VALUES (12, 'V32423', 'from EGG', 77.32, 3);
INSERT INTO public.moon VALUES (13, 'PD1231', 'from VFGSRGFS', 54.22, 3);
INSERT INTO public.moon VALUES (14, 'T34423', 'from rwfwr', 39.99, 3);
INSERT INTO public.moon VALUES (15, 'M23243', 'from gbrgb', 77.39, 3);
INSERT INTO public.moon VALUES (16, 'A234324', 'from fwrfwr', 66.21, 4);
INSERT INTO public.moon VALUES (17, 'AS23323', 'from fvfe', 18.99, 4);
INSERT INTO public.moon VALUES (18, 'FRF321', 'from fvfv', 73.12, 4);
INSERT INTO public.moon VALUES (19, 'B43521', 'from dsds', 54.22, 5);
INSERT INTO public.moon VALUES (20, 'AD23231', 'from ffeds', 71.22, 5);
INSERT INTO public.moon VALUES (21, 'BN3232', 'from dssdv', 61.22, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Abafar', 2, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Earth', 3, NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'Saturn', 4, NULL, NULL, 2);
INSERT INTO public.planet VALUES (4, 'Jupiter', 1, NULL, NULL, 2);
INSERT INTO public.planet VALUES (5, 'Uranus', 6, NULL, NULL, 3);
INSERT INTO public.planet VALUES (6, 'Mercury', 11, NULL, NULL, 3);
INSERT INTO public.planet VALUES (7, 'Frost', 12, NULL, NULL, 3);
INSERT INTO public.planet VALUES (8, 'Denver', 13, NULL, NULL, 2);
INSERT INTO public.planet VALUES (9, 'Hamley', 15, NULL, NULL, 2);
INSERT INTO public.planet VALUES (10, 'Naboo', 5, NULL, NULL, 4);
INSERT INTO public.planet VALUES (11, 'Mustafar', 9, NULL, NULL, 4);
INSERT INTO public.planet VALUES (12, 'Ranrok', 10, NULL, NULL, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Lynx', 5, true, 'empire', 1);
INSERT INTO public.star VALUES (2, 'Eridanus', 2, false, 'empire', 1);
INSERT INTO public.star VALUES (3, 'Cassiopia', 3, true, 'republic', 2);
INSERT INTO public.star VALUES (4, 'Titan', 6, true, 'empire', 3);
INSERT INTO public.star VALUES (5, 'Phoenix', 8, true, 'empire', 4);
INSERT INTO public.star VALUES (6, 'R1341', 7, false, 'republic', 5);


--
-- Name: asteriod_asteriod_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteriod_asteriod_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: asteriod asteriod_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteriod
    ADD CONSTRAINT asteriod_name_key UNIQUE (name);


--
-- Name: asteriod asteriod_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteriod
    ADD CONSTRAINT asteriod_pkey PRIMARY KEY (asteriod_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_population_in_millions_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_population_in_millions_key UNIQUE (population_in_millions);


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
-- Name: star star_lumen_in_millions_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_lumen_in_millions_key UNIQUE (lumen_in_millions);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon unq_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unq_name UNIQUE (name);


--
-- Name: planet unq_surface; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unq_surface UNIQUE (surface);


--
-- Name: star galaxy_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id_fk FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

