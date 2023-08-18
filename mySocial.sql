--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

-- Started on 2023-08-17 23:07:16 PDT

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

--
-- TOC entry 6 (class 2615 OID 16399)
-- Name: social; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA social;


ALTER SCHEMA social OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16429)
-- Name: comment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comment_id_seq OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16407)
-- Name: info_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.info_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.info_id_seq OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16439)
-- Name: post_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_id_seq OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 217 (class 1259 OID 16424)
-- Name: comment_t; Type: TABLE; Schema: social; Owner: postgres
--

CREATE TABLE social.comment_t (
    comment_id bigint DEFAULT nextval('public.comment_id_seq'::regclass) NOT NULL,
    user_name character varying(200),
    user_comment character varying(200),
    comment_time bigint,
    post_id bigint
);


ALTER TABLE social.comment_t OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16432)
-- Name: post_t; Type: TABLE; Schema: social; Owner: postgres
--

CREATE TABLE social.post_t (
    post_id bigint DEFAULT nextval('public.post_id_seq'::regclass) NOT NULL,
    title character varying(200),
    description character varying(1200),
    creator character varying(200),
    likes bigint,
    occasion character varying,
    post_time bigint,
    comments bigint
);


ALTER TABLE social.post_t OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16400)
-- Name: userinfo_t; Type: TABLE; Schema: social; Owner: postgres
--

CREATE TABLE social.userinfo_t (
    user_id numeric DEFAULT nextval('public.info_id_seq'::regclass) NOT NULL,
    email character varying,
    user_password character varying,
    phone_number character varying(10)
);


ALTER TABLE social.userinfo_t OWNER TO postgres;

--
-- TOC entry 3458 (class 2606 OID 16428)
-- Name: comment_t comment_t_pkey; Type: CONSTRAINT; Schema: social; Owner: postgres
--

ALTER TABLE ONLY social.comment_t
    ADD CONSTRAINT comment_t_pkey PRIMARY KEY (comment_id);


--
-- TOC entry 3454 (class 2606 OID 16443)
-- Name: userinfo_t email; Type: CONSTRAINT; Schema: social; Owner: postgres
--

ALTER TABLE ONLY social.userinfo_t
    ADD CONSTRAINT email UNIQUE (email);


--
-- TOC entry 3460 (class 2606 OID 16438)
-- Name: post_t post_t_pkey; Type: CONSTRAINT; Schema: social; Owner: postgres
--

ALTER TABLE ONLY social.post_t
    ADD CONSTRAINT post_t_pkey PRIMARY KEY (post_id);


--
-- TOC entry 3456 (class 2606 OID 16406)
-- Name: userinfo_t userInfo_t_pkey; Type: CONSTRAINT; Schema: social; Owner: postgres
--

ALTER TABLE ONLY social.userinfo_t
    ADD CONSTRAINT "userInfo_t_pkey" PRIMARY KEY (user_id);


-- Completed on 2023-08-17 23:07:16 PDT

--
-- PostgreSQL database dump complete
--

