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
    name character varying(50) NOT NULL,
    description text,
    size_in_mi_diameter numeric,
    total_planets numeric,
    visible boolean DEFAULT false
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(90) NOT NULL,
    planet_id integer,
    planet text,
    raduis numeric(15,2)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(90) NOT NULL,
    star_id integer,
    has_moon boolean,
    number_of_moons integer,
    has_aymospher boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: space_station; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space_station (
    space_station_id integer NOT NULL,
    name character varying(90) NOT NULL,
    is_operational boolean
);


ALTER TABLE public.space_station OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(90) NOT NULL,
    galaxy_id integer,
    distance_yrd integer,
    constellation text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'messier', 2480000, 110000.00, true);
INSERT INTO public.galaxy VALUES (2, 'Milky way', 'spiral galaxy we live in', 25800, 21000.00, true);
INSERT INTO public.galaxy VALUES (3, 'cygnus', 'galaxy with billion stars', 5000000, 55000, false);
INSERT INTO public.galaxy VALUES (4, 'canis', 'a dwarf galaxy', 40000, 25000, true);
INSERT INTO public.galaxy VALUES (5, 'magellanic', 'irregular galaxies', 150000, 5000, true);
INSERT INTO public.galaxy VALUES (6, 'vir', 'illiptical galaxies', 55000000, 7500000, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', NULL, 'Earth', 1079.60);
INSERT INTO public.moon VALUES (2, 'Europa', NULL, 'jupiter', 969.80);
INSERT INTO public.moon VALUES (3, 'io', NULL, 'jupiter', 1139.60);
INSERT INTO public.moon VALUES (4, 'titan', NULL, 'jupiter', 969.80);
INSERT INTO public.moon VALUES (5, 'ganymede', NULL, 'jupiter', 1463.25);
INSERT INTO public.moon VALUES (6, 'callisto', NULL, 'jupiter', 1498.20);
INSERT INTO public.moon VALUES (7, 'amalthea', NULL, 'jupiter', 1228.20);
INSERT INTO public.moon VALUES (8, 'adrastea', NULL, 'jupiter', 1225.20);
INSERT INTO public.moon VALUES (9, 'himalia', NULL, 'jupiter', 8.20);
INSERT INTO public.moon VALUES (10, 'ananke', NULL, 'jupiter', 8.70);
INSERT INTO public.moon VALUES (11, 'elara', NULL, 'jupiter', 24.70);
INSERT INTO public.moon VALUES (12, 'carme', NULL, 'jupiter', 4.70);
INSERT INTO public.moon VALUES (13, 'carpo', NULL, 'jupiter', 3.70);
INSERT INTO public.moon VALUES (14, 'herse', NULL, 'jupiter', 0.70);
INSERT INTO public.moon VALUES (15, 'thebe', NULL, 'jupiter', 20.60);
INSERT INTO public.moon VALUES (16, 'aitne', NULL, 'jupiter', 1.60);
INSERT INTO public.moon VALUES (17, 'kalyke', NULL, 'jupiter', 1.60);
INSERT INTO public.moon VALUES (18, 'arch', NULL, 'jupiter', 1.60);
INSERT INTO public.moon VALUES (19, 'dione', NULL, 'sutern', 340.60);
INSERT INTO public.moon VALUES (20, 'spode', NULL, 'jupiter', 1.24);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'ceres', NULL, false, 0, true);
INSERT INTO public.planet VALUES (2, 'pluto', NULL, true, 5, true);
INSERT INTO public.planet VALUES (3, 'charno', NULL, false, 0, false);
INSERT INTO public.planet VALUES (4, '2003 ub13', NULL, false, 0, false);
INSERT INTO public.planet VALUES (5, 'mercury', NULL, false, 0, true);
INSERT INTO public.planet VALUES (6, 'venues', NULL, false, 0, true);
INSERT INTO public.planet VALUES (7, 'earth', NULL, true, 1, true);
INSERT INTO public.planet VALUES (8, 'mars', NULL, true, 2, true);
INSERT INTO public.planet VALUES (9, 'jupiter', NULL, true, 79, true);
INSERT INTO public.planet VALUES (10, 'saturn', NULL, true, 82, true);
INSERT INTO public.planet VALUES (11, 'uranus', NULL, true, 27, true);
INSERT INTO public.planet VALUES (12, 'neptone', NULL, true, 14, true);


--
-- Data for Name: space_station; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space_station VALUES (1, 'International space station', true);
INSERT INTO public.space_station VALUES (2, 'Tiangog  space station', true);
INSERT INTO public.space_station VALUES (3, 'skaylab space station', false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'uy skuti', NULL, 9500, 'scutum');
INSERT INTO public.star VALUES (2, 'centouri', NULL, 8000, 'centouri');
INSERT INTO public.star VALUES (3, 'cygni', NULL, 5000, 'cygnu');
INSERT INTO public.star VALUES (4, 'scorpii', NULL, 1000, 'scorpus');
INSERT INTO public.star VALUES (5, 'cephei', NULL, 8000, 'ara');
INSERT INTO public.star VALUES (6, 'westerlund', NULL, 4000, 'ara');


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique UNIQUE (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique UNIQUE (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique UNIQUE (planet_id);


--
-- Name: space_station space_station_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_station
    ADD CONSTRAINT space_station_key PRIMARY KEY (space_station_id);


--
-- Name: space_station space_station_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_station
    ADD CONSTRAINT space_station_unique UNIQUE (space_station_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique UNIQUE (star_id);


--
-- Name: moon panet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT panet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet star_panet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_panet_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

