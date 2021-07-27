--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6 (Debian 10.6-1.pgdg90+1)
-- Dumped by pg_dump version 11.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: block; Type: TABLE; Schema: public; Owner: probe
--

CREATE TABLE public.block (
);


ALTER TABLE public.block OWNER TO probe;

--
-- Name: peer; Type: TABLE; Schema: public; Owner: probe
--

CREATE TABLE public.peer (
);


ALTER TABLE public.peer OWNER TO probe;

--
-- Name: peer_block; Type: TABLE; Schema: public; Owner: probe
--

CREATE TABLE public.peer_block (
    raw_peer_id bytea NOT NULL,
    raw_block_id bytea NOT NULL,
    received timestamp without time zone NOT NULL,
    received_by bytea NOT NULL
);


ALTER TABLE public.peer_block OWNER TO probe;


--
-- Name: peer_seen; Type: TABLE; Schema: public; Owner: probe
--

CREATE TABLE public.peer_seen (
    raw_peer_id bytea NOT NULL,
    probe_id bytea NOT NULL,
    first_seen timestamp without time zone NOT NULL
);


ALTER TABLE public.peer_seen OWNER TO probe;

--
-- Name: peer_tx; Type: TABLE; Schema: public; Owner: probe
--

CREATE TABLE public.peer_tx (
    raw_peer_id bytea NOT NULL,
    raw_tx_id bytea NOT NULL,
    received timestamp without time zone NOT NULL,
    received_by bytea NOT NULL
);


ALTER TABLE public.peer_tx OWNER TO probe;

--
-- Name: probe; Type: TABLE; Schema: public; Owner: probe
--

CREATE TABLE public.probe (
    id bytea NOT NULL,
    ip inet NOT NULL,
    location text
);


ALTER TABLE public.probe OWNER TO probe;

--
-- Name: raw_block; Type: TABLE; Schema: public; Owner: probe
--

CREATE TABLE public.raw_block (
    id bytea NOT NULL,
    raw bytea NOT NULL,
    ts timestamp without time zone NOT NULL
);


ALTER TABLE public.raw_block OWNER TO probe;

--
-- Name: raw_peer; Type: TABLE; Schema: public; Owner: probe
--

CREATE TABLE public.raw_peer (
    id bytea NOT NULL,
    ip inet NOT NULL,
    port integer NOT NULL
);


ALTER TABLE public.raw_peer OWNER TO probe;

--
-- Name: raw_tx; Type: TABLE; Schema: public; Owner: probe
--

CREATE TABLE public.raw_tx (
    id bytea NOT NULL,
    raw bytea NOT NULL,
    ts timestamp without time zone NOT NULL
);


ALTER TABLE public.raw_tx OWNER TO probe;

--
-- Name: tx; Type: TABLE; Schema: public; Owner: probe
--

CREATE TABLE public.tx (
);


ALTER TABLE public.tx OWNER TO probe;

--
-- PostgreSQL database dump complete
--
