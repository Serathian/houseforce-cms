--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3 (Debian 16.3-1.pgdg120+1)
-- Dumped by pg_dump version 16.3 (Debian 16.3-1.pgdg120+1)

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
-- Name: about_uses; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.about_uses (
    id integer NOT NULL,
    title character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.about_uses OWNER TO strapi;

--
-- Name: about_uses_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.about_uses_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.about_uses_components OWNER TO strapi;

--
-- Name: about_uses_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.about_uses_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.about_uses_components_id_seq OWNER TO strapi;

--
-- Name: about_uses_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.about_uses_components_id_seq OWNED BY public.about_uses_components.id;


--
-- Name: about_uses_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.about_uses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.about_uses_id_seq OWNER TO strapi;

--
-- Name: about_uses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.about_uses_id_seq OWNED BY public.about_uses.id;


--
-- Name: about_uses_localizations_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.about_uses_localizations_links (
    id integer NOT NULL,
    about_us_id integer,
    inv_about_us_id integer,
    about_us_order double precision
);


ALTER TABLE public.about_uses_localizations_links OWNER TO strapi;

--
-- Name: about_uses_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.about_uses_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.about_uses_localizations_links_id_seq OWNER TO strapi;

--
-- Name: about_uses_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.about_uses_localizations_links_id_seq OWNED BY public.about_uses_localizations_links.id;


--
-- Name: admin_permissions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    action character varying(255),
    action_parameters jsonb,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_permissions OWNER TO strapi;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_permissions_id_seq OWNER TO strapi;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;


--
-- Name: admin_permissions_role_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);


ALTER TABLE public.admin_permissions_role_links OWNER TO strapi;

--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNER TO strapi;

--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNED BY public.admin_permissions_role_links.id;


--
-- Name: admin_roles; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_roles OWNER TO strapi;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_roles_id_seq OWNER TO strapi;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_users (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_users OWNER TO strapi;

--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_users_id_seq OWNER TO strapi;

--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- Name: admin_users_roles_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.admin_users_roles_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_order double precision,
    user_order double precision
);


ALTER TABLE public.admin_users_roles_links OWNER TO strapi;

--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.admin_users_roles_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNER TO strapi;

--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNED BY public.admin_users_roles_links.id;


--
-- Name: article_pages; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.article_pages (
    id integer NOT NULL,
    title character varying(255),
    introduction text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.article_pages OWNER TO strapi;

--
-- Name: article_pages_category_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.article_pages_category_links (
    id integer NOT NULL,
    article_page_id integer,
    category_id integer,
    article_page_order double precision
);


ALTER TABLE public.article_pages_category_links OWNER TO strapi;

--
-- Name: article_pages_category_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.article_pages_category_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.article_pages_category_links_id_seq OWNER TO strapi;

--
-- Name: article_pages_category_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.article_pages_category_links_id_seq OWNED BY public.article_pages_category_links.id;


--
-- Name: article_pages_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.article_pages_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.article_pages_components OWNER TO strapi;

--
-- Name: article_pages_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.article_pages_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.article_pages_components_id_seq OWNER TO strapi;

--
-- Name: article_pages_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.article_pages_components_id_seq OWNED BY public.article_pages_components.id;


--
-- Name: article_pages_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.article_pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.article_pages_id_seq OWNER TO strapi;

--
-- Name: article_pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.article_pages_id_seq OWNED BY public.article_pages.id;


--
-- Name: article_pages_localizations_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.article_pages_localizations_links (
    id integer NOT NULL,
    article_page_id integer,
    inv_article_page_id integer,
    article_page_order double precision
);


ALTER TABLE public.article_pages_localizations_links OWNER TO strapi;

--
-- Name: article_pages_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.article_pages_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.article_pages_localizations_links_id_seq OWNER TO strapi;

--
-- Name: article_pages_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.article_pages_localizations_links_id_seq OWNED BY public.article_pages_localizations_links.id;


--
-- Name: article_pages_tags_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.article_pages_tags_links (
    id integer NOT NULL,
    article_page_id integer,
    tag_id integer,
    tag_order double precision,
    article_page_order double precision
);


ALTER TABLE public.article_pages_tags_links OWNER TO strapi;

--
-- Name: article_pages_tags_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.article_pages_tags_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.article_pages_tags_links_id_seq OWNER TO strapi;

--
-- Name: article_pages_tags_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.article_pages_tags_links_id_seq OWNED BY public.article_pages_tags_links.id;


--
-- Name: articles; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.articles (
    id integer NOT NULL,
    title character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.articles OWNER TO strapi;

--
-- Name: articles_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.articles_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.articles_components OWNER TO strapi;

--
-- Name: articles_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.articles_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.articles_components_id_seq OWNER TO strapi;

--
-- Name: articles_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.articles_components_id_seq OWNED BY public.articles_components.id;


--
-- Name: articles_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.articles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.articles_id_seq OWNER TO strapi;

--
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.articles_id_seq OWNED BY public.articles.id;


--
-- Name: articles_localizations_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.articles_localizations_links (
    id integer NOT NULL,
    article_id integer,
    inv_article_id integer,
    article_order double precision
);


ALTER TABLE public.articles_localizations_links OWNER TO strapi;

--
-- Name: articles_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.articles_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.articles_localizations_links_id_seq OWNER TO strapi;

--
-- Name: articles_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.articles_localizations_links_id_seq OWNED BY public.articles_localizations_links.id;


--
-- Name: blog_pages; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.blog_pages (
    id integer NOT NULL,
    title character varying(255),
    introduction text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.blog_pages OWNER TO strapi;

--
-- Name: blog_pages_category_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.blog_pages_category_links (
    id integer NOT NULL,
    blog_page_id integer,
    category_id integer,
    blog_page_order double precision
);


ALTER TABLE public.blog_pages_category_links OWNER TO strapi;

--
-- Name: blog_pages_category_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.blog_pages_category_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.blog_pages_category_links_id_seq OWNER TO strapi;

--
-- Name: blog_pages_category_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.blog_pages_category_links_id_seq OWNED BY public.blog_pages_category_links.id;


--
-- Name: blog_pages_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.blog_pages_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.blog_pages_components OWNER TO strapi;

--
-- Name: blog_pages_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.blog_pages_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.blog_pages_components_id_seq OWNER TO strapi;

--
-- Name: blog_pages_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.blog_pages_components_id_seq OWNED BY public.blog_pages_components.id;


--
-- Name: blog_pages_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.blog_pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.blog_pages_id_seq OWNER TO strapi;

--
-- Name: blog_pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.blog_pages_id_seq OWNED BY public.blog_pages.id;


--
-- Name: blog_pages_localizations_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.blog_pages_localizations_links (
    id integer NOT NULL,
    blog_page_id integer,
    inv_blog_page_id integer,
    blog_page_order double precision
);


ALTER TABLE public.blog_pages_localizations_links OWNER TO strapi;

--
-- Name: blog_pages_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.blog_pages_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.blog_pages_localizations_links_id_seq OWNER TO strapi;

--
-- Name: blog_pages_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.blog_pages_localizations_links_id_seq OWNED BY public.blog_pages_localizations_links.id;


--
-- Name: blog_pages_tags_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.blog_pages_tags_links (
    id integer NOT NULL,
    blog_page_id integer,
    tag_id integer,
    tag_order double precision,
    blog_page_order double precision
);


ALTER TABLE public.blog_pages_tags_links OWNER TO strapi;

--
-- Name: blog_pages_tags_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.blog_pages_tags_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.blog_pages_tags_links_id_seq OWNER TO strapi;

--
-- Name: blog_pages_tags_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.blog_pages_tags_links_id_seq OWNED BY public.blog_pages_tags_links.id;


--
-- Name: blogs; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.blogs (
    id integer NOT NULL,
    title character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.blogs OWNER TO strapi;

--
-- Name: blogs_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.blogs_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.blogs_components OWNER TO strapi;

--
-- Name: blogs_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.blogs_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.blogs_components_id_seq OWNER TO strapi;

--
-- Name: blogs_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.blogs_components_id_seq OWNED BY public.blogs_components.id;


--
-- Name: blogs_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.blogs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.blogs_id_seq OWNER TO strapi;

--
-- Name: blogs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.blogs_id_seq OWNED BY public.blogs.id;


--
-- Name: blogs_localizations_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.blogs_localizations_links (
    id integer NOT NULL,
    blog_id integer,
    inv_blog_id integer,
    blog_order double precision
);


ALTER TABLE public.blogs_localizations_links OWNER TO strapi;

--
-- Name: blogs_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.blogs_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.blogs_localizations_links_id_seq OWNER TO strapi;

--
-- Name: blogs_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.blogs_localizations_links_id_seq OWNED BY public.blogs_localizations_links.id;


--
-- Name: categories; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255),
    color character varying(255)
);


ALTER TABLE public.categories OWNER TO strapi;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.categories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categories_id_seq OWNER TO strapi;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.categories_id_seq OWNED BY public.categories.id;


--
-- Name: categories_localizations_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.categories_localizations_links (
    id integer NOT NULL,
    category_id integer,
    inv_category_id integer,
    category_order double precision
);


ALTER TABLE public.categories_localizations_links OWNER TO strapi;

--
-- Name: categories_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.categories_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categories_localizations_links_id_seq OWNER TO strapi;

--
-- Name: categories_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.categories_localizations_links_id_seq OWNED BY public.categories_localizations_links.id;


--
-- Name: components_blocks_header_blocks; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_blocks_header_blocks (
    id integer NOT NULL,
    text character varying(255)
);


ALTER TABLE public.components_blocks_header_blocks OWNER TO strapi;

--
-- Name: components_blocks_header_blocks_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_blocks_header_blocks_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_blocks_header_blocks_components OWNER TO strapi;

--
-- Name: components_blocks_header_blocks_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_blocks_header_blocks_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_blocks_header_blocks_components_id_seq OWNER TO strapi;

--
-- Name: components_blocks_header_blocks_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_blocks_header_blocks_components_id_seq OWNED BY public.components_blocks_header_blocks_components.id;


--
-- Name: components_blocks_header_blocks_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_blocks_header_blocks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_blocks_header_blocks_id_seq OWNER TO strapi;

--
-- Name: components_blocks_header_blocks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_blocks_header_blocks_id_seq OWNED BY public.components_blocks_header_blocks.id;


--
-- Name: components_blocks_image_blocks; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_blocks_image_blocks (
    id integer NOT NULL
);


ALTER TABLE public.components_blocks_image_blocks OWNER TO strapi;

--
-- Name: components_blocks_image_blocks_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_blocks_image_blocks_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_blocks_image_blocks_components OWNER TO strapi;

--
-- Name: components_blocks_image_blocks_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_blocks_image_blocks_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_blocks_image_blocks_components_id_seq OWNER TO strapi;

--
-- Name: components_blocks_image_blocks_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_blocks_image_blocks_components_id_seq OWNED BY public.components_blocks_image_blocks_components.id;


--
-- Name: components_blocks_image_blocks_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_blocks_image_blocks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_blocks_image_blocks_id_seq OWNER TO strapi;

--
-- Name: components_blocks_image_blocks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_blocks_image_blocks_id_seq OWNED BY public.components_blocks_image_blocks.id;


--
-- Name: components_blocks_separator_blocks; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_blocks_separator_blocks (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_blocks_separator_blocks OWNER TO strapi;

--
-- Name: components_blocks_separator_blocks_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_blocks_separator_blocks_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_blocks_separator_blocks_components OWNER TO strapi;

--
-- Name: components_blocks_separator_blocks_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_blocks_separator_blocks_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_blocks_separator_blocks_components_id_seq OWNER TO strapi;

--
-- Name: components_blocks_separator_blocks_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_blocks_separator_blocks_components_id_seq OWNED BY public.components_blocks_separator_blocks_components.id;


--
-- Name: components_blocks_separator_blocks_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_blocks_separator_blocks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_blocks_separator_blocks_id_seq OWNER TO strapi;

--
-- Name: components_blocks_separator_blocks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_blocks_separator_blocks_id_seq OWNED BY public.components_blocks_separator_blocks.id;


--
-- Name: components_blocks_tab_blocks; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_blocks_tab_blocks (
    id integer NOT NULL
);


ALTER TABLE public.components_blocks_tab_blocks OWNER TO strapi;

--
-- Name: components_blocks_tab_blocks_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_blocks_tab_blocks_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_blocks_tab_blocks_components OWNER TO strapi;

--
-- Name: components_blocks_tab_blocks_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_blocks_tab_blocks_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_blocks_tab_blocks_components_id_seq OWNER TO strapi;

--
-- Name: components_blocks_tab_blocks_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_blocks_tab_blocks_components_id_seq OWNED BY public.components_blocks_tab_blocks_components.id;


--
-- Name: components_blocks_tab_blocks_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_blocks_tab_blocks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_blocks_tab_blocks_id_seq OWNER TO strapi;

--
-- Name: components_blocks_tab_blocks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_blocks_tab_blocks_id_seq OWNED BY public.components_blocks_tab_blocks.id;


--
-- Name: components_blocks_text_blocks; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_blocks_text_blocks (
    id integer NOT NULL,
    text jsonb
);


ALTER TABLE public.components_blocks_text_blocks OWNER TO strapi;

--
-- Name: components_blocks_text_blocks_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_blocks_text_blocks_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_blocks_text_blocks_components OWNER TO strapi;

--
-- Name: components_blocks_text_blocks_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_blocks_text_blocks_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_blocks_text_blocks_components_id_seq OWNER TO strapi;

--
-- Name: components_blocks_text_blocks_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_blocks_text_blocks_components_id_seq OWNED BY public.components_blocks_text_blocks_components.id;


--
-- Name: components_blocks_text_blocks_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_blocks_text_blocks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_blocks_text_blocks_id_seq OWNER TO strapi;

--
-- Name: components_blocks_text_blocks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_blocks_text_blocks_id_seq OWNED BY public.components_blocks_text_blocks.id;


--
-- Name: components_components_tabs; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_components_tabs (
    id integer NOT NULL,
    tab_title character varying(255),
    content_title character varying(255),
    content text,
    icon character varying(255)
);


ALTER TABLE public.components_components_tabs OWNER TO strapi;

--
-- Name: components_components_tabs_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_components_tabs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_components_tabs_id_seq OWNER TO strapi;

--
-- Name: components_components_tabs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_components_tabs_id_seq OWNED BY public.components_components_tabs.id;


--
-- Name: components_options_display_options; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.components_options_display_options (
    id integer NOT NULL,
    block_size character varying(255),
    border_radius character varying(255),
    border boolean
);


ALTER TABLE public.components_options_display_options OWNER TO strapi;

--
-- Name: components_options_display_options_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.components_options_display_options_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.components_options_display_options_id_seq OWNER TO strapi;

--
-- Name: components_options_display_options_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.components_options_display_options_id_seq OWNED BY public.components_options_display_options.id;


--
-- Name: files; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.files (
    id integer NOT NULL,
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.files OWNER TO strapi;

--
-- Name: files_folder_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.files_folder_links (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_order double precision
);


ALTER TABLE public.files_folder_links OWNER TO strapi;

--
-- Name: files_folder_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.files_folder_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_folder_links_id_seq OWNER TO strapi;

--
-- Name: files_folder_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.files_folder_links_id_seq OWNED BY public.files_folder_links.id;


--
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_id_seq OWNER TO strapi;

--
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- Name: files_related_morphs; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.files_related_morphs (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.files_related_morphs OWNER TO strapi;

--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.files_related_morphs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.files_related_morphs_id_seq OWNER TO strapi;

--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.files_related_morphs_id_seq OWNED BY public.files_related_morphs.id;


--
-- Name: homecares; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.homecares (
    id integer NOT NULL,
    title character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.homecares OWNER TO strapi;

--
-- Name: homecares_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.homecares_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.homecares_components OWNER TO strapi;

--
-- Name: homecares_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.homecares_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.homecares_components_id_seq OWNER TO strapi;

--
-- Name: homecares_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.homecares_components_id_seq OWNED BY public.homecares_components.id;


--
-- Name: homecares_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.homecares_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.homecares_id_seq OWNER TO strapi;

--
-- Name: homecares_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.homecares_id_seq OWNED BY public.homecares.id;


--
-- Name: homecares_localizations_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.homecares_localizations_links (
    id integer NOT NULL,
    homecare_id integer,
    inv_homecare_id integer,
    homecare_order double precision
);


ALTER TABLE public.homecares_localizations_links OWNER TO strapi;

--
-- Name: homecares_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.homecares_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.homecares_localizations_links_id_seq OWNER TO strapi;

--
-- Name: homecares_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.homecares_localizations_links_id_seq OWNED BY public.homecares_localizations_links.id;


--
-- Name: i18n_locale; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.i18n_locale OWNER TO strapi;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.i18n_locale_id_seq OWNER TO strapi;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;


--
-- Name: project_pages; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.project_pages (
    id integer NOT NULL,
    title character varying(255),
    introduction text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.project_pages OWNER TO strapi;

--
-- Name: project_pages_category_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.project_pages_category_links (
    id integer NOT NULL,
    project_page_id integer,
    category_id integer,
    project_page_order double precision
);


ALTER TABLE public.project_pages_category_links OWNER TO strapi;

--
-- Name: project_pages_category_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.project_pages_category_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.project_pages_category_links_id_seq OWNER TO strapi;

--
-- Name: project_pages_category_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.project_pages_category_links_id_seq OWNED BY public.project_pages_category_links.id;


--
-- Name: project_pages_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.project_pages_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.project_pages_components OWNER TO strapi;

--
-- Name: project_pages_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.project_pages_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.project_pages_components_id_seq OWNER TO strapi;

--
-- Name: project_pages_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.project_pages_components_id_seq OWNED BY public.project_pages_components.id;


--
-- Name: project_pages_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.project_pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.project_pages_id_seq OWNER TO strapi;

--
-- Name: project_pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.project_pages_id_seq OWNED BY public.project_pages.id;


--
-- Name: project_pages_localizations_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.project_pages_localizations_links (
    id integer NOT NULL,
    project_page_id integer,
    inv_project_page_id integer,
    project_page_order double precision
);


ALTER TABLE public.project_pages_localizations_links OWNER TO strapi;

--
-- Name: project_pages_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.project_pages_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.project_pages_localizations_links_id_seq OWNER TO strapi;

--
-- Name: project_pages_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.project_pages_localizations_links_id_seq OWNED BY public.project_pages_localizations_links.id;


--
-- Name: project_pages_tags_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.project_pages_tags_links (
    id integer NOT NULL,
    project_page_id integer,
    tag_id integer,
    tag_order double precision,
    project_page_order double precision
);


ALTER TABLE public.project_pages_tags_links OWNER TO strapi;

--
-- Name: project_pages_tags_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.project_pages_tags_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.project_pages_tags_links_id_seq OWNER TO strapi;

--
-- Name: project_pages_tags_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.project_pages_tags_links_id_seq OWNED BY public.project_pages_tags_links.id;


--
-- Name: projects; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.projects (
    id integer NOT NULL,
    title character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.projects OWNER TO strapi;

--
-- Name: projects_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.projects_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.projects_components OWNER TO strapi;

--
-- Name: projects_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.projects_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.projects_components_id_seq OWNER TO strapi;

--
-- Name: projects_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.projects_components_id_seq OWNED BY public.projects_components.id;


--
-- Name: projects_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.projects_id_seq OWNER TO strapi;

--
-- Name: projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.projects_id_seq OWNED BY public.projects.id;


--
-- Name: projects_localizations_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.projects_localizations_links (
    id integer NOT NULL,
    project_id integer,
    inv_project_id integer,
    project_order double precision
);


ALTER TABLE public.projects_localizations_links OWNER TO strapi;

--
-- Name: projects_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.projects_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.projects_localizations_links_id_seq OWNER TO strapi;

--
-- Name: projects_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.projects_localizations_links_id_seq OWNED BY public.projects_localizations_links.id;


--
-- Name: renovations; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.renovations (
    id integer NOT NULL,
    title character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.renovations OWNER TO strapi;

--
-- Name: renovations_components; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.renovations_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.renovations_components OWNER TO strapi;

--
-- Name: renovations_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.renovations_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.renovations_components_id_seq OWNER TO strapi;

--
-- Name: renovations_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.renovations_components_id_seq OWNED BY public.renovations_components.id;


--
-- Name: renovations_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.renovations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.renovations_id_seq OWNER TO strapi;

--
-- Name: renovations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.renovations_id_seq OWNED BY public.renovations.id;


--
-- Name: renovations_localizations_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.renovations_localizations_links (
    id integer NOT NULL,
    renovation_id integer,
    inv_renovation_id integer,
    renovation_order double precision
);


ALTER TABLE public.renovations_localizations_links OWNER TO strapi;

--
-- Name: renovations_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.renovations_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.renovations_localizations_links_id_seq OWNER TO strapi;

--
-- Name: renovations_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.renovations_localizations_links_id_seq OWNED BY public.renovations_localizations_links.id;


--
-- Name: strapi_api_token_permissions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_api_token_permissions OWNER TO strapi;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNER TO strapi;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;


--
-- Name: strapi_api_token_permissions_token_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_api_token_permissions_token_links (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_order double precision
);


ALTER TABLE public.strapi_api_token_permissions_token_links OWNER TO strapi;

--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_api_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNER TO strapi;

--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNED BY public.strapi_api_token_permissions_token_links.id;


--
-- Name: strapi_api_tokens; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_api_tokens OWNER TO strapi;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNER TO strapi;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;


--
-- Name: strapi_core_store_settings; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.strapi_core_store_settings OWNER TO strapi;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNER TO strapi;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;


--
-- Name: strapi_database_schema; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


ALTER TABLE public.strapi_database_schema OWNER TO strapi;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_database_schema_id_seq OWNER TO strapi;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;


--
-- Name: strapi_migrations; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations OWNER TO strapi;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_migrations_id_seq OWNER TO strapi;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;


--
-- Name: strapi_release_actions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_release_actions (
    id integer NOT NULL,
    type character varying(255),
    target_id integer,
    target_type character varying(255),
    content_type character varying(255),
    locale character varying(255),
    is_entry_valid boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_release_actions OWNER TO strapi;

--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_release_actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_release_actions_id_seq OWNER TO strapi;

--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_release_actions_id_seq OWNED BY public.strapi_release_actions.id;


--
-- Name: strapi_release_actions_release_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_release_actions_release_links (
    id integer NOT NULL,
    release_action_id integer,
    release_id integer,
    release_action_order double precision
);


ALTER TABLE public.strapi_release_actions_release_links OWNER TO strapi;

--
-- Name: strapi_release_actions_release_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_release_actions_release_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_release_actions_release_links_id_seq OWNER TO strapi;

--
-- Name: strapi_release_actions_release_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_release_actions_release_links_id_seq OWNED BY public.strapi_release_actions_release_links.id;


--
-- Name: strapi_releases; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_releases (
    id integer NOT NULL,
    name character varying(255),
    released_at timestamp(6) without time zone,
    scheduled_at timestamp(6) without time zone,
    timezone character varying(255),
    status character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_releases OWNER TO strapi;

--
-- Name: strapi_releases_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_releases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_releases_id_seq OWNER TO strapi;

--
-- Name: strapi_releases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_releases_id_seq OWNED BY public.strapi_releases.id;


--
-- Name: strapi_transfer_token_permissions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_transfer_token_permissions OWNER TO strapi;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNER TO strapi;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;


--
-- Name: strapi_transfer_token_permissions_token_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_transfer_token_permissions_token_links (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_order double precision
);


ALTER TABLE public.strapi_transfer_token_permissions_token_links OWNER TO strapi;

--
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq OWNER TO strapi;

--
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq OWNED BY public.strapi_transfer_token_permissions_token_links.id;


--
-- Name: strapi_transfer_tokens; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_transfer_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_transfer_tokens OWNER TO strapi;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNER TO strapi;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO strapi;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.strapi_webhooks_id_seq OWNER TO strapi;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: tags; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.tags (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    locale character varying(255)
);


ALTER TABLE public.tags OWNER TO strapi;

--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tags_id_seq OWNER TO strapi;

--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;


--
-- Name: tags_localizations_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.tags_localizations_links (
    id integer NOT NULL,
    tag_id integer,
    inv_tag_id integer,
    tag_order double precision
);


ALTER TABLE public.tags_localizations_links OWNER TO strapi;

--
-- Name: tags_localizations_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.tags_localizations_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.tags_localizations_links_id_seq OWNER TO strapi;

--
-- Name: tags_localizations_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.tags_localizations_links_id_seq OWNED BY public.tags_localizations_links.id;


--
-- Name: up_permissions; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_permissions OWNER TO strapi;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_permissions_id_seq OWNER TO strapi;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;


--
-- Name: up_permissions_role_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);


ALTER TABLE public.up_permissions_role_links OWNER TO strapi;

--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNER TO strapi;

--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNED BY public.up_permissions_role_links.id;


--
-- Name: up_roles; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_roles OWNER TO strapi;

--
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_roles_id_seq OWNER TO strapi;

--
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;


--
-- Name: up_users; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_users OWNER TO strapi;

--
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_users_id_seq OWNER TO strapi;

--
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;


--
-- Name: up_users_role_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.up_users_role_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_order double precision
);


ALTER TABLE public.up_users_role_links OWNER TO strapi;

--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.up_users_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.up_users_role_links_id_seq OWNER TO strapi;

--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.up_users_role_links_id_seq OWNED BY public.up_users_role_links.id;


--
-- Name: upload_folders; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.upload_folders OWNER TO strapi;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.upload_folders_id_seq OWNER TO strapi;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;


--
-- Name: upload_folders_parent_links; Type: TABLE; Schema: public; Owner: strapi
--

CREATE TABLE public.upload_folders_parent_links (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_order double precision
);


ALTER TABLE public.upload_folders_parent_links OWNER TO strapi;

--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi
--

CREATE SEQUENCE public.upload_folders_parent_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNER TO strapi;

--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi
--

ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNED BY public.upload_folders_parent_links.id;


--
-- Name: about_uses id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.about_uses ALTER COLUMN id SET DEFAULT nextval('public.about_uses_id_seq'::regclass);


--
-- Name: about_uses_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.about_uses_components ALTER COLUMN id SET DEFAULT nextval('public.about_uses_components_id_seq'::regclass);


--
-- Name: about_uses_localizations_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.about_uses_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.about_uses_localizations_links_id_seq'::regclass);


--
-- Name: admin_permissions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);


--
-- Name: admin_permissions_role_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_links_id_seq'::regclass);


--
-- Name: admin_roles id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);


--
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- Name: admin_users_roles_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users_roles_links ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_links_id_seq'::regclass);


--
-- Name: article_pages id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_pages ALTER COLUMN id SET DEFAULT nextval('public.article_pages_id_seq'::regclass);


--
-- Name: article_pages_category_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_pages_category_links ALTER COLUMN id SET DEFAULT nextval('public.article_pages_category_links_id_seq'::regclass);


--
-- Name: article_pages_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_pages_components ALTER COLUMN id SET DEFAULT nextval('public.article_pages_components_id_seq'::regclass);


--
-- Name: article_pages_localizations_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_pages_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.article_pages_localizations_links_id_seq'::regclass);


--
-- Name: article_pages_tags_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_pages_tags_links ALTER COLUMN id SET DEFAULT nextval('public.article_pages_tags_links_id_seq'::regclass);


--
-- Name: articles id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles ALTER COLUMN id SET DEFAULT nextval('public.articles_id_seq'::regclass);


--
-- Name: articles_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles_components ALTER COLUMN id SET DEFAULT nextval('public.articles_components_id_seq'::regclass);


--
-- Name: articles_localizations_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.articles_localizations_links_id_seq'::regclass);


--
-- Name: blog_pages id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.blog_pages ALTER COLUMN id SET DEFAULT nextval('public.blog_pages_id_seq'::regclass);


--
-- Name: blog_pages_category_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.blog_pages_category_links ALTER COLUMN id SET DEFAULT nextval('public.blog_pages_category_links_id_seq'::regclass);


--
-- Name: blog_pages_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.blog_pages_components ALTER COLUMN id SET DEFAULT nextval('public.blog_pages_components_id_seq'::regclass);


--
-- Name: blog_pages_localizations_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.blog_pages_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.blog_pages_localizations_links_id_seq'::regclass);


--
-- Name: blog_pages_tags_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.blog_pages_tags_links ALTER COLUMN id SET DEFAULT nextval('public.blog_pages_tags_links_id_seq'::regclass);


--
-- Name: blogs id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.blogs ALTER COLUMN id SET DEFAULT nextval('public.blogs_id_seq'::regclass);


--
-- Name: blogs_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.blogs_components ALTER COLUMN id SET DEFAULT nextval('public.blogs_components_id_seq'::regclass);


--
-- Name: blogs_localizations_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.blogs_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.blogs_localizations_links_id_seq'::regclass);


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.categories ALTER COLUMN id SET DEFAULT nextval('public.categories_id_seq'::regclass);


--
-- Name: categories_localizations_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.categories_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.categories_localizations_links_id_seq'::regclass);


--
-- Name: components_blocks_header_blocks id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_blocks_header_blocks ALTER COLUMN id SET DEFAULT nextval('public.components_blocks_header_blocks_id_seq'::regclass);


--
-- Name: components_blocks_header_blocks_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_blocks_header_blocks_components ALTER COLUMN id SET DEFAULT nextval('public.components_blocks_header_blocks_components_id_seq'::regclass);


--
-- Name: components_blocks_image_blocks id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_blocks_image_blocks ALTER COLUMN id SET DEFAULT nextval('public.components_blocks_image_blocks_id_seq'::regclass);


--
-- Name: components_blocks_image_blocks_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_blocks_image_blocks_components ALTER COLUMN id SET DEFAULT nextval('public.components_blocks_image_blocks_components_id_seq'::regclass);


--
-- Name: components_blocks_separator_blocks id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_blocks_separator_blocks ALTER COLUMN id SET DEFAULT nextval('public.components_blocks_separator_blocks_id_seq'::regclass);


--
-- Name: components_blocks_separator_blocks_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_blocks_separator_blocks_components ALTER COLUMN id SET DEFAULT nextval('public.components_blocks_separator_blocks_components_id_seq'::regclass);


--
-- Name: components_blocks_tab_blocks id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_blocks_tab_blocks ALTER COLUMN id SET DEFAULT nextval('public.components_blocks_tab_blocks_id_seq'::regclass);


--
-- Name: components_blocks_tab_blocks_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_blocks_tab_blocks_components ALTER COLUMN id SET DEFAULT nextval('public.components_blocks_tab_blocks_components_id_seq'::regclass);


--
-- Name: components_blocks_text_blocks id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_blocks_text_blocks ALTER COLUMN id SET DEFAULT nextval('public.components_blocks_text_blocks_id_seq'::regclass);


--
-- Name: components_blocks_text_blocks_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_blocks_text_blocks_components ALTER COLUMN id SET DEFAULT nextval('public.components_blocks_text_blocks_components_id_seq'::regclass);


--
-- Name: components_components_tabs id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_components_tabs ALTER COLUMN id SET DEFAULT nextval('public.components_components_tabs_id_seq'::regclass);


--
-- Name: components_options_display_options id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_options_display_options ALTER COLUMN id SET DEFAULT nextval('public.components_options_display_options_id_seq'::regclass);


--
-- Name: files id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- Name: files_folder_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_folder_links ALTER COLUMN id SET DEFAULT nextval('public.files_folder_links_id_seq'::regclass);


--
-- Name: files_related_morphs id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_related_morphs ALTER COLUMN id SET DEFAULT nextval('public.files_related_morphs_id_seq'::regclass);


--
-- Name: homecares id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.homecares ALTER COLUMN id SET DEFAULT nextval('public.homecares_id_seq'::regclass);


--
-- Name: homecares_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.homecares_components ALTER COLUMN id SET DEFAULT nextval('public.homecares_components_id_seq'::regclass);


--
-- Name: homecares_localizations_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.homecares_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.homecares_localizations_links_id_seq'::regclass);


--
-- Name: i18n_locale id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);


--
-- Name: project_pages id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_pages ALTER COLUMN id SET DEFAULT nextval('public.project_pages_id_seq'::regclass);


--
-- Name: project_pages_category_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_pages_category_links ALTER COLUMN id SET DEFAULT nextval('public.project_pages_category_links_id_seq'::regclass);


--
-- Name: project_pages_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_pages_components ALTER COLUMN id SET DEFAULT nextval('public.project_pages_components_id_seq'::regclass);


--
-- Name: project_pages_localizations_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_pages_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.project_pages_localizations_links_id_seq'::regclass);


--
-- Name: project_pages_tags_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_pages_tags_links ALTER COLUMN id SET DEFAULT nextval('public.project_pages_tags_links_id_seq'::regclass);


--
-- Name: projects id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.projects ALTER COLUMN id SET DEFAULT nextval('public.projects_id_seq'::regclass);


--
-- Name: projects_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.projects_components ALTER COLUMN id SET DEFAULT nextval('public.projects_components_id_seq'::regclass);


--
-- Name: projects_localizations_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.projects_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.projects_localizations_links_id_seq'::regclass);


--
-- Name: renovations id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.renovations ALTER COLUMN id SET DEFAULT nextval('public.renovations_id_seq'::regclass);


--
-- Name: renovations_components id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.renovations_components ALTER COLUMN id SET DEFAULT nextval('public.renovations_components_id_seq'::regclass);


--
-- Name: renovations_localizations_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.renovations_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.renovations_localizations_links_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions_token_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_links_id_seq'::regclass);


--
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);


--
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);


--
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);


--
-- Name: strapi_migrations id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);


--
-- Name: strapi_release_actions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_id_seq'::regclass);


--
-- Name: strapi_release_actions_release_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions_release_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_release_actions_release_links_id_seq'::regclass);


--
-- Name: strapi_releases id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_releases ALTER COLUMN id SET DEFAULT nextval('public.strapi_releases_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions_token_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_links_id_seq'::regclass);


--
-- Name: strapi_transfer_tokens id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: tags id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);


--
-- Name: tags_localizations_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.tags_localizations_links ALTER COLUMN id SET DEFAULT nextval('public.tags_localizations_links_id_seq'::regclass);


--
-- Name: up_permissions id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);


--
-- Name: up_permissions_role_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_links_id_seq'::regclass);


--
-- Name: up_roles id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);


--
-- Name: up_users id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);


--
-- Name: up_users_role_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_links_id_seq'::regclass);


--
-- Name: upload_folders id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);


--
-- Name: upload_folders_parent_links id; Type: DEFAULT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders_parent_links ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_links_id_seq'::regclass);


--
-- Data for Name: about_uses; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.about_uses (id, title, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	Houseforce About Us	2024-07-06 20:14:37.936	2024-07-06 20:14:40.206	2024-07-06 20:14:40.056	1	1	en
\.


--
-- Data for Name: about_uses_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.about_uses_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: about_uses_localizations_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.about_uses_localizations_links (id, about_us_id, inv_about_us_id, about_us_order) FROM stdin;
\.


--
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_permissions (id, action, action_parameters, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::content-manager.explorer.create	{}	api::about-us.about-us	{"fields": ["Title"]}	[]	2024-07-06 18:52:02.209	2024-07-06 18:52:02.209	\N	\N
2	plugin::content-manager.explorer.create	{}	api::article.article	{"fields": ["Title"]}	[]	2024-07-06 18:52:02.411	2024-07-06 18:52:02.411	\N	\N
3	plugin::content-manager.explorer.create	{}	api::article-page.article-page	{"fields": ["Title", "MainImage", "Introduction", "ContentArea"]}	[]	2024-07-06 18:52:02.611	2024-07-06 18:52:02.611	\N	\N
4	plugin::content-manager.explorer.create	{}	api::blog.blog	{"fields": ["Title"]}	[]	2024-07-06 18:52:02.811	2024-07-06 18:52:02.811	\N	\N
5	plugin::content-manager.explorer.create	{}	api::blog-page.blog-page	{"fields": ["Title", "MainImage", "Introduction", "ContentArea"]}	[]	2024-07-06 18:52:03.011	2024-07-06 18:52:03.011	\N	\N
6	plugin::content-manager.explorer.create	{}	api::homecare.homecare	{"fields": ["Title", "ContentArea"]}	[]	2024-07-06 18:52:03.211	2024-07-06 18:52:03.211	\N	\N
7	plugin::content-manager.explorer.create	{}	api::project.project	{"fields": ["Title"]}	[]	2024-07-06 18:52:03.411	2024-07-06 18:52:03.411	\N	\N
8	plugin::content-manager.explorer.create	{}	api::project-page.project-page	{"fields": ["Title", "MainImage", "Introduction", "ContentArea"]}	[]	2024-07-06 18:52:03.611	2024-07-06 18:52:03.611	\N	\N
9	plugin::content-manager.explorer.create	{}	api::renovation.renovation	{"fields": ["Title", "ContentArea"]}	[]	2024-07-06 18:52:03.811	2024-07-06 18:52:03.811	\N	\N
10	plugin::content-manager.explorer.read	{}	api::about-us.about-us	{"fields": ["Title"]}	[]	2024-07-06 18:52:04.011	2024-07-06 18:52:04.011	\N	\N
11	plugin::content-manager.explorer.read	{}	api::article.article	{"fields": ["Title"]}	[]	2024-07-06 18:52:04.211	2024-07-06 18:52:04.211	\N	\N
12	plugin::content-manager.explorer.read	{}	api::article-page.article-page	{"fields": ["Title", "MainImage", "Introduction", "ContentArea"]}	[]	2024-07-06 18:52:04.411	2024-07-06 18:52:04.411	\N	\N
13	plugin::content-manager.explorer.read	{}	api::blog.blog	{"fields": ["Title"]}	[]	2024-07-06 18:52:04.611	2024-07-06 18:52:04.611	\N	\N
14	plugin::content-manager.explorer.read	{}	api::blog-page.blog-page	{"fields": ["Title", "MainImage", "Introduction", "ContentArea"]}	[]	2024-07-06 18:52:04.811	2024-07-06 18:52:04.811	\N	\N
15	plugin::content-manager.explorer.read	{}	api::homecare.homecare	{"fields": ["Title", "ContentArea"]}	[]	2024-07-06 18:52:05.011	2024-07-06 18:52:05.011	\N	\N
16	plugin::content-manager.explorer.read	{}	api::project.project	{"fields": ["Title"]}	[]	2024-07-06 18:52:05.211	2024-07-06 18:52:05.211	\N	\N
17	plugin::content-manager.explorer.read	{}	api::project-page.project-page	{"fields": ["Title", "MainImage", "Introduction", "ContentArea"]}	[]	2024-07-06 18:52:05.421	2024-07-06 18:52:05.421	\N	\N
18	plugin::content-manager.explorer.read	{}	api::renovation.renovation	{"fields": ["Title", "ContentArea"]}	[]	2024-07-06 18:52:05.621	2024-07-06 18:52:05.621	\N	\N
19	plugin::content-manager.explorer.update	{}	api::about-us.about-us	{"fields": ["Title"]}	[]	2024-07-06 18:52:05.821	2024-07-06 18:52:05.821	\N	\N
20	plugin::content-manager.explorer.update	{}	api::article.article	{"fields": ["Title"]}	[]	2024-07-06 18:52:06.021	2024-07-06 18:52:06.021	\N	\N
21	plugin::content-manager.explorer.update	{}	api::article-page.article-page	{"fields": ["Title", "MainImage", "Introduction", "ContentArea"]}	[]	2024-07-06 18:52:06.221	2024-07-06 18:52:06.221	\N	\N
22	plugin::content-manager.explorer.update	{}	api::blog.blog	{"fields": ["Title"]}	[]	2024-07-06 18:52:06.421	2024-07-06 18:52:06.421	\N	\N
23	plugin::content-manager.explorer.update	{}	api::blog-page.blog-page	{"fields": ["Title", "MainImage", "Introduction", "ContentArea"]}	[]	2024-07-06 18:52:06.621	2024-07-06 18:52:06.621	\N	\N
24	plugin::content-manager.explorer.update	{}	api::homecare.homecare	{"fields": ["Title", "ContentArea"]}	[]	2024-07-06 18:52:06.822	2024-07-06 18:52:06.822	\N	\N
25	plugin::content-manager.explorer.update	{}	api::project.project	{"fields": ["Title"]}	[]	2024-07-06 18:52:07.021	2024-07-06 18:52:07.021	\N	\N
26	plugin::content-manager.explorer.update	{}	api::project-page.project-page	{"fields": ["Title", "MainImage", "Introduction", "ContentArea"]}	[]	2024-07-06 18:52:07.221	2024-07-06 18:52:07.221	\N	\N
27	plugin::content-manager.explorer.update	{}	api::renovation.renovation	{"fields": ["Title", "ContentArea"]}	[]	2024-07-06 18:52:07.421	2024-07-06 18:52:07.421	\N	\N
46	plugin::upload.read	{}	\N	{}	[]	2024-07-06 18:52:11.241	2024-07-06 18:52:11.241	\N	\N
47	plugin::upload.configure-view	{}	\N	{}	[]	2024-07-06 18:52:11.441	2024-07-06 18:52:11.441	\N	\N
48	plugin::upload.assets.create	{}	\N	{}	[]	2024-07-06 18:52:11.641	2024-07-06 18:52:11.641	\N	\N
49	plugin::upload.assets.update	{}	\N	{}	[]	2024-07-06 18:52:11.841	2024-07-06 18:52:11.841	\N	\N
50	plugin::upload.assets.download	{}	\N	{}	[]	2024-07-06 18:52:12.042	2024-07-06 18:52:12.042	\N	\N
51	plugin::upload.assets.copy-link	{}	\N	{}	[]	2024-07-06 18:52:12.241	2024-07-06 18:52:12.241	\N	\N
52	plugin::content-manager.explorer.create	{}	api::about-us.about-us	{"fields": ["Title"]}	["admin::is-creator"]	2024-07-06 18:52:12.445	2024-07-06 18:52:12.445	\N	\N
53	plugin::content-manager.explorer.create	{}	api::article.article	{"fields": ["Title"]}	["admin::is-creator"]	2024-07-06 18:52:12.641	2024-07-06 18:52:12.641	\N	\N
54	plugin::content-manager.explorer.create	{}	api::article-page.article-page	{"fields": ["Title", "MainImage", "Introduction", "ContentArea"]}	["admin::is-creator"]	2024-07-06 18:52:12.841	2024-07-06 18:52:12.841	\N	\N
55	plugin::content-manager.explorer.create	{}	api::blog.blog	{"fields": ["Title"]}	["admin::is-creator"]	2024-07-06 18:52:13.041	2024-07-06 18:52:13.041	\N	\N
56	plugin::content-manager.explorer.create	{}	api::blog-page.blog-page	{"fields": ["Title", "MainImage", "Introduction", "ContentArea"]}	["admin::is-creator"]	2024-07-06 18:52:13.241	2024-07-06 18:52:13.241	\N	\N
57	plugin::content-manager.explorer.create	{}	api::homecare.homecare	{"fields": ["Title", "ContentArea"]}	["admin::is-creator"]	2024-07-06 18:52:13.441	2024-07-06 18:52:13.441	\N	\N
58	plugin::content-manager.explorer.create	{}	api::project.project	{"fields": ["Title"]}	["admin::is-creator"]	2024-07-06 18:52:13.641	2024-07-06 18:52:13.641	\N	\N
59	plugin::content-manager.explorer.create	{}	api::project-page.project-page	{"fields": ["Title", "MainImage", "Introduction", "ContentArea"]}	["admin::is-creator"]	2024-07-06 18:52:13.841	2024-07-06 18:52:13.841	\N	\N
60	plugin::content-manager.explorer.create	{}	api::renovation.renovation	{"fields": ["Title", "ContentArea"]}	["admin::is-creator"]	2024-07-06 18:52:14.041	2024-07-06 18:52:14.041	\N	\N
61	plugin::content-manager.explorer.read	{}	api::about-us.about-us	{"fields": ["Title"]}	["admin::is-creator"]	2024-07-06 18:52:14.241	2024-07-06 18:52:14.241	\N	\N
62	plugin::content-manager.explorer.read	{}	api::article.article	{"fields": ["Title"]}	["admin::is-creator"]	2024-07-06 18:52:14.441	2024-07-06 18:52:14.441	\N	\N
63	plugin::content-manager.explorer.read	{}	api::article-page.article-page	{"fields": ["Title", "MainImage", "Introduction", "ContentArea"]}	["admin::is-creator"]	2024-07-06 18:52:14.641	2024-07-06 18:52:14.641	\N	\N
64	plugin::content-manager.explorer.read	{}	api::blog.blog	{"fields": ["Title"]}	["admin::is-creator"]	2024-07-06 18:52:14.841	2024-07-06 18:52:14.841	\N	\N
65	plugin::content-manager.explorer.read	{}	api::blog-page.blog-page	{"fields": ["Title", "MainImage", "Introduction", "ContentArea"]}	["admin::is-creator"]	2024-07-06 18:52:15.041	2024-07-06 18:52:15.041	\N	\N
66	plugin::content-manager.explorer.read	{}	api::homecare.homecare	{"fields": ["Title", "ContentArea"]}	["admin::is-creator"]	2024-07-06 18:52:15.241	2024-07-06 18:52:15.241	\N	\N
67	plugin::content-manager.explorer.read	{}	api::project.project	{"fields": ["Title"]}	["admin::is-creator"]	2024-07-06 18:52:15.441	2024-07-06 18:52:15.441	\N	\N
68	plugin::content-manager.explorer.read	{}	api::project-page.project-page	{"fields": ["Title", "MainImage", "Introduction", "ContentArea"]}	["admin::is-creator"]	2024-07-06 18:52:15.641	2024-07-06 18:52:15.641	\N	\N
69	plugin::content-manager.explorer.read	{}	api::renovation.renovation	{"fields": ["Title", "ContentArea"]}	["admin::is-creator"]	2024-07-06 18:52:15.841	2024-07-06 18:52:15.841	\N	\N
70	plugin::content-manager.explorer.update	{}	api::about-us.about-us	{"fields": ["Title"]}	["admin::is-creator"]	2024-07-06 18:52:16.041	2024-07-06 18:52:16.041	\N	\N
71	plugin::content-manager.explorer.update	{}	api::article.article	{"fields": ["Title"]}	["admin::is-creator"]	2024-07-06 18:52:16.241	2024-07-06 18:52:16.241	\N	\N
72	plugin::content-manager.explorer.update	{}	api::article-page.article-page	{"fields": ["Title", "MainImage", "Introduction", "ContentArea"]}	["admin::is-creator"]	2024-07-06 18:52:16.441	2024-07-06 18:52:16.441	\N	\N
73	plugin::content-manager.explorer.update	{}	api::blog.blog	{"fields": ["Title"]}	["admin::is-creator"]	2024-07-06 18:52:16.641	2024-07-06 18:52:16.641	\N	\N
74	plugin::content-manager.explorer.update	{}	api::blog-page.blog-page	{"fields": ["Title", "MainImage", "Introduction", "ContentArea"]}	["admin::is-creator"]	2024-07-06 18:52:16.841	2024-07-06 18:52:16.841	\N	\N
75	plugin::content-manager.explorer.update	{}	api::homecare.homecare	{"fields": ["Title", "ContentArea"]}	["admin::is-creator"]	2024-07-06 18:52:17.041	2024-07-06 18:52:17.041	\N	\N
76	plugin::content-manager.explorer.update	{}	api::project.project	{"fields": ["Title"]}	["admin::is-creator"]	2024-07-06 18:52:17.241	2024-07-06 18:52:17.241	\N	\N
77	plugin::content-manager.explorer.update	{}	api::project-page.project-page	{"fields": ["Title", "MainImage", "Introduction", "ContentArea"]}	["admin::is-creator"]	2024-07-06 18:52:17.441	2024-07-06 18:52:17.441	\N	\N
78	plugin::content-manager.explorer.update	{}	api::renovation.renovation	{"fields": ["Title", "ContentArea"]}	["admin::is-creator"]	2024-07-06 18:52:17.641	2024-07-06 18:52:17.641	\N	\N
88	plugin::upload.read	{}	\N	{}	["admin::is-creator"]	2024-07-06 18:52:19.641	2024-07-06 18:52:19.641	\N	\N
89	plugin::upload.configure-view	{}	\N	{}	[]	2024-07-06 18:52:19.851	2024-07-06 18:52:19.851	\N	\N
90	plugin::upload.assets.create	{}	\N	{}	[]	2024-07-06 18:52:20.051	2024-07-06 18:52:20.051	\N	\N
91	plugin::upload.assets.update	{}	\N	{}	["admin::is-creator"]	2024-07-06 18:52:20.251	2024-07-06 18:52:20.251	\N	\N
92	plugin::upload.assets.download	{}	\N	{}	[]	2024-07-06 18:52:20.45	2024-07-06 18:52:20.45	\N	\N
93	plugin::upload.assets.copy-link	{}	\N	{}	[]	2024-07-06 18:52:20.651	2024-07-06 18:52:20.651	\N	\N
94	plugin::content-manager.explorer.create	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2024-07-06 18:52:21.015	2024-07-06 18:52:21.015	\N	\N
100	plugin::content-manager.explorer.create	{}	api::homecare.homecare	{"fields": ["Title", "ContentArea"], "locales": ["en"]}	[]	2024-07-06 18:52:22.211	2024-07-06 18:52:22.211	\N	\N
103	plugin::content-manager.explorer.create	{}	api::renovation.renovation	{"fields": ["Title", "ContentArea"], "locales": ["en"]}	[]	2024-07-06 18:52:22.811	2024-07-06 18:52:22.811	\N	\N
104	plugin::content-manager.explorer.read	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2024-07-06 18:52:23.01	2024-07-06 18:52:23.01	\N	\N
110	plugin::content-manager.explorer.read	{}	api::homecare.homecare	{"fields": ["Title", "ContentArea"], "locales": ["en"]}	[]	2024-07-06 18:52:24.211	2024-07-06 18:52:24.211	\N	\N
113	plugin::content-manager.explorer.read	{}	api::renovation.renovation	{"fields": ["Title", "ContentArea"], "locales": ["en"]}	[]	2024-07-06 18:52:24.811	2024-07-06 18:52:24.811	\N	\N
114	plugin::content-manager.explorer.update	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2024-07-06 18:52:25.011	2024-07-06 18:52:25.011	\N	\N
120	plugin::content-manager.explorer.update	{}	api::homecare.homecare	{"fields": ["Title", "ContentArea"], "locales": ["en"]}	[]	2024-07-06 18:52:26.211	2024-07-06 18:52:26.211	\N	\N
123	plugin::content-manager.explorer.update	{}	api::renovation.renovation	{"fields": ["Title", "ContentArea"], "locales": ["en"]}	[]	2024-07-06 18:52:26.811	2024-07-06 18:52:26.811	\N	\N
124	plugin::content-manager.explorer.delete	{}	plugin::users-permissions.user	{}	[]	2024-07-06 18:52:27.011	2024-07-06 18:52:27.011	\N	\N
125	plugin::content-manager.explorer.delete	{}	api::about-us.about-us	{"locales": ["en"]}	[]	2024-07-06 18:52:27.211	2024-07-06 18:52:27.211	\N	\N
126	plugin::content-manager.explorer.delete	{}	api::article.article	{"locales": ["en"]}	[]	2024-07-06 18:52:27.41	2024-07-06 18:52:27.41	\N	\N
127	plugin::content-manager.explorer.delete	{}	api::article-page.article-page	{"locales": ["en"]}	[]	2024-07-06 18:52:27.611	2024-07-06 18:52:27.611	\N	\N
128	plugin::content-manager.explorer.delete	{}	api::blog.blog	{"locales": ["en"]}	[]	2024-07-06 18:52:27.81	2024-07-06 18:52:27.81	\N	\N
129	plugin::content-manager.explorer.delete	{}	api::blog-page.blog-page	{"locales": ["en"]}	[]	2024-07-06 18:52:28.011	2024-07-06 18:52:28.011	\N	\N
130	plugin::content-manager.explorer.delete	{}	api::homecare.homecare	{"locales": ["en"]}	[]	2024-07-06 18:52:28.21	2024-07-06 18:52:28.21	\N	\N
131	plugin::content-manager.explorer.delete	{}	api::project.project	{"locales": ["en"]}	[]	2024-07-06 18:52:28.411	2024-07-06 18:52:28.411	\N	\N
132	plugin::content-manager.explorer.delete	{}	api::project-page.project-page	{"locales": ["en"]}	[]	2024-07-06 18:52:28.61	2024-07-06 18:52:28.61	\N	\N
133	plugin::content-manager.explorer.delete	{}	api::renovation.renovation	{"locales": ["en"]}	[]	2024-07-06 18:52:28.811	2024-07-06 18:52:28.811	\N	\N
134	plugin::content-manager.explorer.publish	{}	api::about-us.about-us	{"locales": ["en"]}	[]	2024-07-06 18:52:29.01	2024-07-06 18:52:29.01	\N	\N
135	plugin::content-manager.explorer.publish	{}	api::article.article	{"locales": ["en"]}	[]	2024-07-06 18:52:29.21	2024-07-06 18:52:29.21	\N	\N
136	plugin::content-manager.explorer.publish	{}	api::article-page.article-page	{"locales": ["en"]}	[]	2024-07-06 18:52:29.41	2024-07-06 18:52:29.41	\N	\N
137	plugin::content-manager.explorer.publish	{}	api::blog.blog	{"locales": ["en"]}	[]	2024-07-06 18:52:29.61	2024-07-06 18:52:29.61	\N	\N
138	plugin::content-manager.explorer.publish	{}	api::blog-page.blog-page	{"locales": ["en"]}	[]	2024-07-06 18:52:29.811	2024-07-06 18:52:29.811	\N	\N
139	plugin::content-manager.explorer.publish	{}	api::homecare.homecare	{"locales": ["en"]}	[]	2024-07-06 18:52:30.011	2024-07-06 18:52:30.011	\N	\N
140	plugin::content-manager.explorer.publish	{}	api::project.project	{"locales": ["en"]}	[]	2024-07-06 18:52:30.21	2024-07-06 18:52:30.21	\N	\N
141	plugin::content-manager.explorer.publish	{}	api::project-page.project-page	{"locales": ["en"]}	[]	2024-07-06 18:52:30.411	2024-07-06 18:52:30.411	\N	\N
142	plugin::content-manager.explorer.publish	{}	api::renovation.renovation	{"locales": ["en"]}	[]	2024-07-06 18:52:30.61	2024-07-06 18:52:30.61	\N	\N
143	plugin::content-manager.single-types.configure-view	{}	\N	{}	[]	2024-07-06 18:52:30.81	2024-07-06 18:52:30.81	\N	\N
144	plugin::content-manager.collection-types.configure-view	{}	\N	{}	[]	2024-07-06 18:52:31.01	2024-07-06 18:52:31.01	\N	\N
145	plugin::content-manager.components.configure-layout	{}	\N	{}	[]	2024-07-06 18:52:31.21	2024-07-06 18:52:31.21	\N	\N
146	plugin::content-type-builder.read	{}	\N	{}	[]	2024-07-06 18:52:31.41	2024-07-06 18:52:31.41	\N	\N
147	plugin::email.settings.read	{}	\N	{}	[]	2024-07-06 18:52:31.61	2024-07-06 18:52:31.61	\N	\N
148	plugin::upload.read	{}	\N	{}	[]	2024-07-06 18:52:31.81	2024-07-06 18:52:31.81	\N	\N
149	plugin::upload.assets.create	{}	\N	{}	[]	2024-07-06 18:52:32.01	2024-07-06 18:52:32.01	\N	\N
150	plugin::upload.assets.update	{}	\N	{}	[]	2024-07-06 18:52:32.21	2024-07-06 18:52:32.21	\N	\N
151	plugin::upload.assets.download	{}	\N	{}	[]	2024-07-06 18:52:32.41	2024-07-06 18:52:32.41	\N	\N
152	plugin::upload.assets.copy-link	{}	\N	{}	[]	2024-07-06 18:52:32.61	2024-07-06 18:52:32.61	\N	\N
153	plugin::upload.configure-view	{}	\N	{}	[]	2024-07-06 18:52:32.81	2024-07-06 18:52:32.81	\N	\N
154	plugin::upload.settings.read	{}	\N	{}	[]	2024-07-06 18:52:33.01	2024-07-06 18:52:33.01	\N	\N
155	plugin::meilisearch.read	{}	\N	{}	[]	2024-07-06 18:52:33.21	2024-07-06 18:52:33.21	\N	\N
156	plugin::meilisearch.collections.create	{}	\N	{}	[]	2024-07-06 18:52:33.41	2024-07-06 18:52:33.41	\N	\N
157	plugin::meilisearch.collections.update	{}	\N	{}	[]	2024-07-06 18:52:33.61	2024-07-06 18:52:33.61	\N	\N
158	plugin::meilisearch.collections.delete	{}	\N	{}	[]	2024-07-06 18:52:33.81	2024-07-06 18:52:33.81	\N	\N
159	plugin::meilisearch.settings.edit	{}	\N	{}	[]	2024-07-06 18:52:34.01	2024-07-06 18:52:34.01	\N	\N
160	plugin::i18n.locale.create	{}	\N	{}	[]	2024-07-06 18:52:34.21	2024-07-06 18:52:34.21	\N	\N
161	plugin::i18n.locale.read	{}	\N	{}	[]	2024-07-06 18:52:34.41	2024-07-06 18:52:34.41	\N	\N
162	plugin::i18n.locale.update	{}	\N	{}	[]	2024-07-06 18:52:34.61	2024-07-06 18:52:34.61	\N	\N
163	plugin::i18n.locale.delete	{}	\N	{}	[]	2024-07-06 18:52:34.81	2024-07-06 18:52:34.81	\N	\N
164	plugin::users-permissions.roles.create	{}	\N	{}	[]	2024-07-06 18:52:35.01	2024-07-06 18:52:35.01	\N	\N
165	plugin::users-permissions.roles.read	{}	\N	{}	[]	2024-07-06 18:52:35.21	2024-07-06 18:52:35.21	\N	\N
166	plugin::users-permissions.roles.update	{}	\N	{}	[]	2024-07-06 18:52:35.41	2024-07-06 18:52:35.41	\N	\N
167	plugin::users-permissions.roles.delete	{}	\N	{}	[]	2024-07-06 18:52:35.61	2024-07-06 18:52:35.61	\N	\N
168	plugin::users-permissions.providers.read	{}	\N	{}	[]	2024-07-06 18:52:35.81	2024-07-06 18:52:35.81	\N	\N
169	plugin::users-permissions.providers.update	{}	\N	{}	[]	2024-07-06 18:52:36.01	2024-07-06 18:52:36.01	\N	\N
170	plugin::users-permissions.email-templates.read	{}	\N	{}	[]	2024-07-06 18:52:36.21	2024-07-06 18:52:36.21	\N	\N
171	plugin::users-permissions.email-templates.update	{}	\N	{}	[]	2024-07-06 18:52:36.41	2024-07-06 18:52:36.41	\N	\N
172	plugin::users-permissions.advanced-settings.read	{}	\N	{}	[]	2024-07-06 18:52:36.61	2024-07-06 18:52:36.61	\N	\N
173	plugin::users-permissions.advanced-settings.update	{}	\N	{}	[]	2024-07-06 18:52:36.81	2024-07-06 18:52:36.81	\N	\N
174	admin::marketplace.read	{}	\N	{}	[]	2024-07-06 18:52:37.01	2024-07-06 18:52:37.01	\N	\N
175	admin::webhooks.create	{}	\N	{}	[]	2024-07-06 18:52:37.21	2024-07-06 18:52:37.21	\N	\N
176	admin::webhooks.read	{}	\N	{}	[]	2024-07-06 18:52:37.41	2024-07-06 18:52:37.41	\N	\N
177	admin::webhooks.update	{}	\N	{}	[]	2024-07-06 18:52:37.61	2024-07-06 18:52:37.61	\N	\N
178	admin::webhooks.delete	{}	\N	{}	[]	2024-07-06 18:52:37.81	2024-07-06 18:52:37.81	\N	\N
179	admin::users.create	{}	\N	{}	[]	2024-07-06 18:52:38.01	2024-07-06 18:52:38.01	\N	\N
180	admin::users.read	{}	\N	{}	[]	2024-07-06 18:52:38.21	2024-07-06 18:52:38.21	\N	\N
181	admin::users.update	{}	\N	{}	[]	2024-07-06 18:52:38.41	2024-07-06 18:52:38.41	\N	\N
182	admin::users.delete	{}	\N	{}	[]	2024-07-06 18:52:38.61	2024-07-06 18:52:38.61	\N	\N
183	admin::roles.create	{}	\N	{}	[]	2024-07-06 18:52:38.81	2024-07-06 18:52:38.81	\N	\N
184	admin::roles.read	{}	\N	{}	[]	2024-07-06 18:52:39.01	2024-07-06 18:52:39.01	\N	\N
185	admin::roles.update	{}	\N	{}	[]	2024-07-06 18:52:39.21	2024-07-06 18:52:39.21	\N	\N
186	admin::roles.delete	{}	\N	{}	[]	2024-07-06 18:52:39.41	2024-07-06 18:52:39.41	\N	\N
187	admin::api-tokens.access	{}	\N	{}	[]	2024-07-06 18:52:39.61	2024-07-06 18:52:39.61	\N	\N
188	admin::api-tokens.create	{}	\N	{}	[]	2024-07-06 18:52:39.81	2024-07-06 18:52:39.81	\N	\N
189	admin::api-tokens.read	{}	\N	{}	[]	2024-07-06 18:52:40.01	2024-07-06 18:52:40.01	\N	\N
190	admin::api-tokens.update	{}	\N	{}	[]	2024-07-06 18:52:40.21	2024-07-06 18:52:40.21	\N	\N
191	admin::api-tokens.regenerate	{}	\N	{}	[]	2024-07-06 18:52:40.41	2024-07-06 18:52:40.41	\N	\N
192	admin::api-tokens.delete	{}	\N	{}	[]	2024-07-06 18:52:40.61	2024-07-06 18:52:40.61	\N	\N
193	admin::project-settings.update	{}	\N	{}	[]	2024-07-06 18:52:40.81	2024-07-06 18:52:40.81	\N	\N
194	admin::project-settings.read	{}	\N	{}	[]	2024-07-06 18:52:41.01	2024-07-06 18:52:41.01	\N	\N
195	admin::transfer.tokens.access	{}	\N	{}	[]	2024-07-06 18:52:41.21	2024-07-06 18:52:41.21	\N	\N
196	admin::transfer.tokens.create	{}	\N	{}	[]	2024-07-06 18:52:41.41	2024-07-06 18:52:41.41	\N	\N
197	admin::transfer.tokens.read	{}	\N	{}	[]	2024-07-06 18:52:41.61	2024-07-06 18:52:41.61	\N	\N
198	admin::transfer.tokens.update	{}	\N	{}	[]	2024-07-06 18:52:41.81	2024-07-06 18:52:41.81	\N	\N
199	admin::transfer.tokens.regenerate	{}	\N	{}	[]	2024-07-06 18:52:42.02	2024-07-06 18:52:42.02	\N	\N
200	admin::transfer.tokens.delete	{}	\N	{}	[]	2024-07-06 18:52:42.22	2024-07-06 18:52:42.22	\N	\N
201	plugin::content-manager.explorer.create	{}	api::project.project	{"fields": ["Title", "ContentArea"], "locales": ["en"]}	[]	2024-07-06 19:50:21.077	2024-07-06 19:50:21.077	\N	\N
202	plugin::content-manager.explorer.read	{}	api::project.project	{"fields": ["Title", "ContentArea"], "locales": ["en"]}	[]	2024-07-06 19:50:21.273	2024-07-06 19:50:21.273	\N	\N
203	plugin::content-manager.explorer.update	{}	api::project.project	{"fields": ["Title", "ContentArea"], "locales": ["en"]}	[]	2024-07-06 19:50:21.473	2024-07-06 19:50:21.473	\N	\N
204	plugin::content-manager.explorer.create	{}	api::blog.blog	{"fields": ["Title", "ContentArea"], "locales": ["en"]}	[]	2024-07-06 19:50:58.786	2024-07-06 19:50:58.786	\N	\N
205	plugin::content-manager.explorer.read	{}	api::blog.blog	{"fields": ["Title", "ContentArea"], "locales": ["en"]}	[]	2024-07-06 19:50:58.982	2024-07-06 19:50:58.982	\N	\N
206	plugin::content-manager.explorer.update	{}	api::blog.blog	{"fields": ["Title", "ContentArea"], "locales": ["en"]}	[]	2024-07-06 19:50:59.183	2024-07-06 19:50:59.183	\N	\N
207	plugin::content-manager.explorer.create	{}	api::article.article	{"fields": ["Title", "ContentArea"], "locales": ["en"]}	[]	2024-07-06 19:51:46.945	2024-07-06 19:51:46.945	\N	\N
208	plugin::content-manager.explorer.read	{}	api::article.article	{"fields": ["Title", "ContentArea"], "locales": ["en"]}	[]	2024-07-06 19:51:47.141	2024-07-06 19:51:47.141	\N	\N
209	plugin::content-manager.explorer.update	{}	api::article.article	{"fields": ["Title", "ContentArea"], "locales": ["en"]}	[]	2024-07-06 19:51:47.341	2024-07-06 19:51:47.341	\N	\N
210	plugin::content-manager.explorer.create	{}	api::about-us.about-us	{"fields": ["Title", "ContentArea"], "locales": ["en"]}	[]	2024-07-06 19:52:20.633	2024-07-06 19:52:20.633	\N	\N
211	plugin::content-manager.explorer.read	{}	api::about-us.about-us	{"fields": ["Title", "ContentArea"], "locales": ["en"]}	[]	2024-07-06 19:52:20.83	2024-07-06 19:52:20.83	\N	\N
212	plugin::content-manager.explorer.update	{}	api::about-us.about-us	{"fields": ["Title", "ContentArea"], "locales": ["en"]}	[]	2024-07-06 19:52:21.03	2024-07-06 19:52:21.03	\N	\N
216	plugin::content-manager.explorer.delete	{}	api::tag.tag	{"locales": ["en"]}	[]	2024-07-06 20:44:42.339	2024-07-06 20:44:42.339	\N	\N
217	plugin::content-manager.explorer.publish	{}	api::tag.tag	{"locales": ["en"]}	[]	2024-07-06 20:44:42.539	2024-07-06 20:44:42.539	\N	\N
245	plugin::content-manager.explorer.delete	{}	api::category.category	{"locales": ["en"]}	[]	2024-07-06 22:39:13.261	2024-07-06 22:39:13.261	\N	\N
246	plugin::content-manager.explorer.publish	{}	api::category.category	{"locales": ["en"]}	[]	2024-07-06 22:39:13.461	2024-07-06 22:39:13.461	\N	\N
253	plugin::content-manager.explorer.create	{}	api::tag.tag	{"fields": ["Name", "blog_pages", "project_pages", "article_pages"], "locales": ["en"]}	[]	2024-07-06 23:03:40.587	2024-07-06 23:03:40.587	\N	\N
254	plugin::content-manager.explorer.read	{}	api::tag.tag	{"fields": ["Name", "blog_pages", "project_pages", "article_pages"], "locales": ["en"]}	[]	2024-07-06 23:03:40.783	2024-07-06 23:03:40.783	\N	\N
255	plugin::content-manager.explorer.update	{}	api::tag.tag	{"fields": ["Name", "blog_pages", "project_pages", "article_pages"], "locales": ["en"]}	[]	2024-07-06 23:03:40.983	2024-07-06 23:03:40.983	\N	\N
256	plugin::content-manager.explorer.create	{}	api::blog-page.blog-page	{"fields": ["Title", "MainImage", "Introduction", "ContentArea", "Tags", "Category"], "locales": ["en"]}	[]	2024-07-06 23:05:31.075	2024-07-06 23:05:31.075	\N	\N
258	plugin::content-manager.explorer.read	{}	api::blog-page.blog-page	{"fields": ["Title", "MainImage", "Introduction", "ContentArea", "Tags", "Category"], "locales": ["en"]}	[]	2024-07-06 23:05:31.472	2024-07-06 23:05:31.472	\N	\N
260	plugin::content-manager.explorer.update	{}	api::blog-page.blog-page	{"fields": ["Title", "MainImage", "Introduction", "ContentArea", "Tags", "Category"], "locales": ["en"]}	[]	2024-07-06 23:05:31.871	2024-07-06 23:05:31.871	\N	\N
262	plugin::content-manager.explorer.create	{}	api::article-page.article-page	{"fields": ["Title", "MainImage", "Introduction", "ContentArea", "Tags", "Category"], "locales": ["en"]}	[]	2024-07-06 23:38:26.577	2024-07-06 23:38:26.577	\N	\N
264	plugin::content-manager.explorer.read	{}	api::article-page.article-page	{"fields": ["Title", "MainImage", "Introduction", "ContentArea", "Tags", "Category"], "locales": ["en"]}	[]	2024-07-06 23:38:26.972	2024-07-06 23:38:26.972	\N	\N
266	plugin::content-manager.explorer.update	{}	api::article-page.article-page	{"fields": ["Title", "MainImage", "Introduction", "ContentArea", "Tags", "Category"], "locales": ["en"]}	[]	2024-07-06 23:38:27.372	2024-07-06 23:38:27.372	\N	\N
268	plugin::content-manager.explorer.create	{}	api::category.category	{"fields": ["Name", "Color", "blog_pages", "article_pages", "project_pages"], "locales": ["en"]}	[]	2024-07-06 23:40:09.933	2024-07-06 23:40:09.933	\N	\N
269	plugin::content-manager.explorer.create	{}	api::project-page.project-page	{"fields": ["Title", "MainImage", "Introduction", "ContentArea", "Tags", "Category"], "locales": ["en"]}	[]	2024-07-06 23:40:10.129	2024-07-06 23:40:10.129	\N	\N
270	plugin::content-manager.explorer.read	{}	api::category.category	{"fields": ["Name", "Color", "blog_pages", "article_pages", "project_pages"], "locales": ["en"]}	[]	2024-07-06 23:40:10.329	2024-07-06 23:40:10.329	\N	\N
271	plugin::content-manager.explorer.read	{}	api::project-page.project-page	{"fields": ["Title", "MainImage", "Introduction", "ContentArea", "Tags", "Category"], "locales": ["en"]}	[]	2024-07-06 23:40:10.529	2024-07-06 23:40:10.529	\N	\N
272	plugin::content-manager.explorer.update	{}	api::category.category	{"fields": ["Name", "Color", "blog_pages", "article_pages", "project_pages"], "locales": ["en"]}	[]	2024-07-06 23:40:10.729	2024-07-06 23:40:10.729	\N	\N
273	plugin::content-manager.explorer.update	{}	api::project-page.project-page	{"fields": ["Title", "MainImage", "Introduction", "ContentArea", "Tags", "Category"], "locales": ["en"]}	[]	2024-07-06 23:40:10.929	2024-07-06 23:40:10.929	\N	\N
\.


--
-- Data for Name: admin_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
1	1	2	1
2	2	2	2
3	3	2	3
4	4	2	4
5	5	2	5
6	6	2	6
7	7	2	7
8	8	2	8
9	9	2	9
10	10	2	10
11	11	2	11
12	12	2	12
13	13	2	13
14	14	2	14
15	15	2	15
16	16	2	16
17	17	2	17
18	18	2	18
19	19	2	19
20	20	2	20
21	21	2	21
22	22	2	22
23	23	2	23
24	24	2	24
25	25	2	25
26	26	2	26
27	27	2	27
46	46	2	46
47	47	2	47
48	48	2	48
49	49	2	49
50	50	2	50
51	51	2	51
52	52	3	1
53	53	3	2
54	54	3	3
55	55	3	4
56	56	3	5
57	57	3	6
58	58	3	7
59	59	3	8
60	60	3	9
61	61	3	10
62	62	3	11
63	63	3	12
64	64	3	13
65	65	3	14
66	66	3	15
67	67	3	16
68	68	3	17
69	69	3	18
70	70	3	19
71	71	3	20
72	72	3	21
73	73	3	22
74	74	3	23
75	75	3	24
76	76	3	25
77	77	3	26
78	78	3	27
88	88	3	37
89	89	3	38
90	90	3	39
91	91	3	40
92	92	3	41
93	93	3	42
94	94	1	1
100	100	1	7
103	103	1	10
104	104	1	11
110	110	1	17
113	113	1	20
114	114	1	21
120	120	1	27
123	123	1	30
124	124	1	31
125	125	1	32
126	126	1	33
127	127	1	34
128	128	1	35
129	129	1	36
130	130	1	37
131	131	1	38
132	132	1	39
133	133	1	40
134	134	1	41
135	135	1	42
136	136	1	43
137	137	1	44
138	138	1	45
139	139	1	46
140	140	1	47
141	141	1	48
142	142	1	49
143	143	1	50
144	144	1	51
145	145	1	52
146	146	1	53
147	147	1	54
148	148	1	55
149	149	1	56
150	150	1	57
151	151	1	58
152	152	1	59
153	153	1	60
154	154	1	61
155	155	1	62
156	156	1	63
157	157	1	64
158	158	1	65
159	159	1	66
160	160	1	67
161	161	1	68
162	162	1	69
163	163	1	70
164	164	1	71
165	165	1	72
166	166	1	73
167	167	1	74
168	168	1	75
169	169	1	76
170	170	1	77
171	171	1	78
172	172	1	79
173	173	1	80
174	174	1	81
175	175	1	82
176	176	1	83
177	177	1	84
178	178	1	85
179	179	1	86
180	180	1	87
181	181	1	88
182	182	1	89
183	183	1	90
184	184	1	91
185	185	1	92
186	186	1	93
187	187	1	94
188	188	1	95
189	189	1	96
190	190	1	97
191	191	1	98
192	192	1	99
193	193	1	100
194	194	1	101
195	195	1	102
196	196	1	103
197	197	1	104
198	198	1	105
199	199	1	106
200	200	1	107
201	201	1	108
202	202	1	109
203	203	1	110
204	204	1	111
205	205	1	112
206	206	1	113
207	207	1	114
208	208	1	115
209	209	1	116
210	210	1	117
211	211	1	118
212	212	1	119
216	216	1	123
217	217	1	124
245	245	1	149
246	246	1	150
253	253	1	154
254	254	1	155
255	255	1	156
256	256	1	157
258	258	1	159
260	260	1	161
262	262	1	162
264	264	1	164
266	266	1	166
268	268	1	167
269	269	1	168
270	270	1	169
271	271	1	170
272	272	1	171
273	273	1	172
\.


--
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2024-07-06 18:52:01.791	2024-07-06 18:52:01.791	\N	\N
2	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2024-07-06 18:52:01.941	2024-07-06 18:52:01.941	\N	\N
3	Author	strapi-author	Authors can manage the content they have created.	2024-07-06 18:52:02.091	2024-07-06 18:52:02.091	\N	\N
\.


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Jake	Reddy	\N	jake.a.reddy@gmail.com	$2a$10$ihpoUTsMABIjfztH4za4ruoqJaAFrVtejhtic5PzFm2zH6OHXtD46	\N	\N	t	f	\N	2024-07-06 18:53:12.21	2024-07-06 18:53:12.21	\N	\N
\.


--
-- Data for Name: admin_users_roles_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.admin_users_roles_links (id, user_id, role_id, role_order, user_order) FROM stdin;
1	1	1	1	1
\.


--
-- Data for Name: article_pages; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.article_pages (id, title, introduction, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	Sustainable Building Practices in Modern Construction	In the ever-evolving construction industry, sustainable building practices have become a crucial focus. As the demand for environmentally friendly solutions increases, construction companies are adopting innovative methods to reduce their ecological footprint.	2024-07-06 19:55:28.996	2024-07-06 19:58:07.791	2024-07-06 19:58:07.642	1	1	en
2	The Future of Smart Homes in the Construction Industry	The concept of smart homes has revolutionized the construction industry, blending advanced technology with modern living spaces. As smart homes become more prevalent, construction companies are at the forefront of integrating these technologies into their projects.	2024-07-06 19:58:50.03	2024-07-06 19:58:53.58	2024-07-06 19:58:53.431	1	1	en
3	Enhancing Safety Standards in Construction Projects	Safety is a paramount concern in the construction industry. With the inherent risks associated with construction sites, companies must prioritize safety standards to protect their workers and ensure the successful completion of projects.	2024-07-06 19:59:40.829	2024-07-06 19:59:44.539	2024-07-06 19:59:44.39	1	1	en
4	The Impact of 3D Printing on Construction	3D printing technology has made significant strides in various industries, and construction is no exception. The ability to print building components and entire structures is transforming traditional construction methods.	2024-07-06 20:00:28.798	2024-07-06 20:00:32.208	2024-07-06 20:00:32.06	1	1	en
\.


--
-- Data for Name: article_pages_category_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.article_pages_category_links (id, article_page_id, category_id, article_page_order) FROM stdin;
\.


--
-- Data for Name: article_pages_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.article_pages_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
1	1	1	blocks.text-block	ContentArea	1
2	2	2	blocks.text-block	ContentArea	1
3	3	3	blocks.text-block	ContentArea	1
4	4	4	blocks.text-block	ContentArea	1
\.


--
-- Data for Name: article_pages_localizations_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.article_pages_localizations_links (id, article_page_id, inv_article_page_id, article_page_order) FROM stdin;
\.


--
-- Data for Name: article_pages_tags_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.article_pages_tags_links (id, article_page_id, tag_id, tag_order, article_page_order) FROM stdin;
\.


--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.articles (id, title, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	HouseForce Articles	2024-07-06 19:48:02.728	2024-07-06 19:48:04.517	2024-07-06 19:48:04.367	1	1	en
\.


--
-- Data for Name: articles_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.articles_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: articles_localizations_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.articles_localizations_links (id, article_id, inv_article_id, article_order) FROM stdin;
\.


--
-- Data for Name: blog_pages; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.blog_pages (id, title, introduction, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
4	Home Maintenance Tasks for Every Season	Hey homeowners! Keeping your home in top shape requires regular maintenance throughout the year. To help you stay on track, weΓÇÖve put together a handy guide of essential home maintenance tasks for every season.	2024-07-06 20:07:54.646	2024-07-06 23:06:26.19	2024-07-06 20:08:37.596	1	1	en
3	How to Create the Perfect Outdoor Living Space	Hello, outdoor lovers! With warmer weather just around the corner, itΓÇÖs the perfect time to start thinking about creating your ideal outdoor living space.	2024-07-06 20:04:57.931	2024-07-06 23:06:36.92	2024-07-06 20:08:43.906	1	1	en
1	Top 5 Tips for a Smooth Home Renovation	Hey there, fellow home improvement enthusiasts! Planning a home renovation can be both exciting and a bit overwhelming. But fear not! WeΓÇÖve got you covered.	2024-07-06 20:03:08.034	2024-07-06 23:06:48.589	2024-07-06 20:03:22.345	1	1	en
2	DIY Home Repairs You Can Tackle This Weekend	Hey DIYers! If youΓÇÖre looking for some easy and rewarding home repairs to tackle this weekend, youΓÇÖre in the right place. 	2024-07-06 20:04:11.312	2024-07-06 23:06:10.921	2024-07-06 20:04:14.734	1	1	en
\.


--
-- Data for Name: blog_pages_category_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.blog_pages_category_links (id, blog_page_id, category_id, blog_page_order) FROM stdin;
1	2	2	1
2	4	3	1
3	3	1	1
4	1	2	2
\.


--
-- Data for Name: blog_pages_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.blog_pages_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
16	2	6	blocks.text-block	ContentArea	1
17	4	8	blocks.text-block	ContentArea	1
18	3	7	blocks.text-block	ContentArea	1
19	1	5	blocks.text-block	ContentArea	1
\.


--
-- Data for Name: blog_pages_localizations_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.blog_pages_localizations_links (id, blog_page_id, inv_blog_page_id, blog_page_order) FROM stdin;
\.


--
-- Data for Name: blog_pages_tags_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.blog_pages_tags_links (id, blog_page_id, tag_id, tag_order, blog_page_order) FROM stdin;
1	2	2	2	1
2	2	1	1	1
\.


--
-- Data for Name: blogs; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.blogs (id, title, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	HouseForce Blogs	2024-07-06 19:48:12.527	2024-07-07 20:49:08.006	2024-07-06 20:14:20.377	1	1	en
\.


--
-- Data for Name: blogs_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.blogs_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
1	1	1	blocks.header-block	ContentArea	1
\.


--
-- Data for Name: blogs_localizations_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.blogs_localizations_links (id, blog_id, inv_blog_id, blog_order) FROM stdin;
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.categories (id, name, created_at, updated_at, published_at, created_by_id, updated_by_id, locale, color) FROM stdin;
5	Interior Decorating	2024-07-06 22:41:33.788	2024-07-06 22:41:36.668	2024-07-06 22:41:36.518	1	1	en	\N
4	Exterior Decorating	2024-07-06 22:40:58.448	2024-07-06 22:41:46.788	2024-07-06 22:41:02.038	1	1	en	\N
1	Bathroom	2024-07-06 22:39:44.061	2024-07-06 23:02:35.777	2024-07-06 22:39:51.35	1	1	en	#398cfc
2	Kitchen	2024-07-06 22:39:59.781	2024-07-06 23:02:45.117	2024-07-06 22:40:02.959	1	1	en	#9638f6
3	Living Space	2024-07-06 22:40:31.779	2024-07-06 23:02:54.886	2024-07-06 22:40:35.179	1	1	en	#6ae8b3
\.


--
-- Data for Name: categories_localizations_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.categories_localizations_links (id, category_id, inv_category_id, category_order) FROM stdin;
\.


--
-- Data for Name: components_blocks_header_blocks; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_blocks_header_blocks (id, text) FROM stdin;
1	Something
\.


--
-- Data for Name: components_blocks_header_blocks_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_blocks_header_blocks_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
1	1	10	options.display-options	DisplayOption	\N
\.


--
-- Data for Name: components_blocks_image_blocks; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_blocks_image_blocks (id) FROM stdin;
\.


--
-- Data for Name: components_blocks_image_blocks_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_blocks_image_blocks_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: components_blocks_separator_blocks; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_blocks_separator_blocks (id, title) FROM stdin;
\.


--
-- Data for Name: components_blocks_separator_blocks_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_blocks_separator_blocks_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: components_blocks_tab_blocks; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_blocks_tab_blocks (id) FROM stdin;
\.


--
-- Data for Name: components_blocks_tab_blocks_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_blocks_tab_blocks_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: components_blocks_text_blocks; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_blocks_text_blocks (id, text) FROM stdin;
1	[{"type": "heading", "level": 2, "children": [{"text": "Green Building Materials", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Using green building materials is one of the most significant steps towards sustainable construction. Materials such as bamboo, recycled steel, and reclaimed wood not only reduce waste but also promote the use of renewable resources.", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "Energy-Efficient Design", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Designing buildings to be energy-efficient is essential for sustainability. Incorporating elements like solar panels, high-efficiency windows, and advanced insulation techniques can significantly lower energy consumption and operational costs.", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "Water Conservation Techniques", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Water conservation is another critical aspect of sustainable building. Installing low-flow plumbing fixtures, rainwater harvesting systems, and greywater recycling units helps in reducing water usage and preserving this valuable resource.", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "Benefits of Sustainable Construction", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Sustainable construction practices not only benefit the environment but also improve the quality of life for occupants. Green buildings often have better indoor air quality, natural lighting, and enhanced thermal comfort, leading to healthier living and working conditions.", "type": "text"}]}]
2	[{"type": "heading", "level": 2, "children": [{"text": "Smart Home Technology", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Smart home technology includes a variety of interconnected devices and systems that enhance the functionality and efficiency of homes. From intelligent lighting systems to automated climate control, these technologies offer unparalleled convenience and energy savings.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "Home Automation Systems", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Home automation systems allow homeowners to control various aspects of their home remotely. With the use of smartphones and tablets, users can manage security cameras, door locks, thermostats, and even kitchen appliances, creating a seamless and efficient living experience.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "Energy Management", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Smart homes are designed to optimize energy usage. Advanced energy management systems can monitor consumption patterns and make adjustments to reduce waste. This not only lowers utility bills but also contributes to environmental conservation.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "The Role of Construction Companies", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Construction companies play a vital role in the smart home revolution. By staying updated with the latest technologies and incorporating them into their building projects, they ensure that homes are future-proof and equipped to meet the evolving needs of homeowners.", "type": "text"}]}]
3	[{"type": "heading", "level": 2, "children": [{"text": "Comprehensive Safety Training", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Providing comprehensive safety training to all employees is the foundation of a safe construction site. Training programs should cover the proper use of equipment, hazard recognition, and emergency response procedures.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "Use of Personal Protective Equipment (PPE)", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Personal Protective Equipment (PPE) is essential for safeguarding workers against potential hazards. Ensuring that all personnel are equipped with helmets, gloves, safety glasses, and other necessary gear is critical for their protection.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "Implementation of Safety Protocols", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Establishing and strictly enforcing safety protocols can significantly reduce the risk of accidents. Regular site inspections, safety meetings, and adherence to OSHA guidelines are vital components of an effective safety strategy.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "Technological Innovations in Safety", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "The integration of technology has introduced new ways to enhance safety on construction sites. Drones for site inspections, wearable devices for monitoring worker health, and virtual reality for safety training are some of the innovations making construction safer.", "type": "text"}]}]
4	[{"type": "heading", "level": 2, "children": [{"text": "Advantages of 3D Printing in Construction", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "3D printing offers numerous advantages, including reduced material waste, faster construction times, and the ability to create complex designs with precision. This technology also allows for greater customization and flexibility in building projects.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "Applications of 3D Printing", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "3D printing is being used to create a variety of building elements, from structural components to interior fixtures. It is particularly beneficial for producing intricate designs that would be challenging or impossible to achieve with conventional methods.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "Cost Efficiency", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "One of the most appealing aspects of 3D printing in construction is its potential to lower costs. By minimizing material waste and reducing labor requirements, 3D printing can make construction projects more affordable without compromising quality.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "Future Prospects", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "The future of 3D printing in construction looks promising. As technology continues to advance, it is expected to play a pivotal role in the development of sustainable, efficient, and innovative building solutions, paving the way for the next generation of construction practices.", "type": "text"}]}]
6	[{"type": "heading", "level": 2, "children": [{"text": "Fixing a Leaky Faucet", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "A leaky faucet can be super annoying and wasteful. The good news? ItΓÇÖs usually an easy fix! Start by turning off the water supply, then disassemble the faucet to find the faulty part (often a worn-out washer). Replace the part, reassemble, and voilaΓÇöno more drips!", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "Patching Small Holes in the Wall", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Got some small holes in your walls from picture frames or old fixtures? Patching them up is a breeze. All you need is some spackle, a putty knife, and a bit of sandpaper. Apply the spackle, smooth it out, let it dry, and sand it down for a seamless finish. A little touch-up paint, and youΓÇÖre done!", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "Unclogging the Drain", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Clogged drains are a common issue, but they donΓÇÖt always require a plumber. Try using a plunger or a drain snake to clear the blockage. If that doesnΓÇÖt work, a mixture of baking soda and vinegar can help break down the gunk. Pour it down the drain, let it sit, then flush with hot water.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "Replacing a Faulty Light Switch", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "If you have a light switch thatΓÇÖs not working properly, replacing it is a straightforward task. Turn off the power at the circuit breaker, remove the switch cover, and swap out the old switch with a new one. Make sure to follow safety guidelines and double-check your wiring.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "Freshening Up the Caulking", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Old, cracked caulk around your bathtub or windows can make your home look dated. Removing the old caulk and applying a fresh bead can instantly improve the look and seal out moisture. Use a caulk remover tool, clean the area, and apply new caulk for a fresh finish.", "type": "text"}]}]
9	[{"type": "heading", "level": 2, "children": [{"text": "Process", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "We started by assessing the basement for any issues such as dampness or structural concerns. After ensuring the space was dry and secure, we framed the new rooms and installed insulation to make the area comfortable year-round.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Next, we installed drywall, flooring, and new electrical and plumbing systems. The family room features built-in shelving and a media center, perfect for movie nights. The guest bedroom is cozy and welcoming, with ample storage space. The bathroom was designed with modern fixtures and a walk-in shower.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "We also added egress windows to bring in natural light and ensure safety. The final step was painting and finishing touches, including new lighting and decor.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "Customer", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "The Thompsons are a growing family who needed extra living space. They wanted a versatile basement that could serve as both a family hangout and a guest suite for visiting relatives.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "Challenges", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "One of the main challenges was managing moisture levels in the basement. We installed a high-quality sump pump and a dehumidifier to keep the space dry. Another challenge was working with the limited ceiling height, which required careful planning to maximize the spaceΓÇÖs functionality and comfort.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "Summary", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "The basement conversion for the Thompsons was a fantastic success. The new family room, guest bedroom, and bathroom have added significant value and functionality to their home. The Thompsons were extremely happy with the transformation, especially the cozy family room that has become their favorite spot in the house. This project demonstrated our ability to creatively and effectively convert underutilized spaces into valuable living areas.", "type": "text"}]}]
5	[{"type": "heading", "level": 2, "children": [{"text": "Plan, Plan, Plan!", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "The key to a successful renovation is all in the planning. Before you even pick up a hammer, make sure you have a clear vision of what you want to achieve. Create a detailed plan that includes your budget, timeline, and a list of must-haves and nice-to-haves. Trust us, having a solid plan will save you from many headaches down the road.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "Set a Realistic Budget", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "We canΓÇÖt stress this enough: set a realistic budget! Renovations often come with unexpected costs, so itΓÇÖs wise to add a buffer of around 10-20% to your budget. This way, you wonΓÇÖt be caught off guard by any surprises that pop up along the way.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "Choose the Right Contractor", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Finding the right contractor is crucial. Do your homeworkΓÇöask for recommendations, check reviews, and meet with a few different contractors to get quotes and see who you vibe with. Remember, communication is key, so choose someone who listens to your ideas and keeps you informed throughout the process.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "Expect the Unexpected", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Even with the best-laid plans, renovations can sometimes throw you a curveball. Whether itΓÇÖs a delay in materials or discovering an unexpected issue behind the walls, staying flexible and prepared for the unexpected will help you keep your cool.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "Enjoy the Process", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Last but not least, try to enjoy the process! Renovating your home is a big deal, and itΓÇÖs an opportunity to make your space truly yours. Celebrate the small victories along the way and look forward to the amazing transformation thatΓÇÖs taking place.", "type": "text"}]}]
8	[{"type": "heading", "level": 2, "children": [{"text": "Spring: Fresh Start", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Spring is all about renewal and fresh starts. Begin by inspecting your roof for any winter damage and clean out your gutters. Check your exterior walls and windows for any signs of wear and tear. DonΓÇÖt forget to service your HVAC system to ensure itΓÇÖs ready for the warmer months ahead.", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "Summer: Cool and Comfortable", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "As the temperatures rise, focus on keeping your home cool and comfortable. Clean and inspect your fans and air conditioning units. This is also a great time to give your deck or patio a good cleaning and seal any cracks or gaps. Check your irrigation system to make sure itΓÇÖs working efficiently.", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "Fall: Preparing for Winter", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Fall is all about preparing for the colder months. Start by inspecting and cleaning your chimney and fireplace. Check for drafts around doors and windows and seal any gaps to keep the cold out. Clean out your gutters once again to prevent any clogs from falling leaves. DonΓÇÖt forget to check your heating system and replace filters if needed.", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "Winter: Staying Cozy", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Winter is all about staying cozy and warm. Ensure your home is well-insulated and that your heating system is functioning properly. Check for any signs of ice dams on your roof and remove them promptly. Test your smoke and carbon monoxide detectors to keep your home safe.", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "Year-Round Essentials", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Some tasks should be done regularly, no matter the season. These include checking your plumbing for leaks, inspecting your homeΓÇÖs foundation, and testing your security system. Regularly clean and inspect your appliances to ensure theyΓÇÖre running efficiently and safely.", "type": "text"}]}]
7	[{"type": "heading", "level": 2, "children": [{"text": "Define Your Space", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "The first step in creating your outdoor oasis is to define your space. Think about how you want to use the areaΓÇödo you need a dining spot, a lounging area, or maybe even a garden nook? Once you have a clear idea, start planning the layout and consider adding some outdoor rugs or decking to delineate different zones.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "Choose Comfortable Furniture", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Comfort is key when it comes to outdoor furniture. Opt for pieces that are not only stylish but also cozy enough for lounging. Weather-resistant materials like wicker, teak, or metal are great options. DonΓÇÖt forget to add plenty of cushions and throws for that extra comfort and a pop of color.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "Add Some Greenery", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Plants can transform any outdoor space into a lush retreat. Choose a mix of potted plants, hanging baskets, and garden beds to create visual interest and a sense of tranquility. If youΓÇÖre short on space, vertical gardens and plant shelves are excellent solutions.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "Create Ambiance with Lighting", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Good lighting can set the mood for your outdoor space. String lights, lanterns, and solar-powered path lights are all great options to add a warm, inviting glow. Consider adding a fire pit or an outdoor fireplace for both ambiance and warmth on cooler evenings.", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "", "type": "text"}]}, {"type": "heading", "level": 2, "children": [{"text": "Personalize with Decor", "type": "text"}]}, {"type": "paragraph", "children": [{"text": "Finally, make the space your own with some personal touches. Add outdoor rugs, decorative pillows, and artwork to reflect your style. Incorporate elements like wind chimes, water features, or a cozy hammock to create a relaxing atmosphere.", "type": "text"}]}]
\.


--
-- Data for Name: components_blocks_text_blocks_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_blocks_text_blocks_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
1	1	1	options.display-options	DisplayOption	\N
2	2	2	options.display-options	DisplayOption	\N
3	3	3	options.display-options	DisplayOption	\N
4	4	4	options.display-options	DisplayOption	\N
5	5	5	options.display-options	DisplayOption	\N
6	6	6	options.display-options	DisplayOption	\N
7	7	7	options.display-options	DisplayOption	\N
8	8	8	options.display-options	DisplayOption	\N
10	9	9	options.display-options	DisplayOption	\N
\.


--
-- Data for Name: components_components_tabs; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_components_tabs (id, tab_title, content_title, content, icon) FROM stdin;
\.


--
-- Data for Name: components_options_display_options; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.components_options_display_options (id, block_size, border_radius, border) FROM stdin;
1	Full	None	f
2	Full	None	f
3	Full	None	f
4	Full	None	f
9	Full	None	f
6	Full	None	f
8	Full	None	f
7	Full	None	f
5	Full	None	f
10	Full	None	f
\.


--
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	felix-prado-nbKaLT4cmRM-unsplash.jpg	\N	\N	3888	2592	{"large": {"ext": ".jpg", "url": "/uploads/large_felix_prado_nb_Ka_LT_4cm_RM_unsplash_6d17d693f2.jpg", "hash": "large_felix_prado_nb_Ka_LT_4cm_RM_unsplash_6d17d693f2", "mime": "image/jpeg", "name": "large_felix-prado-nbKaLT4cmRM-unsplash.jpg", "path": null, "size": 39.54, "width": 1000, "height": 667, "sizeInBytes": 39542}, "small": {"ext": ".jpg", "url": "/uploads/small_felix_prado_nb_Ka_LT_4cm_RM_unsplash_6d17d693f2.jpg", "hash": "small_felix_prado_nb_Ka_LT_4cm_RM_unsplash_6d17d693f2", "mime": "image/jpeg", "name": "small_felix-prado-nbKaLT4cmRM-unsplash.jpg", "path": null, "size": 14.8, "width": 500, "height": 333, "sizeInBytes": 14804}, "medium": {"ext": ".jpg", "url": "/uploads/medium_felix_prado_nb_Ka_LT_4cm_RM_unsplash_6d17d693f2.jpg", "hash": "medium_felix_prado_nb_Ka_LT_4cm_RM_unsplash_6d17d693f2", "mime": "image/jpeg", "name": "medium_felix-prado-nbKaLT4cmRM-unsplash.jpg", "path": null, "size": 25.7, "width": 750, "height": 500, "sizeInBytes": 25698}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_felix_prado_nb_Ka_LT_4cm_RM_unsplash_6d17d693f2.jpg", "hash": "thumbnail_felix_prado_nb_Ka_LT_4cm_RM_unsplash_6d17d693f2", "mime": "image/jpeg", "name": "thumbnail_felix-prado-nbKaLT4cmRM-unsplash.jpg", "path": null, "size": 5.52, "width": 234, "height": 156, "sizeInBytes": 5520}}	felix_prado_nb_Ka_LT_4cm_RM_unsplash_6d17d693f2	.jpg	image/jpeg	731.35	/uploads/felix_prado_nb_Ka_LT_4cm_RM_unsplash_6d17d693f2.jpg	\N	local	\N	/	2024-07-06 21:02:55.221	2024-07-06 21:02:55.221	1	1
4	josue-isai-ramos-figueroa-qvBYnMuNJ9A-unsplash.jpg	\N	\N	3482	2536	{"large": {"ext": ".jpg", "url": "/uploads/large_josue_isai_ramos_figueroa_qv_B_Yn_Mu_NJ_9_A_unsplash_7b3ef7b49f.jpg", "hash": "large_josue_isai_ramos_figueroa_qv_B_Yn_Mu_NJ_9_A_unsplash_7b3ef7b49f", "mime": "image/jpeg", "name": "large_josue-isai-ramos-figueroa-qvBYnMuNJ9A-unsplash.jpg", "path": null, "size": 229.28, "width": 1000, "height": 728, "sizeInBytes": 229281}, "small": {"ext": ".jpg", "url": "/uploads/small_josue_isai_ramos_figueroa_qv_B_Yn_Mu_NJ_9_A_unsplash_7b3ef7b49f.jpg", "hash": "small_josue_isai_ramos_figueroa_qv_B_Yn_Mu_NJ_9_A_unsplash_7b3ef7b49f", "mime": "image/jpeg", "name": "small_josue-isai-ramos-figueroa-qvBYnMuNJ9A-unsplash.jpg", "path": null, "size": 64.36, "width": 500, "height": 364, "sizeInBytes": 64364}, "medium": {"ext": ".jpg", "url": "/uploads/medium_josue_isai_ramos_figueroa_qv_B_Yn_Mu_NJ_9_A_unsplash_7b3ef7b49f.jpg", "hash": "medium_josue_isai_ramos_figueroa_qv_B_Yn_Mu_NJ_9_A_unsplash_7b3ef7b49f", "mime": "image/jpeg", "name": "medium_josue-isai-ramos-figueroa-qvBYnMuNJ9A-unsplash.jpg", "path": null, "size": 138.55, "width": 750, "height": 546, "sizeInBytes": 138551}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_josue_isai_ramos_figueroa_qv_B_Yn_Mu_NJ_9_A_unsplash_7b3ef7b49f.jpg", "hash": "thumbnail_josue_isai_ramos_figueroa_qv_B_Yn_Mu_NJ_9_A_unsplash_7b3ef7b49f", "mime": "image/jpeg", "name": "thumbnail_josue-isai-ramos-figueroa-qvBYnMuNJ9A-unsplash.jpg", "path": null, "size": 12.59, "width": 214, "height": 156, "sizeInBytes": 12591}}	josue_isai_ramos_figueroa_qv_B_Yn_Mu_NJ_9_A_unsplash_7b3ef7b49f	.jpg	image/jpeg	2111.24	/uploads/josue_isai_ramos_figueroa_qv_B_Yn_Mu_NJ_9_A_unsplash_7b3ef7b49f.jpg	\N	local	\N	/	2024-07-06 21:02:55.392	2024-07-06 21:02:55.392	1	1
3	precious-plastic-melbourne-n5qirFAe6rQ-unsplash.jpg	\N	\N	4032	3024	{"large": {"ext": ".jpg", "url": "/uploads/large_precious_plastic_melbourne_n5qir_F_Ae6r_Q_unsplash_a595acaada.jpg", "hash": "large_precious_plastic_melbourne_n5qir_F_Ae6r_Q_unsplash_a595acaada", "mime": "image/jpeg", "name": "large_precious-plastic-melbourne-n5qirFAe6rQ-unsplash.jpg", "path": null, "size": 51.35, "width": 1000, "height": 750, "sizeInBytes": 51347}, "small": {"ext": ".jpg", "url": "/uploads/small_precious_plastic_melbourne_n5qir_F_Ae6r_Q_unsplash_a595acaada.jpg", "hash": "small_precious_plastic_melbourne_n5qir_F_Ae6r_Q_unsplash_a595acaada", "mime": "image/jpeg", "name": "small_precious-plastic-melbourne-n5qirFAe6rQ-unsplash.jpg", "path": null, "size": 15.53, "width": 500, "height": 375, "sizeInBytes": 15529}, "medium": {"ext": ".jpg", "url": "/uploads/medium_precious_plastic_melbourne_n5qir_F_Ae6r_Q_unsplash_a595acaada.jpg", "hash": "medium_precious_plastic_melbourne_n5qir_F_Ae6r_Q_unsplash_a595acaada", "mime": "image/jpeg", "name": "medium_precious-plastic-melbourne-n5qirFAe6rQ-unsplash.jpg", "path": null, "size": 30.9, "width": 750, "height": 563, "sizeInBytes": 30899}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_precious_plastic_melbourne_n5qir_F_Ae6r_Q_unsplash_a595acaada.jpg", "hash": "thumbnail_precious_plastic_melbourne_n5qir_F_Ae6r_Q_unsplash_a595acaada", "mime": "image/jpeg", "name": "thumbnail_precious-plastic-melbourne-n5qirFAe6rQ-unsplash.jpg", "path": null, "size": 4.02, "width": 208, "height": 156, "sizeInBytes": 4017}}	precious_plastic_melbourne_n5qir_F_Ae6r_Q_unsplash_a595acaada	.jpg	image/jpeg	994.75	/uploads/precious_plastic_melbourne_n5qir_F_Ae6r_Q_unsplash_a595acaada.jpg	\N	local	\N	/	2024-07-06 21:02:55.388	2024-07-06 21:02:55.388	1	1
5	scott-blake-x-ghf9LjrVg-unsplash.jpg	\N	\N	5472	3648	{"large": {"ext": ".jpg", "url": "/uploads/large_scott_blake_x_ghf9_Ljr_Vg_unsplash_e8a0ebbaea.jpg", "hash": "large_scott_blake_x_ghf9_Ljr_Vg_unsplash_e8a0ebbaea", "mime": "image/jpeg", "name": "large_scott-blake-x-ghf9LjrVg-unsplash.jpg", "path": null, "size": 181.77, "width": 1000, "height": 667, "sizeInBytes": 181770}, "small": {"ext": ".jpg", "url": "/uploads/small_scott_blake_x_ghf9_Ljr_Vg_unsplash_e8a0ebbaea.jpg", "hash": "small_scott_blake_x_ghf9_Ljr_Vg_unsplash_e8a0ebbaea", "mime": "image/jpeg", "name": "small_scott-blake-x-ghf9LjrVg-unsplash.jpg", "path": null, "size": 50.03, "width": 500, "height": 333, "sizeInBytes": 50033}, "medium": {"ext": ".jpg", "url": "/uploads/medium_scott_blake_x_ghf9_Ljr_Vg_unsplash_e8a0ebbaea.jpg", "hash": "medium_scott_blake_x_ghf9_Ljr_Vg_unsplash_e8a0ebbaea", "mime": "image/jpeg", "name": "medium_scott-blake-x-ghf9LjrVg-unsplash.jpg", "path": null, "size": 106.71, "width": 750, "height": 500, "sizeInBytes": 106708}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_scott_blake_x_ghf9_Ljr_Vg_unsplash_e8a0ebbaea.jpg", "hash": "thumbnail_scott_blake_x_ghf9_Ljr_Vg_unsplash_e8a0ebbaea", "mime": "image/jpeg", "name": "thumbnail_scott-blake-x-ghf9LjrVg-unsplash.jpg", "path": null, "size": 12.95, "width": 234, "height": 156, "sizeInBytes": 12954}}	scott_blake_x_ghf9_Ljr_Vg_unsplash_e8a0ebbaea	.jpg	image/jpeg	4259.72	/uploads/scott_blake_x_ghf9_Ljr_Vg_unsplash_e8a0ebbaea.jpg	\N	local	\N	/	2024-07-06 21:02:55.781	2024-07-06 21:02:55.781	1	1
2	cdc-VRpjDw3WqqI-unsplash.jpg	\N	\N	4096	2731	{"large": {"ext": ".jpg", "url": "/uploads/large_cdc_V_Rpj_Dw3_Wqq_I_unsplash_4916a36dbc.jpg", "hash": "large_cdc_V_Rpj_Dw3_Wqq_I_unsplash_4916a36dbc", "mime": "image/jpeg", "name": "large_cdc-VRpjDw3WqqI-unsplash.jpg", "path": null, "size": 56.89, "width": 1000, "height": 667, "sizeInBytes": 56891}, "small": {"ext": ".jpg", "url": "/uploads/small_cdc_V_Rpj_Dw3_Wqq_I_unsplash_4916a36dbc.jpg", "hash": "small_cdc_V_Rpj_Dw3_Wqq_I_unsplash_4916a36dbc", "mime": "image/jpeg", "name": "small_cdc-VRpjDw3WqqI-unsplash.jpg", "path": null, "size": 18.58, "width": 500, "height": 333, "sizeInBytes": 18581}, "medium": {"ext": ".jpg", "url": "/uploads/medium_cdc_V_Rpj_Dw3_Wqq_I_unsplash_4916a36dbc.jpg", "hash": "medium_cdc_V_Rpj_Dw3_Wqq_I_unsplash_4916a36dbc", "mime": "image/jpeg", "name": "medium_cdc-VRpjDw3WqqI-unsplash.jpg", "path": null, "size": 35.26, "width": 750, "height": 500, "sizeInBytes": 35258}, "thumbnail": {"ext": ".jpg", "url": "/uploads/thumbnail_cdc_V_Rpj_Dw3_Wqq_I_unsplash_4916a36dbc.jpg", "hash": "thumbnail_cdc_V_Rpj_Dw3_Wqq_I_unsplash_4916a36dbc", "mime": "image/jpeg", "name": "thumbnail_cdc-VRpjDw3WqqI-unsplash.jpg", "path": null, "size": 5.78, "width": 234, "height": 156, "sizeInBytes": 5778}}	cdc_V_Rpj_Dw3_Wqq_I_unsplash_4916a36dbc	.jpg	image/jpeg	617.25	/uploads/cdc_V_Rpj_Dw3_Wqq_I_unsplash_4916a36dbc.jpg	\N	local	\N	/	2024-07-06 21:02:55.235	2024-07-06 21:03:48.818	1	1
\.


--
-- Data for Name: files_folder_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.files_folder_links (id, file_id, folder_id, file_order) FROM stdin;
\.


--
-- Data for Name: files_related_morphs; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.files_related_morphs (id, file_id, related_id, related_type, field, "order") FROM stdin;
11	1	2	api::blog-page.blog-page	MainImage	1
12	5	4	api::blog-page.blog-page	MainImage	1
13	3	3	api::blog-page.blog-page	MainImage	1
14	2	1	api::blog-page.blog-page	MainImage	1
\.


--
-- Data for Name: homecares; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.homecares (id, title, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	HouseForce Homecare	2024-07-06 19:52:58.52	2024-07-06 20:14:12.747	2024-07-06 20:14:12.597	1	1	en
\.


--
-- Data for Name: homecares_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.homecares_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: homecares_localizations_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.homecares_localizations_links (id, homecare_id, inv_homecare_id, homecare_order) FROM stdin;
\.


--
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	English (en)	en	2024-07-06 18:52:00.182	2024-07-06 18:52:00.182	\N	\N
\.


--
-- Data for Name: project_pages; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.project_pages (id, title, introduction, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	Basement Conversion for the Thompsons	The Thompsons had an underutilized basement that they wanted to transform into a functional living space. Our goal was to create a cozy family room, a guest bedroom, and a full bathroom, turning the basement into a valuable part of their home.	2024-07-06 20:12:05.33	2024-07-06 20:50:02.87	2024-07-06 20:12:08.761	1	1	en
\.


--
-- Data for Name: project_pages_category_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.project_pages_category_links (id, project_page_id, category_id, project_page_order) FROM stdin;
\.


--
-- Data for Name: project_pages_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.project_pages_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
2	1	9	blocks.text-block	ContentArea	1
\.


--
-- Data for Name: project_pages_localizations_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.project_pages_localizations_links (id, project_page_id, inv_project_page_id, project_page_order) FROM stdin;
\.


--
-- Data for Name: project_pages_tags_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.project_pages_tags_links (id, project_page_id, tag_id, tag_order, project_page_order) FROM stdin;
1	1	2	2	1
2	1	1	1	1
\.


--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.projects (id, title, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	HouseForce Projects	2024-07-06 19:48:25.727	2024-07-06 20:14:16.697	2024-07-06 20:14:16.547	1	1	en
\.


--
-- Data for Name: projects_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.projects_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: projects_localizations_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.projects_localizations_links (id, project_id, inv_project_id, project_order) FROM stdin;
\.


--
-- Data for Name: renovations; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.renovations (id, title, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	HouseForce Renovation	2024-07-06 19:53:10.559	2024-07-06 20:14:08.607	2024-07-06 20:14:08.457	1	1	en
\.


--
-- Data for Name: renovations_components; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.renovations_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: renovations_localizations_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.renovations_localizations_links (id, renovation_id, inv_renovation_id, renovation_order) FROM stdin;
\.


--
-- Data for Name: strapi_api_token_permissions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_api_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_api_token_permissions_token_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_api_token_permissions_token_links (id, api_token_permission_id, api_token_id, api_token_permission_order) FROM stdin;
\.


--
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_api_tokens (id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
47	plugin_content_manager_configuration_content_types::api::tag.tag	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Name","defaultSortBy":"Name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"Name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"blog_pages":{"edit":{"label":"blog_pages","description":"","placeholder":"","visible":true,"editable":true,"mainField":"Title"},"list":{"label":"blog_pages","searchable":false,"sortable":false}},"project_pages":{"edit":{"label":"project_pages","description":"","placeholder":"","visible":true,"editable":true,"mainField":"Title"},"list":{"label":"project_pages","searchable":false,"sortable":false}},"article_pages":{"edit":{"label":"article_pages","description":"","placeholder":"","visible":true,"editable":true,"mainField":"Title"},"list":{"label":"article_pages","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","Name","createdAt","updatedAt"],"edit":[[{"name":"Name","size":6},{"name":"project_pages","size":6}],[{"name":"blog_pages","size":6},{"name":"article_pages","size":6}]]},"uid":"api::tag.tag"}	object	\N	\N
48	plugin_content_manager_configuration_content_types::api::category.category	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Name","defaultSortBy":"Name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"Name":{"edit":{"label":"Name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Name","searchable":true,"sortable":true}},"Color":{"edit":{"label":"Color","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Color","searchable":true,"sortable":true}},"blog_pages":{"edit":{"label":"blog_pages","description":"","placeholder":"","visible":true,"editable":true,"mainField":"Title"},"list":{"label":"blog_pages","searchable":false,"sortable":false}},"article_pages":{"edit":{"label":"article_pages","description":"","placeholder":"","visible":true,"editable":true,"mainField":"Title"},"list":{"label":"article_pages","searchable":false,"sortable":false}},"project_pages":{"edit":{"label":"project_pages","description":"","placeholder":"","visible":true,"editable":true,"mainField":"Title"},"list":{"label":"project_pages","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","Name","createdAt","updatedAt"],"edit":[[{"name":"Name","size":6},{"name":"Color","size":6}],[{"name":"blog_pages","size":6},{"name":"article_pages","size":6}],[{"name":"project_pages","size":6}]]},"uid":"api::category.category"}	object	\N	\N
9	plugin_content_manager_configuration_content_types::admin::api-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}],[{"name":"lastUsedAt","size":6},{"name":"permissions","size":6}],[{"name":"expiresAt","size":6},{"name":"lifespan","size":4}]]},"uid":"admin::api-token"}	object	\N	\N
14	plugin_content_manager_configuration_content_types::admin::transfer-token	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","accessKey"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"accessKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]},"uid":"admin::transfer-token"}	object	\N	\N
4	plugin_content_manager_configuration_components::blocks.image-block	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Media":{"edit":{"label":"Media","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Media","searchable":false,"sortable":false}},"DisplayOption":{"edit":{"label":"DisplayOption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"DisplayOption","searchable":false,"sortable":false}}},"layouts":{"list":["id","Media","DisplayOption"],"edit":[[{"name":"Media","size":6}],[{"name":"DisplayOption","size":12}]]},"uid":"blocks.image-block","isComponent":true}	object	\N	\N
3	plugin_content_manager_configuration_components::blocks.separator-block	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Title","defaultSortBy":"Title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"DisplayOption":{"edit":{"label":"DisplayOption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"DisplayOption","searchable":false,"sortable":false}}},"layouts":{"list":["id","Title","DisplayOption"],"edit":[[{"name":"Title","size":6}],[{"name":"DisplayOption","size":12}]]},"uid":"blocks.separator-block","isComponent":true}	object	\N	\N
10	plugin_content_manager_configuration_content_types::admin::user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"isActive","size":4}],[{"name":"roles","size":6},{"name":"blocked","size":4}],[{"name":"preferedLanguage","size":6}]]},"uid":"admin::user"}	object	\N	\N
13	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]},"uid":"plugin::i18n.locale"}	object	\N	\N
23	plugin_content_manager_configuration_content_types::plugin::upload.file	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"folder":{"edit":{"label":"folder","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"folder","searchable":true,"sortable":true}},"folderPath":{"edit":{"label":"folderPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"folderPath","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}],[{"name":"folder","size":6},{"name":"folderPath","size":6}]]},"uid":"plugin::upload.file"}	object	\N	\N
33	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false}	object	\N	\N
34	plugin_upload_view_configuration	{"pageSize":10,"sort":"createdAt:DESC"}	object	\N	\N
36	plugin_meilisearch_meilisearch_api_key	"CSoHrJ1ALmEa1U3fZ6TmgHb3CXqhcAeAfZHXLsqquHQ"	string	\N	\N
37	plugin_meilisearch_meilisearch_api_key_config	true	boolean	\N	\N
38	plugin_meilisearch_meilisearch_host	"http://localhost:7700"	string	\N	\N
39	plugin_meilisearch_meilisearch_host_config	true	boolean	\N	\N
12	plugin_content_manager_configuration_content_types::api::about-us.about-us	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Title","defaultSortBy":"Title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"Title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"ContentArea":{"edit":{"label":"ContentArea","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ContentArea","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","Title","createdAt","updatedAt"],"edit":[[{"name":"Title","size":6}],[{"name":"ContentArea","size":12}]]},"uid":"api::about-us.about-us"}	object	\N	\N
11	plugin_content_manager_configuration_content_types::plugin::content-releases.release	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"releasedAt":{"edit":{"label":"releasedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"releasedAt","searchable":true,"sortable":true}},"scheduledAt":{"edit":{"label":"scheduledAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"scheduledAt","searchable":true,"sortable":true}},"timezone":{"edit":{"label":"timezone","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"timezone","searchable":true,"sortable":true}},"status":{"edit":{"label":"status","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"status","searchable":true,"sortable":true}},"actions":{"edit":{"label":"actions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"contentType"},"list":{"label":"actions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","releasedAt","scheduledAt"],"edit":[[{"name":"name","size":6},{"name":"releasedAt","size":6}],[{"name":"scheduledAt","size":6},{"name":"timezone","size":6}],[{"name":"status","size":6},{"name":"actions","size":6}]]},"uid":"plugin::content-releases.release"}	object	\N	\N
21	plugin_content_manager_configuration_content_types::plugin::upload.folder	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"pathId":{"edit":{"label":"pathId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pathId","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"parent","searchable":true,"sortable":true}},"children":{"edit":{"label":"children","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"children","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"files","searchable":false,"sortable":false}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","pathId","parent"],"edit":[[{"name":"name","size":6},{"name":"pathId","size":4}],[{"name":"parent","size":6},{"name":"children","size":6}],[{"name":"files","size":6},{"name":"path","size":6}]]},"uid":"plugin::upload.folder"}	object	\N	\N
30	plugin_content_manager_configuration_content_types::api::article-page.article-page	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Title","defaultSortBy":"Title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"Title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"MainImage":{"edit":{"label":"MainImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"MainImage","searchable":false,"sortable":false}},"Introduction":{"edit":{"label":"Introduction","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Introduction","searchable":false,"sortable":false}},"ContentArea":{"edit":{"label":"ContentArea","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ContentArea","searchable":false,"sortable":false}},"Tags":{"edit":{"label":"Tags","description":"","placeholder":"","visible":true,"editable":true,"mainField":"Name"},"list":{"label":"Tags","searchable":false,"sortable":false}},"Category":{"edit":{"label":"Category","description":"","placeholder":"","visible":true,"editable":true,"mainField":"Name"},"list":{"label":"Category","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","Title","MainImage","createdAt"],"edit":[[{"name":"Title","size":6},{"name":"MainImage","size":6}],[{"name":"Introduction","size":12}],[{"name":"ContentArea","size":12}],[{"name":"Tags","size":6},{"name":"Category","size":6}]]},"uid":"api::article-page.article-page"}	object	\N	\N
16	plugin_content_manager_configuration_content_types::admin::api-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::api-token-permission"}	object	\N	\N
29	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"edit":[[{"name":"action","size":6},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.permission"}	object	\N	\N
18	plugin_content_manager_configuration_content_types::api::project-page.project-page	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Title","defaultSortBy":"Title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"Title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"MainImage":{"edit":{"label":"MainImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"MainImage","searchable":false,"sortable":false}},"Introduction":{"edit":{"label":"Introduction","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Introduction","searchable":false,"sortable":false}},"ContentArea":{"edit":{"label":"ContentArea","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ContentArea","searchable":false,"sortable":false}},"Tags":{"edit":{"label":"Tags","description":"","placeholder":"","visible":true,"editable":true,"mainField":"Name"},"list":{"label":"Tags","searchable":false,"sortable":false}},"Category":{"edit":{"label":"Category","description":"","placeholder":"","visible":true,"editable":true,"mainField":"Name"},"list":{"label":"Category","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","Title","MainImage","createdAt"],"edit":[[{"name":"Title","size":6},{"name":"MainImage","size":6}],[{"name":"Introduction","size":12}],[{"name":"ContentArea","size":12}],[{"name":"Tags","size":6},{"name":"Category","size":6}]]},"uid":"api::project-page.project-page"}	object	\N	\N
27	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"permissions","size":6}],[{"name":"users","size":6}]]},"uid":"plugin::users-permissions.role"}	object	\N	\N
31	plugin_content_manager_configuration_content_types::api::homecare.homecare	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Title","defaultSortBy":"Title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"Title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"ContentArea":{"edit":{"label":"ContentArea","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ContentArea","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","Title","createdAt","updatedAt"],"edit":[[{"name":"Title","size":6}],[{"name":"ContentArea","size":12}]]},"uid":"api::homecare.homecare"}	object	\N	\N
17	plugin_content_manager_configuration_content_types::api::article.article	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Title","defaultSortBy":"Title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"Title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"ContentArea":{"edit":{"label":"ContentArea","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ContentArea","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","Title","createdAt","updatedAt"],"edit":[[{"name":"Title","size":6}],[{"name":"ContentArea","size":12}]]},"uid":"api::article.article"}	object	\N	\N
15	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"role","size":6}]]},"uid":"plugin::users-permissions.user"}	object	\N	\N
26	plugin_content_manager_configuration_content_types::api::renovation.renovation	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Title","defaultSortBy":"Title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"Title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"ContentArea":{"edit":{"label":"ContentArea","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ContentArea","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","Title","createdAt","updatedAt"],"edit":[[{"name":"Title","size":6}],[{"name":"ContentArea","size":12}]]},"uid":"api::renovation.renovation"}	object	\N	\N
20	plugin_content_manager_configuration_content_types::admin::transfer-token-permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]},"uid":"admin::transfer-token-permission"}	object	\N	\N
41	plugin_i18n_default_locale	"en"	string	\N	\N
42	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"api/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"api/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"api/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"api/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"},"patreon":{"enabled":false,"icon":"","key":"","secret":"","callback":"api/auth/patreon/callback","scope":["identity","identity[email]"]},"keycloak":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"myKeycloakProvider.com/realms/myrealm","callback":"api/auth/keycloak/callback","scope":["openid","email","profile"]}}	object	\N	\N
43	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But donΓÇÖt worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object	\N	\N
44	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object	\N	\N
22	plugin_content_manager_configuration_content_types::plugin::content-releases.release-action	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"contentType","defaultSortBy":"contentType","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"contentType":{"edit":{"label":"contentType","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"contentType","searchable":true,"sortable":true}},"locale":{"edit":{"label":"locale","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"locale","searchable":true,"sortable":true}},"release":{"edit":{"label":"release","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"release","searchable":true,"sortable":true}},"isEntryValid":{"edit":{"label":"isEntryValid","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isEntryValid","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","type","contentType","locale"],"edit":[[{"name":"type","size":6},{"name":"contentType","size":6}],[{"name":"locale","size":6},{"name":"release","size":6}],[{"name":"isEntryValid","size":4}]]},"uid":"plugin::content-releases.release-action"}	object	\N	\N
28	plugin_content_manager_configuration_content_types::api::blog-page.blog-page	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Title","defaultSortBy":"Title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"Title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"MainImage":{"edit":{"label":"MainImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"MainImage","searchable":false,"sortable":false}},"Introduction":{"edit":{"label":"Introduction","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Introduction","searchable":false,"sortable":false}},"ContentArea":{"edit":{"label":"ContentArea","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ContentArea","searchable":false,"sortable":false}},"Tags":{"edit":{"label":"Tags","description":"","placeholder":"","visible":true,"editable":true,"mainField":"Name"},"list":{"label":"Tags","searchable":false,"sortable":false}},"Category":{"edit":{"label":"Category","description":"","placeholder":"","visible":true,"editable":true,"mainField":"Name"},"list":{"label":"Category","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","Title","MainImage","createdAt"],"edit":[[{"name":"Title","size":6},{"name":"MainImage","size":6}],[{"name":"Introduction","size":12}],[{"name":"Tags","size":6}],[{"name":"ContentArea","size":12}],[{"name":"Category","size":6}]]},"uid":"api::blog-page.blog-page"}	object	\N	\N
40	plugin_meilisearch_meilisearch_listened_content_types	["api::blog-page.blog-page"]	object	\N	\N
45	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null,"ssoLockedRoles":null}}	object	\N	\N
24	plugin_content_manager_configuration_content_types::admin::role	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6},{"name":"users","size":6}],[{"name":"permissions","size":6}]]},"uid":"admin::role"}	object	\N	\N
32	plugin_content_manager_configuration_content_types::api::blog.blog	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Title","defaultSortBy":"Title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"Title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"ContentArea":{"edit":{"label":"ContentArea","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ContentArea","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","Title","createdAt","updatedAt"],"edit":[[{"name":"Title","size":6}],[{"name":"ContentArea","size":12}]]},"uid":"api::blog.blog"}	object	\N	\N
25	plugin_content_manager_configuration_content_types::admin::permission	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"actionParameters":{"edit":{"label":"actionParameters","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"actionParameters","searchable":false,"sortable":false}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"edit":[[{"name":"action","size":6}],[{"name":"actionParameters","size":12}],[{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}],[{"name":"role","size":6}]]},"uid":"admin::permission"}	object	\N	\N
35	plugin_upload_metrics	{"weeklySchedule":"58 56 18 * * 6","lastWeeklyUpdate":1720281418163}	object	\N	\N
2	plugin_content_manager_configuration_components::blocks.header-block	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Text","defaultSortBy":"Text","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Text":{"edit":{"label":"Text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Text","searchable":true,"sortable":true}},"DisplayOption":{"edit":{"label":"DisplayOption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"DisplayOption","searchable":false,"sortable":false}}},"layouts":{"list":["id","Text","DisplayOption"],"edit":[[{"name":"Text","size":6}],[{"name":"DisplayOption","size":12}]]},"uid":"blocks.header-block","isComponent":true}	object	\N	\N
5	plugin_content_manager_configuration_components::blocks.text-block	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Text":{"edit":{"label":"Text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Text","searchable":false,"sortable":false}},"DisplayOption":{"edit":{"label":"DisplayOption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"DisplayOption","searchable":false,"sortable":false}}},"layouts":{"list":["id","DisplayOption"],"edit":[[{"name":"Text","size":12}],[{"name":"DisplayOption","size":12}]]},"uid":"blocks.text-block","isComponent":true}	object	\N	\N
6	plugin_content_manager_configuration_components::blocks.tab-block	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"Tabs":{"edit":{"label":"Tabs","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Tabs","searchable":false,"sortable":false}},"DisplayOption":{"edit":{"label":"DisplayOption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"DisplayOption","searchable":false,"sortable":false}}},"layouts":{"list":["id","Tabs","DisplayOption"],"edit":[[{"name":"Tabs","size":12}],[{"name":"DisplayOption","size":12}]]},"uid":"blocks.tab-block","isComponent":true}	object	\N	\N
7	plugin_content_manager_configuration_components::components.tab	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"TabTitle","defaultSortBy":"TabTitle","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"TabTitle":{"edit":{"label":"TabTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"TabTitle","searchable":true,"sortable":true}},"ContentTitle":{"edit":{"label":"ContentTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ContentTitle","searchable":true,"sortable":true}},"Content":{"edit":{"label":"Content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Content","searchable":true,"sortable":true}},"Icon":{"edit":{"label":"Icon","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Icon","searchable":true,"sortable":true}}},"layouts":{"list":["id","TabTitle","ContentTitle","Content"],"edit":[[{"name":"TabTitle","size":6},{"name":"ContentTitle","size":6}],[{"name":"Content","size":6},{"name":"Icon","size":6}]]},"uid":"components.tab","isComponent":true}	object	\N	\N
8	plugin_content_manager_configuration_components::options.display-options	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"BlockSize":{"edit":{"label":"BlockSize","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"BlockSize","searchable":true,"sortable":true}},"BorderRadius":{"edit":{"label":"BorderRadius","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"BorderRadius","searchable":true,"sortable":true}},"Border":{"edit":{"label":"Border","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Border","searchable":true,"sortable":true}}},"layouts":{"list":["id","BlockSize","BorderRadius","Border"],"edit":[[{"name":"BlockSize","size":6},{"name":"BorderRadius","size":6}],[{"name":"Border","size":4}]]},"uid":"options.display-options","isComponent":true}	object	\N	\N
46	plugin_meilisearch_meilisearch_indexed_content_types	["api::blog-page.blog-page"]	object	\N	\N
1	strapi_content_types_schema	{"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"admin::permission","plugin":"admin","globalId":"AdminPermission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"registrationToken":{"hidden":true}}},"kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"admin::user","plugin":"admin","globalId":"AdminUser"},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"admin::role","plugin":"admin","globalId":"AdminRole"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token","connection":"default","uid":"admin::api-token","plugin":"admin","globalId":"AdminApiToken"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token-permission","connection":"default","uid":"admin::api-token-permission","plugin":"admin","globalId":"AdminApiTokenPermission"},"admin::transfer-token":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"transfer-token","connection":"default","uid":"admin::transfer-token","plugin":"admin","globalId":"AdminTransferToken"},"admin::transfer-token-permission":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"transfer-token-permission","connection":"default","uid":"admin::transfer-token-permission","plugin":"admin","globalId":"AdminTransferTokenPermission"},"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true,"searchable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"file","connection":"default","uid":"plugin::upload.file","plugin":"upload","globalId":"UploadFile"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"folder","connection":"default","uid":"plugin::upload.folder","plugin":"upload","globalId":"UploadFolder"},"plugin::content-releases.release":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_releases","info":{"singularName":"release","pluralName":"releases","displayName":"Release"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","required":true},"releasedAt":{"type":"datetime"},"scheduledAt":{"type":"datetime"},"timezone":{"type":"string"},"status":{"type":"enumeration","enum":["ready","blocked","failed","done","empty"],"required":true},"actions":{"type":"relation","relation":"oneToMany","target":"plugin::content-releases.release-action","mappedBy":"release"}},"kind":"collectionType"},"modelType":"contentType","modelName":"release","connection":"default","uid":"plugin::content-releases.release","plugin":"content-releases","globalId":"ContentReleasesRelease"},"plugin::content-releases.release-action":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"entry":{"type":"relation","relation":"morphToOne","configurable":false},"contentType":{"type":"string","required":true},"locale":{"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_release_actions","info":{"singularName":"release-action","pluralName":"release-actions","displayName":"Release Action"},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"type":{"type":"enumeration","enum":["publish","unpublish"],"required":true},"entry":{"type":"relation","relation":"morphToOne","configurable":false},"contentType":{"type":"string","required":true},"locale":{"type":"string"},"release":{"type":"relation","relation":"manyToOne","target":"plugin::content-releases.release","inversedBy":"actions"},"isEntryValid":{"type":"boolean"}},"kind":"collectionType"},"modelType":"contentType","modelName":"release-action","connection":"default","uid":"plugin::content-releases.release-action","plugin":"content-releases","globalId":"ContentReleasesReleaseAction"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"locale","connection":"default","uid":"plugin::i18n.locale","plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"plugin::users-permissions.permission","plugin":"users-permissions","globalId":"UsersPermissionsPermission"},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"plugin::users-permissions.role","plugin":"users-permissions","globalId":"UsersPermissionsRole"},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"kind":"collectionType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"plugin::users-permissions.user","plugin":"users-permissions","globalId":"UsersPermissionsUser"},"api::about-us.about-us":{"kind":"singleType","collectionName":"about_uses","info":{"singularName":"about-us","pluralName":"about-uses","displayName":"About Us","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"Title":{"pluginOptions":{"i18n":{"localized":true}},"type":"string","required":true,"unique":true},"ContentArea":{"pluginOptions":{"i18n":{"localized":true}},"type":"dynamiczone","components":["blocks.header-block","blocks.image-block","blocks.separator-block","blocks.tab-block","blocks.text-block"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::about-us.about-us"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"about_uses","info":{"singularName":"about-us","pluralName":"about-uses","displayName":"About Us","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"Title":{"pluginOptions":{"i18n":{"localized":true}},"type":"string","required":true,"unique":true},"ContentArea":{"pluginOptions":{"i18n":{"localized":true}},"type":"dynamiczone","components":["blocks.header-block","blocks.image-block","blocks.separator-block","blocks.tab-block","blocks.text-block"]}},"kind":"singleType"},"modelType":"contentType","modelName":"about-us","connection":"default","uid":"api::about-us.about-us","apiName":"about-us","globalId":"AboutUs","actions":{},"lifecycles":{}},"api::article.article":{"kind":"singleType","collectionName":"articles","info":{"singularName":"article","pluralName":"articles","displayName":"Articles","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"Title":{"pluginOptions":{"i18n":{"localized":true}},"type":"string","required":true,"unique":true},"ContentArea":{"pluginOptions":{"i18n":{"localized":true}},"type":"dynamiczone","components":["blocks.header-block","blocks.image-block","blocks.separator-block","blocks.tab-block","blocks.text-block"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::article.article"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"articles","info":{"singularName":"article","pluralName":"articles","displayName":"Articles","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"Title":{"pluginOptions":{"i18n":{"localized":true}},"type":"string","required":true,"unique":true},"ContentArea":{"pluginOptions":{"i18n":{"localized":true}},"type":"dynamiczone","components":["blocks.header-block","blocks.image-block","blocks.separator-block","blocks.tab-block","blocks.text-block"]}},"kind":"singleType"},"modelType":"contentType","modelName":"article","connection":"default","uid":"api::article.article","apiName":"article","globalId":"Article","actions":{},"lifecycles":{}},"api::article-page.article-page":{"kind":"collectionType","collectionName":"article_pages","info":{"singularName":"article-page","pluralName":"article-pages","displayName":"Article Page","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"Title":{"pluginOptions":{"i18n":{"localized":true}},"type":"string","required":true,"unique":true},"MainImage":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"]},"Introduction":{"type":"richtext","pluginOptions":{"i18n":{"localized":true}},"maxLength":250,"required":true,"minLength":50},"ContentArea":{"type":"dynamiczone","components":["blocks.text-block","blocks.header-block","blocks.image-block","blocks.separator-block","blocks.tab-block"]},"Tags":{"type":"relation","relation":"manyToMany","target":"api::tag.tag","inversedBy":"article_pages"},"Category":{"type":"relation","relation":"manyToOne","target":"api::category.category","inversedBy":"article_pages"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::article-page.article-page"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"article_pages","info":{"singularName":"article-page","pluralName":"article-pages","displayName":"Article Page","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"Title":{"pluginOptions":{"i18n":{"localized":true}},"type":"string","required":true,"unique":true},"MainImage":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"]},"Introduction":{"type":"richtext","pluginOptions":{"i18n":{"localized":true}},"maxLength":250,"required":true,"minLength":50},"ContentArea":{"type":"dynamiczone","components":["blocks.text-block","blocks.header-block","blocks.image-block","blocks.separator-block","blocks.tab-block"]},"Tags":{"type":"relation","relation":"manyToMany","target":"api::tag.tag","inversedBy":"article_pages"},"Category":{"type":"relation","relation":"manyToOne","target":"api::category.category","inversedBy":"article_pages"}},"kind":"collectionType"},"modelType":"contentType","modelName":"article-page","connection":"default","uid":"api::article-page.article-page","apiName":"article-page","globalId":"ArticlePage","actions":{},"lifecycles":{}},"api::blog.blog":{"kind":"singleType","collectionName":"blogs","info":{"singularName":"blog","pluralName":"blogs","displayName":"Blog","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"Title":{"pluginOptions":{"i18n":{"localized":true}},"type":"string","unique":true,"required":true},"ContentArea":{"pluginOptions":{"i18n":{"localized":true}},"type":"dynamiczone","components":["blocks.header-block","blocks.image-block","blocks.separator-block","blocks.tab-block","blocks.text-block"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::blog.blog"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"blogs","info":{"singularName":"blog","pluralName":"blogs","displayName":"Blog","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"Title":{"pluginOptions":{"i18n":{"localized":true}},"type":"string","unique":true,"required":true},"ContentArea":{"pluginOptions":{"i18n":{"localized":true}},"type":"dynamiczone","components":["blocks.header-block","blocks.image-block","blocks.separator-block","blocks.tab-block","blocks.text-block"]}},"kind":"singleType"},"modelType":"contentType","modelName":"blog","connection":"default","uid":"api::blog.blog","apiName":"blog","globalId":"Blog","actions":{},"lifecycles":{}},"api::blog-page.blog-page":{"kind":"collectionType","collectionName":"blog_pages","info":{"singularName":"blog-page","pluralName":"blog-pages","displayName":"Blog Page","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"Title":{"pluginOptions":{"i18n":{"localized":true}},"type":"string","required":true,"unique":true},"MainImage":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"]},"Introduction":{"type":"richtext","maxLength":250,"minLength":50,"pluginOptions":{"i18n":{"localized":true}},"required":true},"ContentArea":{"type":"dynamiczone","components":["blocks.text-block","blocks.header-block","blocks.image-block","blocks.separator-block","blocks.tab-block"]},"Tags":{"type":"relation","relation":"manyToMany","target":"api::tag.tag","inversedBy":"blog_pages"},"Category":{"type":"relation","relation":"manyToOne","target":"api::category.category","inversedBy":"blog_pages"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::blog-page.blog-page"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"blog_pages","info":{"singularName":"blog-page","pluralName":"blog-pages","displayName":"Blog Page","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"Title":{"pluginOptions":{"i18n":{"localized":true}},"type":"string","required":true,"unique":true},"MainImage":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"]},"Introduction":{"type":"richtext","maxLength":250,"minLength":50,"pluginOptions":{"i18n":{"localized":true}},"required":true},"ContentArea":{"type":"dynamiczone","components":["blocks.text-block","blocks.header-block","blocks.image-block","blocks.separator-block","blocks.tab-block"]},"Tags":{"type":"relation","relation":"manyToMany","target":"api::tag.tag","inversedBy":"blog_pages"},"Category":{"type":"relation","relation":"manyToOne","target":"api::category.category","inversedBy":"blog_pages"}},"kind":"collectionType"},"modelType":"contentType","modelName":"blog-page","connection":"default","uid":"api::blog-page.blog-page","apiName":"blog-page","globalId":"BlogPage","actions":{},"lifecycles":{}},"api::category.category":{"kind":"collectionType","collectionName":"categories","info":{"singularName":"category","pluralName":"categories","displayName":"Category","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"Name":{"pluginOptions":{"i18n":{"localized":true}},"type":"string","required":true,"unique":true},"Color":{"pluginOptions":{"i18n":{"localized":false}},"type":"string","regex":"^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$","required":true,"customField":"plugin::color-picker.color"},"blog_pages":{"type":"relation","relation":"oneToMany","target":"api::blog-page.blog-page","mappedBy":"Category"},"article_pages":{"type":"relation","relation":"oneToMany","target":"api::article-page.article-page","mappedBy":"Category"},"project_pages":{"type":"relation","relation":"oneToMany","target":"api::project-page.project-page","mappedBy":"Category"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::category.category"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"categories","info":{"singularName":"category","pluralName":"categories","displayName":"Category","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"Name":{"pluginOptions":{"i18n":{"localized":true}},"type":"string","required":true,"unique":true},"Color":{"pluginOptions":{"i18n":{"localized":false}},"type":"customField","regex":"^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$","required":true,"customField":"plugin::color-picker.color"},"blog_pages":{"type":"relation","relation":"oneToMany","target":"api::blog-page.blog-page","mappedBy":"Category"},"article_pages":{"type":"relation","relation":"oneToMany","target":"api::article-page.article-page","mappedBy":"Category"},"project_pages":{"type":"relation","relation":"oneToMany","target":"api::project-page.project-page","mappedBy":"Category"}},"kind":"collectionType"},"modelType":"contentType","modelName":"category","connection":"default","uid":"api::category.category","apiName":"category","globalId":"Category","actions":{},"lifecycles":{}},"api::homecare.homecare":{"kind":"singleType","collectionName":"homecares","info":{"singularName":"homecare","pluralName":"homecares","displayName":"Homecare","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"Title":{"pluginOptions":{"i18n":{"localized":true}},"type":"string","required":true,"unique":true},"ContentArea":{"pluginOptions":{"i18n":{"localized":true}},"type":"dynamiczone","components":["blocks.image-block","blocks.text-block","blocks.header-block","blocks.separator-block","blocks.tab-block"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::homecare.homecare"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"homecares","info":{"singularName":"homecare","pluralName":"homecares","displayName":"Homecare","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"Title":{"pluginOptions":{"i18n":{"localized":true}},"type":"string","required":true,"unique":true},"ContentArea":{"pluginOptions":{"i18n":{"localized":true}},"type":"dynamiczone","components":["blocks.image-block","blocks.text-block","blocks.header-block","blocks.separator-block","blocks.tab-block"]}},"kind":"singleType"},"modelType":"contentType","modelName":"homecare","connection":"default","uid":"api::homecare.homecare","apiName":"homecare","globalId":"Homecare","actions":{},"lifecycles":{}},"api::project.project":{"kind":"singleType","collectionName":"projects","info":{"singularName":"project","pluralName":"projects","displayName":"Project","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"Title":{"pluginOptions":{"i18n":{"localized":true}},"type":"string","required":true,"unique":true},"ContentArea":{"pluginOptions":{"i18n":{"localized":true}},"type":"dynamiczone","components":["blocks.header-block","blocks.image-block","blocks.separator-block","blocks.tab-block","blocks.text-block"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::project.project"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"projects","info":{"singularName":"project","pluralName":"projects","displayName":"Project","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"Title":{"pluginOptions":{"i18n":{"localized":true}},"type":"string","required":true,"unique":true},"ContentArea":{"pluginOptions":{"i18n":{"localized":true}},"type":"dynamiczone","components":["blocks.header-block","blocks.image-block","blocks.separator-block","blocks.tab-block","blocks.text-block"]}},"kind":"singleType"},"modelType":"contentType","modelName":"project","connection":"default","uid":"api::project.project","apiName":"project","globalId":"Project","actions":{},"lifecycles":{}},"api::project-page.project-page":{"kind":"collectionType","collectionName":"project_pages","info":{"singularName":"project-page","pluralName":"project-pages","displayName":"Project Page","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"Title":{"pluginOptions":{"i18n":{"localized":true}},"type":"string","required":true,"unique":true},"MainImage":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"]},"Introduction":{"type":"richtext","required":true,"minLength":50,"maxLength":250,"pluginOptions":{"i18n":{"localized":true}}},"ContentArea":{"type":"dynamiczone","components":["blocks.text-block","blocks.header-block","blocks.image-block","blocks.separator-block","blocks.tab-block"]},"Tags":{"type":"relation","relation":"manyToMany","target":"api::tag.tag","inversedBy":"project_pages"},"Category":{"type":"relation","relation":"manyToOne","target":"api::category.category","inversedBy":"project_pages"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::project-page.project-page"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"project_pages","info":{"singularName":"project-page","pluralName":"project-pages","displayName":"Project Page","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"Title":{"pluginOptions":{"i18n":{"localized":true}},"type":"string","required":true,"unique":true},"MainImage":{"type":"media","multiple":false,"required":false,"allowedTypes":["images"]},"Introduction":{"type":"richtext","required":true,"minLength":50,"maxLength":250,"pluginOptions":{"i18n":{"localized":true}}},"ContentArea":{"type":"dynamiczone","components":["blocks.text-block","blocks.header-block","blocks.image-block","blocks.separator-block","blocks.tab-block"]},"Tags":{"type":"relation","relation":"manyToMany","target":"api::tag.tag","inversedBy":"project_pages"},"Category":{"type":"relation","relation":"manyToOne","target":"api::category.category","inversedBy":"project_pages"}},"kind":"collectionType"},"modelType":"contentType","modelName":"project-page","connection":"default","uid":"api::project-page.project-page","apiName":"project-page","globalId":"ProjectPage","actions":{},"lifecycles":{}},"api::renovation.renovation":{"kind":"singleType","collectionName":"renovations","info":{"singularName":"renovation","pluralName":"renovations","displayName":"Renovation","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"Title":{"pluginOptions":{"i18n":{"localized":true}},"type":"string","unique":true,"required":true},"ContentArea":{"pluginOptions":{"i18n":{"localized":true}},"type":"dynamiczone","components":["blocks.image-block","blocks.text-block","blocks.header-block","blocks.separator-block","blocks.tab-block"]},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::renovation.renovation"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"renovations","info":{"singularName":"renovation","pluralName":"renovations","displayName":"Renovation","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"Title":{"pluginOptions":{"i18n":{"localized":true}},"type":"string","unique":true,"required":true},"ContentArea":{"pluginOptions":{"i18n":{"localized":true}},"type":"dynamiczone","components":["blocks.image-block","blocks.text-block","blocks.header-block","blocks.separator-block","blocks.tab-block"]}},"kind":"singleType"},"modelType":"contentType","modelName":"renovation","connection":"default","uid":"api::renovation.renovation","apiName":"renovation","globalId":"Renovation","actions":{},"lifecycles":{}},"api::tag.tag":{"kind":"collectionType","collectionName":"tags","info":{"singularName":"tag","pluralName":"tags","displayName":"Tag","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"Name":{"pluginOptions":{"i18n":{"localized":true}},"type":"string","required":true,"unique":true},"blog_pages":{"type":"relation","relation":"manyToMany","target":"api::blog-page.blog-page","mappedBy":"Tags"},"project_pages":{"type":"relation","relation":"manyToMany","target":"api::project-page.project-page","mappedBy":"Tags"},"article_pages":{"type":"relation","relation":"manyToMany","target":"api::article-page.article-page","mappedBy":"Tags"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"localizations":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"relation","relation":"oneToMany","target":"api::tag.tag"},"locale":{"writable":true,"private":false,"configurable":false,"visible":false,"type":"string"}},"__schema__":{"collectionName":"tags","info":{"singularName":"tag","pluralName":"tags","displayName":"Tag","description":""},"options":{"draftAndPublish":true},"pluginOptions":{"i18n":{"localized":true}},"attributes":{"Name":{"pluginOptions":{"i18n":{"localized":true}},"type":"string","required":true,"unique":true},"blog_pages":{"type":"relation","relation":"manyToMany","target":"api::blog-page.blog-page","mappedBy":"Tags"},"project_pages":{"type":"relation","relation":"manyToMany","target":"api::project-page.project-page","mappedBy":"Tags"},"article_pages":{"type":"relation","relation":"manyToMany","target":"api::article-page.article-page","mappedBy":"Tags"}},"kind":"collectionType"},"modelType":"contentType","modelName":"tag","connection":"default","uid":"api::tag.tag","apiName":"tag","globalId":"Tag","actions":{},"lifecycles":{}}}	object	\N	\N
19	plugin_content_manager_configuration_content_types::api::project.project	{"settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"Title","defaultSortBy":"Title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"Title":{"edit":{"label":"Title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"Title","searchable":true,"sortable":true}},"ContentArea":{"edit":{"label":"ContentArea","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ContentArea","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","Title","createdAt","updatedAt"],"edit":[[{"name":"Title","size":6}],[{"name":"ContentArea","size":12}]]},"uid":"api::project.project"}	object	\N	\N
\.


--
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
16	{"tables":[{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action_parameters","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users","indexes":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_tokens","indexes":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions","indexes":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_releases","indexes":[{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_releases_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_releases_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"released_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"scheduled_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"timezone","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_release_actions","indexes":[{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_release_actions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_release_actions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"target_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"target_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_entry_valid","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_roles","indexes":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users","indexes":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"about_uses","indexes":[{"name":"about_uses_created_by_id_fk","columns":["created_by_id"]},{"name":"about_uses_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"about_uses_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"about_uses_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"articles","indexes":[{"name":"articles_created_by_id_fk","columns":["created_by_id"]},{"name":"articles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"articles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"articles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"article_pages","indexes":[{"name":"article_pages_created_by_id_fk","columns":["created_by_id"]},{"name":"article_pages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"article_pages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"article_pages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"introduction","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"blogs","indexes":[{"name":"blogs_created_by_id_fk","columns":["created_by_id"]},{"name":"blogs_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"blogs_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"blogs_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"blog_pages","indexes":[{"name":"blog_pages_created_by_id_fk","columns":["created_by_id"]},{"name":"blog_pages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"blog_pages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"blog_pages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"introduction","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"categories","indexes":[{"name":"categories_created_by_id_fk","columns":["created_by_id"]},{"name":"categories_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"categories_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"categories_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"color","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"homecares","indexes":[{"name":"homecares_created_by_id_fk","columns":["created_by_id"]},{"name":"homecares_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"homecares_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"homecares_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"projects","indexes":[{"name":"projects_created_by_id_fk","columns":["created_by_id"]},{"name":"projects_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"projects_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"projects_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"project_pages","indexes":[{"name":"project_pages_created_by_id_fk","columns":["created_by_id"]},{"name":"project_pages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"project_pages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"project_pages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"introduction","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"renovations","indexes":[{"name":"renovations_created_by_id_fk","columns":["created_by_id"]},{"name":"renovations_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"renovations_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"renovations_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"tags","indexes":[{"name":"tags_created_by_id_fk","columns":["created_by_id"]},{"name":"tags_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"tags_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"tags_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"locale","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_blocks_header_blocks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_blocks_image_blocks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_blocks_separator_blocks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_blocks_tab_blocks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_blocks_text_blocks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"text","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_components_tabs","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"tab_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"icon","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_options_display_options","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"block_size","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"border_radius","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"border","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions_role_links","indexes":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"]},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"]},{"name":"admin_permissions_role_links_unique","columns":["permission_id","role_id"],"type":"unique"},{"name":"admin_permissions_role_links_order_inv_fk","columns":["permission_order"]}],"foreignKeys":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_links","indexes":[{"name":"admin_users_roles_links_fk","columns":["user_id"]},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"]},{"name":"admin_users_roles_links_unique","columns":["user_id","role_id"],"type":"unique"},{"name":"admin_users_roles_links_order_fk","columns":["role_order"]},{"name":"admin_users_roles_links_order_inv_fk","columns":["user_order"]}],"foreignKeys":[{"name":"admin_users_roles_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_links","indexes":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"]},{"name":"strapi_api_token_permissions_token_links_unique","columns":["api_token_permission_id","api_token_id"],"type":"unique"},{"name":"strapi_api_token_permissions_token_links_order_inv_fk","columns":["api_token_permission_order"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions_token_links","indexes":[{"name":"strapi_transfer_token_permissions_token_links_fk","columns":["transfer_token_permission_id"]},{"name":"strapi_transfer_token_permissions_token_links_inv_fk","columns":["transfer_token_id"]},{"name":"strapi_transfer_token_permissions_token_links_unique","columns":["transfer_token_permission_id","transfer_token_id"],"type":"unique"},{"name":"strapi_transfer_token_permissions_token_links_order_inv_fk","columns":["transfer_token_permission_order"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_token_links_fk","columns":["transfer_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_token_permissions","onDelete":"CASCADE"},{"name":"strapi_transfer_token_permissions_token_links_inv_fk","columns":["transfer_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"transfer_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_related_morphs","indexes":[{"name":"files_related_morphs_fk","columns":["file_id"]},{"name":"files_related_morphs_order_index","columns":["order"]},{"name":"files_related_morphs_id_column_index","columns":["related_id"]}],"foreignKeys":[{"name":"files_related_morphs_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_links","indexes":[{"name":"files_folder_links_fk","columns":["file_id"]},{"name":"files_folder_links_inv_fk","columns":["folder_id"]},{"name":"files_folder_links_unique","columns":["file_id","folder_id"],"type":"unique"},{"name":"files_folder_links_order_inv_fk","columns":["file_order"]}],"foreignKeys":[{"name":"files_folder_links_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_links_inv_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"file_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_links","indexes":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"]},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"]},{"name":"upload_folders_parent_links_unique","columns":["folder_id","inv_folder_id"],"type":"unique"},{"name":"upload_folders_parent_links_order_inv_fk","columns":["folder_order"]}],"foreignKeys":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_release_actions_release_links","indexes":[{"name":"strapi_release_actions_release_links_fk","columns":["release_action_id"]},{"name":"strapi_release_actions_release_links_inv_fk","columns":["release_id"]},{"name":"strapi_release_actions_release_links_unique","columns":["release_action_id","release_id"],"type":"unique"},{"name":"strapi_release_actions_release_links_order_inv_fk","columns":["release_action_order"]}],"foreignKeys":[{"name":"strapi_release_actions_release_links_fk","columns":["release_action_id"],"referencedColumns":["id"],"referencedTable":"strapi_release_actions","onDelete":"CASCADE"},{"name":"strapi_release_actions_release_links_inv_fk","columns":["release_id"],"referencedColumns":["id"],"referencedTable":"strapi_releases","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"release_action_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"release_action_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_links","indexes":[{"name":"up_permissions_role_links_fk","columns":["permission_id"]},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"]},{"name":"up_permissions_role_links_unique","columns":["permission_id","role_id"],"type":"unique"},{"name":"up_permissions_role_links_order_inv_fk","columns":["permission_order"]}],"foreignKeys":[{"name":"up_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_links","indexes":[{"name":"up_users_role_links_fk","columns":["user_id"]},{"name":"up_users_role_links_inv_fk","columns":["role_id"]},{"name":"up_users_role_links_unique","columns":["user_id","role_id"],"type":"unique"},{"name":"up_users_role_links_order_inv_fk","columns":["user_order"]}],"foreignKeys":[{"name":"up_users_role_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"about_uses_components","indexes":[{"name":"about_uses_field_index","columns":["field"]},{"name":"about_uses_component_type_index","columns":["component_type"]},{"name":"about_uses_entity_fk","columns":["entity_id"]},{"name":"about_uses_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"about_uses_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"about_uses","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"about_uses_localizations_links","indexes":[{"name":"about_uses_localizations_links_fk","columns":["about_us_id"]},{"name":"about_uses_localizations_links_inv_fk","columns":["inv_about_us_id"]},{"name":"about_uses_localizations_links_unique","columns":["about_us_id","inv_about_us_id"],"type":"unique"},{"name":"about_uses_localizations_links_order_fk","columns":["about_us_order"]}],"foreignKeys":[{"name":"about_uses_localizations_links_fk","columns":["about_us_id"],"referencedColumns":["id"],"referencedTable":"about_uses","onDelete":"CASCADE"},{"name":"about_uses_localizations_links_inv_fk","columns":["inv_about_us_id"],"referencedColumns":["id"],"referencedTable":"about_uses","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"about_us_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_about_us_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"about_us_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"articles_components","indexes":[{"name":"articles_field_index","columns":["field"]},{"name":"articles_component_type_index","columns":["component_type"]},{"name":"articles_entity_fk","columns":["entity_id"]},{"name":"articles_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"articles_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"articles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"articles_localizations_links","indexes":[{"name":"articles_localizations_links_fk","columns":["article_id"]},{"name":"articles_localizations_links_inv_fk","columns":["inv_article_id"]},{"name":"articles_localizations_links_unique","columns":["article_id","inv_article_id"],"type":"unique"},{"name":"articles_localizations_links_order_fk","columns":["article_order"]}],"foreignKeys":[{"name":"articles_localizations_links_fk","columns":["article_id"],"referencedColumns":["id"],"referencedTable":"articles","onDelete":"CASCADE"},{"name":"articles_localizations_links_inv_fk","columns":["inv_article_id"],"referencedColumns":["id"],"referencedTable":"articles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"article_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_article_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"article_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"article_pages_components","indexes":[{"name":"article_pages_field_index","columns":["field"]},{"name":"article_pages_component_type_index","columns":["component_type"]},{"name":"article_pages_entity_fk","columns":["entity_id"]},{"name":"article_pages_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"article_pages_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"article_pages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"article_pages_tags_links","indexes":[{"name":"article_pages_tags_links_fk","columns":["article_page_id"]},{"name":"article_pages_tags_links_inv_fk","columns":["tag_id"]},{"name":"article_pages_tags_links_unique","columns":["article_page_id","tag_id"],"type":"unique"},{"name":"article_pages_tags_links_order_fk","columns":["tag_order"]},{"name":"article_pages_tags_links_order_inv_fk","columns":["article_page_order"]}],"foreignKeys":[{"name":"article_pages_tags_links_fk","columns":["article_page_id"],"referencedColumns":["id"],"referencedTable":"article_pages","onDelete":"CASCADE"},{"name":"article_pages_tags_links_inv_fk","columns":["tag_id"],"referencedColumns":["id"],"referencedTable":"tags","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"article_page_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"tag_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"tag_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"article_page_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"article_pages_category_links","indexes":[{"name":"article_pages_category_links_fk","columns":["article_page_id"]},{"name":"article_pages_category_links_inv_fk","columns":["category_id"]},{"name":"article_pages_category_links_unique","columns":["article_page_id","category_id"],"type":"unique"},{"name":"article_pages_category_links_order_inv_fk","columns":["article_page_order"]}],"foreignKeys":[{"name":"article_pages_category_links_fk","columns":["article_page_id"],"referencedColumns":["id"],"referencedTable":"article_pages","onDelete":"CASCADE"},{"name":"article_pages_category_links_inv_fk","columns":["category_id"],"referencedColumns":["id"],"referencedTable":"categories","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"article_page_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"category_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"article_page_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"article_pages_localizations_links","indexes":[{"name":"article_pages_localizations_links_fk","columns":["article_page_id"]},{"name":"article_pages_localizations_links_inv_fk","columns":["inv_article_page_id"]},{"name":"article_pages_localizations_links_unique","columns":["article_page_id","inv_article_page_id"],"type":"unique"},{"name":"article_pages_localizations_links_order_fk","columns":["article_page_order"]}],"foreignKeys":[{"name":"article_pages_localizations_links_fk","columns":["article_page_id"],"referencedColumns":["id"],"referencedTable":"article_pages","onDelete":"CASCADE"},{"name":"article_pages_localizations_links_inv_fk","columns":["inv_article_page_id"],"referencedColumns":["id"],"referencedTable":"article_pages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"article_page_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_article_page_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"article_page_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"blogs_components","indexes":[{"name":"blogs_field_index","columns":["field"]},{"name":"blogs_component_type_index","columns":["component_type"]},{"name":"blogs_entity_fk","columns":["entity_id"]},{"name":"blogs_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"blogs_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"blogs","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"blogs_localizations_links","indexes":[{"name":"blogs_localizations_links_fk","columns":["blog_id"]},{"name":"blogs_localizations_links_inv_fk","columns":["inv_blog_id"]},{"name":"blogs_localizations_links_unique","columns":["blog_id","inv_blog_id"],"type":"unique"},{"name":"blogs_localizations_links_order_fk","columns":["blog_order"]}],"foreignKeys":[{"name":"blogs_localizations_links_fk","columns":["blog_id"],"referencedColumns":["id"],"referencedTable":"blogs","onDelete":"CASCADE"},{"name":"blogs_localizations_links_inv_fk","columns":["inv_blog_id"],"referencedColumns":["id"],"referencedTable":"blogs","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"blog_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_blog_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"blog_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"blog_pages_components","indexes":[{"name":"blog_pages_field_index","columns":["field"]},{"name":"blog_pages_component_type_index","columns":["component_type"]},{"name":"blog_pages_entity_fk","columns":["entity_id"]},{"name":"blog_pages_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"blog_pages_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"blog_pages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"blog_pages_tags_links","indexes":[{"name":"blog_pages_tags_links_fk","columns":["blog_page_id"]},{"name":"blog_pages_tags_links_inv_fk","columns":["tag_id"]},{"name":"blog_pages_tags_links_unique","columns":["blog_page_id","tag_id"],"type":"unique"},{"name":"blog_pages_tags_links_order_fk","columns":["tag_order"]},{"name":"blog_pages_tags_links_order_inv_fk","columns":["blog_page_order"]}],"foreignKeys":[{"name":"blog_pages_tags_links_fk","columns":["blog_page_id"],"referencedColumns":["id"],"referencedTable":"blog_pages","onDelete":"CASCADE"},{"name":"blog_pages_tags_links_inv_fk","columns":["tag_id"],"referencedColumns":["id"],"referencedTable":"tags","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"blog_page_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"tag_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"tag_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"blog_page_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"blog_pages_category_links","indexes":[{"name":"blog_pages_category_links_fk","columns":["blog_page_id"]},{"name":"blog_pages_category_links_inv_fk","columns":["category_id"]},{"name":"blog_pages_category_links_unique","columns":["blog_page_id","category_id"],"type":"unique"},{"name":"blog_pages_category_links_order_inv_fk","columns":["blog_page_order"]}],"foreignKeys":[{"name":"blog_pages_category_links_fk","columns":["blog_page_id"],"referencedColumns":["id"],"referencedTable":"blog_pages","onDelete":"CASCADE"},{"name":"blog_pages_category_links_inv_fk","columns":["category_id"],"referencedColumns":["id"],"referencedTable":"categories","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"blog_page_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"category_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"blog_page_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"blog_pages_localizations_links","indexes":[{"name":"blog_pages_localizations_links_fk","columns":["blog_page_id"]},{"name":"blog_pages_localizations_links_inv_fk","columns":["inv_blog_page_id"]},{"name":"blog_pages_localizations_links_unique","columns":["blog_page_id","inv_blog_page_id"],"type":"unique"},{"name":"blog_pages_localizations_links_order_fk","columns":["blog_page_order"]}],"foreignKeys":[{"name":"blog_pages_localizations_links_fk","columns":["blog_page_id"],"referencedColumns":["id"],"referencedTable":"blog_pages","onDelete":"CASCADE"},{"name":"blog_pages_localizations_links_inv_fk","columns":["inv_blog_page_id"],"referencedColumns":["id"],"referencedTable":"blog_pages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"blog_page_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_blog_page_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"blog_page_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"categories_localizations_links","indexes":[{"name":"categories_localizations_links_fk","columns":["category_id"]},{"name":"categories_localizations_links_inv_fk","columns":["inv_category_id"]},{"name":"categories_localizations_links_unique","columns":["category_id","inv_category_id"],"type":"unique"},{"name":"categories_localizations_links_order_fk","columns":["category_order"]}],"foreignKeys":[{"name":"categories_localizations_links_fk","columns":["category_id"],"referencedColumns":["id"],"referencedTable":"categories","onDelete":"CASCADE"},{"name":"categories_localizations_links_inv_fk","columns":["inv_category_id"],"referencedColumns":["id"],"referencedTable":"categories","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"category_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_category_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"category_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"homecares_components","indexes":[{"name":"homecares_field_index","columns":["field"]},{"name":"homecares_component_type_index","columns":["component_type"]},{"name":"homecares_entity_fk","columns":["entity_id"]},{"name":"homecares_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"homecares_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"homecares","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"homecares_localizations_links","indexes":[{"name":"homecares_localizations_links_fk","columns":["homecare_id"]},{"name":"homecares_localizations_links_inv_fk","columns":["inv_homecare_id"]},{"name":"homecares_localizations_links_unique","columns":["homecare_id","inv_homecare_id"],"type":"unique"},{"name":"homecares_localizations_links_order_fk","columns":["homecare_order"]}],"foreignKeys":[{"name":"homecares_localizations_links_fk","columns":["homecare_id"],"referencedColumns":["id"],"referencedTable":"homecares","onDelete":"CASCADE"},{"name":"homecares_localizations_links_inv_fk","columns":["inv_homecare_id"],"referencedColumns":["id"],"referencedTable":"homecares","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"homecare_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_homecare_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"homecare_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"projects_components","indexes":[{"name":"projects_field_index","columns":["field"]},{"name":"projects_component_type_index","columns":["component_type"]},{"name":"projects_entity_fk","columns":["entity_id"]},{"name":"projects_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"projects_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"projects","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"projects_localizations_links","indexes":[{"name":"projects_localizations_links_fk","columns":["project_id"]},{"name":"projects_localizations_links_inv_fk","columns":["inv_project_id"]},{"name":"projects_localizations_links_unique","columns":["project_id","inv_project_id"],"type":"unique"},{"name":"projects_localizations_links_order_fk","columns":["project_order"]}],"foreignKeys":[{"name":"projects_localizations_links_fk","columns":["project_id"],"referencedColumns":["id"],"referencedTable":"projects","onDelete":"CASCADE"},{"name":"projects_localizations_links_inv_fk","columns":["inv_project_id"],"referencedColumns":["id"],"referencedTable":"projects","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"project_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_project_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"project_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"project_pages_components","indexes":[{"name":"project_pages_field_index","columns":["field"]},{"name":"project_pages_component_type_index","columns":["component_type"]},{"name":"project_pages_entity_fk","columns":["entity_id"]},{"name":"project_pages_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"project_pages_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"project_pages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"project_pages_tags_links","indexes":[{"name":"project_pages_tags_links_fk","columns":["project_page_id"]},{"name":"project_pages_tags_links_inv_fk","columns":["tag_id"]},{"name":"project_pages_tags_links_unique","columns":["project_page_id","tag_id"],"type":"unique"},{"name":"project_pages_tags_links_order_fk","columns":["tag_order"]},{"name":"project_pages_tags_links_order_inv_fk","columns":["project_page_order"]}],"foreignKeys":[{"name":"project_pages_tags_links_fk","columns":["project_page_id"],"referencedColumns":["id"],"referencedTable":"project_pages","onDelete":"CASCADE"},{"name":"project_pages_tags_links_inv_fk","columns":["tag_id"],"referencedColumns":["id"],"referencedTable":"tags","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"project_page_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"tag_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"tag_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"project_page_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"project_pages_category_links","indexes":[{"name":"project_pages_category_links_fk","columns":["project_page_id"]},{"name":"project_pages_category_links_inv_fk","columns":["category_id"]},{"name":"project_pages_category_links_unique","columns":["project_page_id","category_id"],"type":"unique"},{"name":"project_pages_category_links_order_inv_fk","columns":["project_page_order"]}],"foreignKeys":[{"name":"project_pages_category_links_fk","columns":["project_page_id"],"referencedColumns":["id"],"referencedTable":"project_pages","onDelete":"CASCADE"},{"name":"project_pages_category_links_inv_fk","columns":["category_id"],"referencedColumns":["id"],"referencedTable":"categories","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"project_page_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"category_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"project_page_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"project_pages_localizations_links","indexes":[{"name":"project_pages_localizations_links_fk","columns":["project_page_id"]},{"name":"project_pages_localizations_links_inv_fk","columns":["inv_project_page_id"]},{"name":"project_pages_localizations_links_unique","columns":["project_page_id","inv_project_page_id"],"type":"unique"},{"name":"project_pages_localizations_links_order_fk","columns":["project_page_order"]}],"foreignKeys":[{"name":"project_pages_localizations_links_fk","columns":["project_page_id"],"referencedColumns":["id"],"referencedTable":"project_pages","onDelete":"CASCADE"},{"name":"project_pages_localizations_links_inv_fk","columns":["inv_project_page_id"],"referencedColumns":["id"],"referencedTable":"project_pages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"project_page_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_project_page_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"project_page_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"renovations_components","indexes":[{"name":"renovations_field_index","columns":["field"]},{"name":"renovations_component_type_index","columns":["component_type"]},{"name":"renovations_entity_fk","columns":["entity_id"]},{"name":"renovations_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"renovations_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"renovations","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"renovations_localizations_links","indexes":[{"name":"renovations_localizations_links_fk","columns":["renovation_id"]},{"name":"renovations_localizations_links_inv_fk","columns":["inv_renovation_id"]},{"name":"renovations_localizations_links_unique","columns":["renovation_id","inv_renovation_id"],"type":"unique"},{"name":"renovations_localizations_links_order_fk","columns":["renovation_order"]}],"foreignKeys":[{"name":"renovations_localizations_links_fk","columns":["renovation_id"],"referencedColumns":["id"],"referencedTable":"renovations","onDelete":"CASCADE"},{"name":"renovations_localizations_links_inv_fk","columns":["inv_renovation_id"],"referencedColumns":["id"],"referencedTable":"renovations","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"renovation_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_renovation_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"renovation_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"tags_localizations_links","indexes":[{"name":"tags_localizations_links_fk","columns":["tag_id"]},{"name":"tags_localizations_links_inv_fk","columns":["inv_tag_id"]},{"name":"tags_localizations_links_unique","columns":["tag_id","inv_tag_id"],"type":"unique"},{"name":"tags_localizations_links_order_fk","columns":["tag_order"]}],"foreignKeys":[{"name":"tags_localizations_links_fk","columns":["tag_id"],"referencedColumns":["id"],"referencedTable":"tags","onDelete":"CASCADE"},{"name":"tags_localizations_links_inv_fk","columns":["inv_tag_id"],"referencedColumns":["id"],"referencedTable":"tags","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"tag_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_tag_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"tag_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_blocks_header_blocks_components","indexes":[{"name":"components_blocks_header_blocks_field_index","columns":["field"]},{"name":"components_blocks_header_blocks_component_type_index","columns":["component_type"]},{"name":"components_blocks_header_blocks_entity_fk","columns":["entity_id"]},{"name":"components_blocks_header_blocks_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_blocks_header_blocks_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_blocks_header_blocks","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_blocks_image_blocks_components","indexes":[{"name":"components_blocks_image_blocks_field_index","columns":["field"]},{"name":"components_blocks_image_blocks_component_type_index","columns":["component_type"]},{"name":"components_blocks_image_blocks_entity_fk","columns":["entity_id"]},{"name":"components_blocks_image_blocks_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_blocks_image_blocks_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_blocks_image_blocks","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_blocks_separator_blocks_components","indexes":[{"name":"components_blocks_separator_blocks_field_index","columns":["field"]},{"name":"components_blocks_separator_blocks_component_type_index","columns":["component_type"]},{"name":"components_blocks_separator_blocks_entity_fk","columns":["entity_id"]},{"name":"components_blocks_separator_blocks_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_blocks_separator_blocks_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_blocks_separator_blocks","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_blocks_tab_blocks_components","indexes":[{"name":"components_blocks_tab_blocks_field_index","columns":["field"]},{"name":"components_blocks_tab_blocks_component_type_index","columns":["component_type"]},{"name":"components_blocks_tab_blocks_entity_fk","columns":["entity_id"]},{"name":"components_blocks_tab_blocks_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_blocks_tab_blocks_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_blocks_tab_blocks","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_blocks_text_blocks_components","indexes":[{"name":"components_blocks_text_blocks_field_index","columns":["field"]},{"name":"components_blocks_text_blocks_component_type_index","columns":["component_type"]},{"name":"components_blocks_text_blocks_entity_fk","columns":["entity_id"]},{"name":"components_blocks_text_blocks_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_blocks_text_blocks_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_blocks_text_blocks","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2024-07-06 23:40:05.552	e43da77e6c8749b54a41151a145b425e
\.


--
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_migrations (id, name, "time") FROM stdin;
\.


--
-- Data for Name: strapi_release_actions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_release_actions (id, type, target_id, target_type, content_type, locale, is_entry_valid, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_release_actions_release_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_release_actions_release_links (id, release_action_id, release_id, release_action_order) FROM stdin;
\.


--
-- Data for Name: strapi_releases; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_releases (id, name, released_at, scheduled_at, timezone, status, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_token_permissions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_transfer_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_token_permissions_token_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_transfer_token_permissions_token_links (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_order) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_tokens; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_transfer_tokens (id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.tags (id, name, created_at, updated_at, published_at, created_by_id, updated_by_id, locale) FROM stdin;
1	Bathroom	2024-07-06 20:45:28.268	2024-07-06 20:45:31.308	2024-07-06 20:45:31.158	1	1	en
2	Extension	2024-07-06 20:45:52.937	2024-07-06 20:49:30.902	2024-07-06 20:49:30.751	1	1	en
\.


--
-- Data for Name: tags_localizations_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.tags_localizations_links (id, tag_id, inv_tag_id, tag_order) FROM stdin;
\.


--
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::users-permissions.user.me	2024-07-06 18:52:01.286	2024-07-06 18:52:01.286	\N	\N
9	plugin::users-permissions.auth.callback	2024-07-06 18:52:01.482	2024-07-06 18:52:01.482	\N	\N
2	plugin::users-permissions.auth.changePassword	2024-07-06 18:52:01.286	2024-07-06 18:52:01.286	\N	\N
3	plugin::users-permissions.auth.connect	2024-07-06 18:52:01.482	2024-07-06 18:52:01.482	\N	\N
4	plugin::users-permissions.auth.register	2024-07-06 18:52:01.482	2024-07-06 18:52:01.482	\N	\N
6	plugin::users-permissions.auth.forgotPassword	2024-07-06 18:52:01.482	2024-07-06 18:52:01.482	\N	\N
7	plugin::users-permissions.auth.resetPassword	2024-07-06 18:52:01.482	2024-07-06 18:52:01.482	\N	\N
8	plugin::users-permissions.auth.emailConfirmation	2024-07-06 18:52:01.482	2024-07-06 18:52:01.482	\N	\N
5	plugin::users-permissions.auth.sendEmailConfirmation	2024-07-06 18:52:01.482	2024-07-06 18:52:01.482	\N	\N
10	api::about-us.about-us.find	2024-07-06 20:16:02.774	2024-07-06 20:16:02.774	\N	\N
11	api::article.article.find	2024-07-06 20:16:02.774	2024-07-06 20:16:02.774	\N	\N
12	api::blog-page.blog-page.find	2024-07-06 20:16:02.774	2024-07-06 20:16:02.774	\N	\N
13	api::blog-page.blog-page.findOne	2024-07-06 20:16:02.774	2024-07-06 20:16:02.774	\N	\N
14	api::article-page.article-page.findOne	2024-07-06 20:16:02.774	2024-07-06 20:16:02.774	\N	\N
15	api::blog.blog.find	2024-07-06 20:16:02.774	2024-07-06 20:16:02.774	\N	\N
16	api::homecare.homecare.find	2024-07-06 20:16:02.774	2024-07-06 20:16:02.774	\N	\N
17	api::renovation.renovation.find	2024-07-06 20:16:02.774	2024-07-06 20:16:02.774	\N	\N
18	api::project-page.project-page.findOne	2024-07-06 20:16:02.774	2024-07-06 20:16:02.774	\N	\N
19	api::project.project.find	2024-07-06 20:16:02.774	2024-07-06 20:16:02.774	\N	\N
20	api::project-page.project-page.find	2024-07-06 20:16:02.774	2024-07-06 20:16:02.774	\N	\N
21	api::article-page.article-page.find	2024-07-06 20:41:14.665	2024-07-06 20:41:14.665	\N	\N
23	api::tag.tag.find	2024-07-06 22:26:43.464	2024-07-06 22:26:43.464	\N	\N
22	api::tag.tag.findOne	2024-07-06 22:26:43.464	2024-07-06 22:26:43.464	\N	\N
24	api::category.category.find	2024-07-06 23:07:14.898	2024-07-06 23:07:14.898	\N	\N
25	api::category.category.findOne	2024-07-06 23:07:14.898	2024-07-06 23:07:14.898	\N	\N
\.


--
-- Data for Name: up_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
1	2	1	1
3	3	2	1
2	1	1	1
7	9	2	1
4	4	2	1
6	5	2	1
8	6	2	1
5	7	2	1
9	8	2	1
11	10	2	2
13	11	2	2
12	13	2	2
10	12	2	2
14	14	2	2
15	15	2	2
17	18	2	2
16	16	2	2
18	17	2	2
19	19	2	3
20	20	2	3
21	21	2	4
22	22	2	5
23	23	2	5
24	24	2	6
25	25	2	6
\.


--
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Authenticated	Default role given to authenticated user.	authenticated	2024-07-06 18:52:01.081	2024-07-06 18:52:01.081	\N	\N
2	Public	Default role given to unauthenticated user.	public	2024-07-06 18:52:01.181	2024-07-06 23:07:14.748	\N	\N
\.


--
-- Data for Name: up_users; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: up_users_role_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.up_users_role_links (id, user_id, role_id, user_order) FROM stdin;
\.


--
-- Data for Name: upload_folders; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.upload_folders (id, name, path_id, path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: upload_folders_parent_links; Type: TABLE DATA; Schema: public; Owner: strapi
--

COPY public.upload_folders_parent_links (id, folder_id, inv_folder_id, folder_order) FROM stdin;
\.


--
-- Name: about_uses_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.about_uses_components_id_seq', 1, false);


--
-- Name: about_uses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.about_uses_id_seq', 1, true);


--
-- Name: about_uses_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.about_uses_localizations_links_id_seq', 1, false);


--
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 273, true);


--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_permissions_role_links_id_seq', 273, true);


--
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);


--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.admin_users_roles_links_id_seq', 1, true);


--
-- Name: article_pages_category_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.article_pages_category_links_id_seq', 1, false);


--
-- Name: article_pages_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.article_pages_components_id_seq', 4, true);


--
-- Name: article_pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.article_pages_id_seq', 4, true);


--
-- Name: article_pages_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.article_pages_localizations_links_id_seq', 1, false);


--
-- Name: article_pages_tags_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.article_pages_tags_links_id_seq', 1, false);


--
-- Name: articles_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.articles_components_id_seq', 1, false);


--
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.articles_id_seq', 1, true);


--
-- Name: articles_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.articles_localizations_links_id_seq', 1, false);


--
-- Name: blog_pages_category_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.blog_pages_category_links_id_seq', 4, true);


--
-- Name: blog_pages_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.blog_pages_components_id_seq', 19, true);


--
-- Name: blog_pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.blog_pages_id_seq', 4, true);


--
-- Name: blog_pages_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.blog_pages_localizations_links_id_seq', 1, false);


--
-- Name: blog_pages_tags_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.blog_pages_tags_links_id_seq', 2, true);


--
-- Name: blogs_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.blogs_components_id_seq', 1, true);


--
-- Name: blogs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.blogs_id_seq', 1, true);


--
-- Name: blogs_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.blogs_localizations_links_id_seq', 1, false);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.categories_id_seq', 5, true);


--
-- Name: categories_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.categories_localizations_links_id_seq', 1, false);


--
-- Name: components_blocks_header_blocks_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_blocks_header_blocks_components_id_seq', 1, true);


--
-- Name: components_blocks_header_blocks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_blocks_header_blocks_id_seq', 1, true);


--
-- Name: components_blocks_image_blocks_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_blocks_image_blocks_components_id_seq', 1, false);


--
-- Name: components_blocks_image_blocks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_blocks_image_blocks_id_seq', 1, false);


--
-- Name: components_blocks_separator_blocks_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_blocks_separator_blocks_components_id_seq', 1, false);


--
-- Name: components_blocks_separator_blocks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_blocks_separator_blocks_id_seq', 1, false);


--
-- Name: components_blocks_tab_blocks_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_blocks_tab_blocks_components_id_seq', 1, false);


--
-- Name: components_blocks_tab_blocks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_blocks_tab_blocks_id_seq', 1, false);


--
-- Name: components_blocks_text_blocks_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_blocks_text_blocks_components_id_seq', 25, true);


--
-- Name: components_blocks_text_blocks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_blocks_text_blocks_id_seq', 9, true);


--
-- Name: components_components_tabs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_components_tabs_id_seq', 1, false);


--
-- Name: components_options_display_options_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.components_options_display_options_id_seq', 10, true);


--
-- Name: files_folder_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.files_folder_links_id_seq', 1, false);


--
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.files_id_seq', 5, true);


--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.files_related_morphs_id_seq', 14, true);


--
-- Name: homecares_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.homecares_components_id_seq', 1, false);


--
-- Name: homecares_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.homecares_id_seq', 1, true);


--
-- Name: homecares_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.homecares_localizations_links_id_seq', 1, false);


--
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);


--
-- Name: project_pages_category_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.project_pages_category_links_id_seq', 1, false);


--
-- Name: project_pages_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.project_pages_components_id_seq', 2, true);


--
-- Name: project_pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.project_pages_id_seq', 1, true);


--
-- Name: project_pages_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.project_pages_localizations_links_id_seq', 1, false);


--
-- Name: project_pages_tags_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.project_pages_tags_links_id_seq', 2, true);


--
-- Name: projects_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.projects_components_id_seq', 1, false);


--
-- Name: projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.projects_id_seq', 1, true);


--
-- Name: projects_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.projects_localizations_links_id_seq', 1, false);


--
-- Name: renovations_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.renovations_components_id_seq', 1, false);


--
-- Name: renovations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.renovations_id_seq', 1, true);


--
-- Name: renovations_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.renovations_localizations_links_id_seq', 1, false);


--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);


--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_links_id_seq', 1, false);


--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, false);


--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 48, true);


--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 16, true);


--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);


--
-- Name: strapi_release_actions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_release_actions_id_seq', 1, false);


--
-- Name: strapi_release_actions_release_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_release_actions_release_links_id_seq', 1, false);


--
-- Name: strapi_releases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_releases_id_seq', 1, false);


--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);


--
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_links_id_seq', 1, false);


--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.tags_id_seq', 2, true);


--
-- Name: tags_localizations_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.tags_localizations_links_id_seq', 1, false);


--
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_permissions_id_seq', 25, true);


--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_permissions_role_links_id_seq', 25, true);


--
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);


--
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);


--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.up_users_role_links_id_seq', 1, false);


--
-- Name: upload_folders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);


--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi
--

SELECT pg_catalog.setval('public.upload_folders_parent_links_id_seq', 1, false);


--
-- Name: about_uses_components about_uses_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.about_uses_components
    ADD CONSTRAINT about_uses_components_pkey PRIMARY KEY (id);


--
-- Name: about_uses_localizations_links about_uses_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.about_uses_localizations_links
    ADD CONSTRAINT about_uses_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: about_uses_localizations_links about_uses_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.about_uses_localizations_links
    ADD CONSTRAINT about_uses_localizations_links_unique UNIQUE (about_us_id, inv_about_us_id);


--
-- Name: about_uses about_uses_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.about_uses
    ADD CONSTRAINT about_uses_pkey PRIMARY KEY (id);


--
-- Name: about_uses_components about_uses_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.about_uses_components
    ADD CONSTRAINT about_uses_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_links admin_permissions_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_links admin_permissions_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_unique UNIQUE (permission_id, role_id);


--
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_links admin_users_roles_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_links admin_users_roles_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_unique UNIQUE (user_id, role_id);


--
-- Name: article_pages_category_links article_pages_category_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_pages_category_links
    ADD CONSTRAINT article_pages_category_links_pkey PRIMARY KEY (id);


--
-- Name: article_pages_category_links article_pages_category_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_pages_category_links
    ADD CONSTRAINT article_pages_category_links_unique UNIQUE (article_page_id, category_id);


--
-- Name: article_pages_components article_pages_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_pages_components
    ADD CONSTRAINT article_pages_components_pkey PRIMARY KEY (id);


--
-- Name: article_pages_localizations_links article_pages_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_pages_localizations_links
    ADD CONSTRAINT article_pages_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: article_pages_localizations_links article_pages_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_pages_localizations_links
    ADD CONSTRAINT article_pages_localizations_links_unique UNIQUE (article_page_id, inv_article_page_id);


--
-- Name: article_pages article_pages_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_pages
    ADD CONSTRAINT article_pages_pkey PRIMARY KEY (id);


--
-- Name: article_pages_tags_links article_pages_tags_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_pages_tags_links
    ADD CONSTRAINT article_pages_tags_links_pkey PRIMARY KEY (id);


--
-- Name: article_pages_tags_links article_pages_tags_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_pages_tags_links
    ADD CONSTRAINT article_pages_tags_links_unique UNIQUE (article_page_id, tag_id);


--
-- Name: article_pages_components article_pages_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_pages_components
    ADD CONSTRAINT article_pages_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: articles_components articles_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles_components
    ADD CONSTRAINT articles_components_pkey PRIMARY KEY (id);


--
-- Name: articles_localizations_links articles_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles_localizations_links
    ADD CONSTRAINT articles_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: articles_localizations_links articles_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles_localizations_links
    ADD CONSTRAINT articles_localizations_links_unique UNIQUE (article_id, inv_article_id);


--
-- Name: articles articles_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- Name: articles_components articles_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles_components
    ADD CONSTRAINT articles_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: blog_pages_category_links blog_pages_category_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.blog_pages_category_links
    ADD CONSTRAINT blog_pages_category_links_pkey PRIMARY KEY (id);


--
-- Name: blog_pages_category_links blog_pages_category_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.blog_pages_category_links
    ADD CONSTRAINT blog_pages_category_links_unique UNIQUE (blog_page_id, category_id);


--
-- Name: blog_pages_components blog_pages_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.blog_pages_components
    ADD CONSTRAINT blog_pages_components_pkey PRIMARY KEY (id);


--
-- Name: blog_pages_localizations_links blog_pages_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.blog_pages_localizations_links
    ADD CONSTRAINT blog_pages_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: blog_pages_localizations_links blog_pages_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.blog_pages_localizations_links
    ADD CONSTRAINT blog_pages_localizations_links_unique UNIQUE (blog_page_id, inv_blog_page_id);


--
-- Name: blog_pages blog_pages_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.blog_pages
    ADD CONSTRAINT blog_pages_pkey PRIMARY KEY (id);


--
-- Name: blog_pages_tags_links blog_pages_tags_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.blog_pages_tags_links
    ADD CONSTRAINT blog_pages_tags_links_pkey PRIMARY KEY (id);


--
-- Name: blog_pages_tags_links blog_pages_tags_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.blog_pages_tags_links
    ADD CONSTRAINT blog_pages_tags_links_unique UNIQUE (blog_page_id, tag_id);


--
-- Name: blog_pages_components blog_pages_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.blog_pages_components
    ADD CONSTRAINT blog_pages_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: blogs_components blogs_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.blogs_components
    ADD CONSTRAINT blogs_components_pkey PRIMARY KEY (id);


--
-- Name: blogs_localizations_links blogs_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.blogs_localizations_links
    ADD CONSTRAINT blogs_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: blogs_localizations_links blogs_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.blogs_localizations_links
    ADD CONSTRAINT blogs_localizations_links_unique UNIQUE (blog_id, inv_blog_id);


--
-- Name: blogs blogs_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.blogs
    ADD CONSTRAINT blogs_pkey PRIMARY KEY (id);


--
-- Name: blogs_components blogs_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.blogs_components
    ADD CONSTRAINT blogs_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: categories_localizations_links categories_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.categories_localizations_links
    ADD CONSTRAINT categories_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: categories_localizations_links categories_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.categories_localizations_links
    ADD CONSTRAINT categories_localizations_links_unique UNIQUE (category_id, inv_category_id);


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: components_blocks_header_blocks_components components_blocks_header_blocks_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_blocks_header_blocks_components
    ADD CONSTRAINT components_blocks_header_blocks_components_pkey PRIMARY KEY (id);


--
-- Name: components_blocks_header_blocks components_blocks_header_blocks_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_blocks_header_blocks
    ADD CONSTRAINT components_blocks_header_blocks_pkey PRIMARY KEY (id);


--
-- Name: components_blocks_header_blocks_components components_blocks_header_blocks_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_blocks_header_blocks_components
    ADD CONSTRAINT components_blocks_header_blocks_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_blocks_image_blocks_components components_blocks_image_blocks_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_blocks_image_blocks_components
    ADD CONSTRAINT components_blocks_image_blocks_components_pkey PRIMARY KEY (id);


--
-- Name: components_blocks_image_blocks components_blocks_image_blocks_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_blocks_image_blocks
    ADD CONSTRAINT components_blocks_image_blocks_pkey PRIMARY KEY (id);


--
-- Name: components_blocks_image_blocks_components components_blocks_image_blocks_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_blocks_image_blocks_components
    ADD CONSTRAINT components_blocks_image_blocks_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_blocks_separator_blocks_components components_blocks_separator_blocks_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_blocks_separator_blocks_components
    ADD CONSTRAINT components_blocks_separator_blocks_components_pkey PRIMARY KEY (id);


--
-- Name: components_blocks_separator_blocks components_blocks_separator_blocks_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_blocks_separator_blocks
    ADD CONSTRAINT components_blocks_separator_blocks_pkey PRIMARY KEY (id);


--
-- Name: components_blocks_separator_blocks_components components_blocks_separator_blocks_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_blocks_separator_blocks_components
    ADD CONSTRAINT components_blocks_separator_blocks_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_blocks_tab_blocks_components components_blocks_tab_blocks_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_blocks_tab_blocks_components
    ADD CONSTRAINT components_blocks_tab_blocks_components_pkey PRIMARY KEY (id);


--
-- Name: components_blocks_tab_blocks components_blocks_tab_blocks_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_blocks_tab_blocks
    ADD CONSTRAINT components_blocks_tab_blocks_pkey PRIMARY KEY (id);


--
-- Name: components_blocks_tab_blocks_components components_blocks_tab_blocks_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_blocks_tab_blocks_components
    ADD CONSTRAINT components_blocks_tab_blocks_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_blocks_text_blocks_components components_blocks_text_blocks_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_blocks_text_blocks_components
    ADD CONSTRAINT components_blocks_text_blocks_components_pkey PRIMARY KEY (id);


--
-- Name: components_blocks_text_blocks components_blocks_text_blocks_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_blocks_text_blocks
    ADD CONSTRAINT components_blocks_text_blocks_pkey PRIMARY KEY (id);


--
-- Name: components_blocks_text_blocks_components components_blocks_text_blocks_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_blocks_text_blocks_components
    ADD CONSTRAINT components_blocks_text_blocks_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_components_tabs components_components_tabs_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_components_tabs
    ADD CONSTRAINT components_components_tabs_pkey PRIMARY KEY (id);


--
-- Name: components_options_display_options components_options_display_options_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_options_display_options
    ADD CONSTRAINT components_options_display_options_pkey PRIMARY KEY (id);


--
-- Name: files_folder_links files_folder_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_pkey PRIMARY KEY (id);


--
-- Name: files_folder_links files_folder_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_unique UNIQUE (file_id, folder_id);


--
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- Name: files_related_morphs files_related_morphs_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_pkey PRIMARY KEY (id);


--
-- Name: homecares_components homecares_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.homecares_components
    ADD CONSTRAINT homecares_components_pkey PRIMARY KEY (id);


--
-- Name: homecares_localizations_links homecares_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.homecares_localizations_links
    ADD CONSTRAINT homecares_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: homecares_localizations_links homecares_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.homecares_localizations_links
    ADD CONSTRAINT homecares_localizations_links_unique UNIQUE (homecare_id, inv_homecare_id);


--
-- Name: homecares homecares_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.homecares
    ADD CONSTRAINT homecares_pkey PRIMARY KEY (id);


--
-- Name: homecares_components homecares_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.homecares_components
    ADD CONSTRAINT homecares_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- Name: project_pages_category_links project_pages_category_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_pages_category_links
    ADD CONSTRAINT project_pages_category_links_pkey PRIMARY KEY (id);


--
-- Name: project_pages_category_links project_pages_category_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_pages_category_links
    ADD CONSTRAINT project_pages_category_links_unique UNIQUE (project_page_id, category_id);


--
-- Name: project_pages_components project_pages_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_pages_components
    ADD CONSTRAINT project_pages_components_pkey PRIMARY KEY (id);


--
-- Name: project_pages_localizations_links project_pages_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_pages_localizations_links
    ADD CONSTRAINT project_pages_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: project_pages_localizations_links project_pages_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_pages_localizations_links
    ADD CONSTRAINT project_pages_localizations_links_unique UNIQUE (project_page_id, inv_project_page_id);


--
-- Name: project_pages project_pages_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_pages
    ADD CONSTRAINT project_pages_pkey PRIMARY KEY (id);


--
-- Name: project_pages_tags_links project_pages_tags_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_pages_tags_links
    ADD CONSTRAINT project_pages_tags_links_pkey PRIMARY KEY (id);


--
-- Name: project_pages_tags_links project_pages_tags_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_pages_tags_links
    ADD CONSTRAINT project_pages_tags_links_unique UNIQUE (project_page_id, tag_id);


--
-- Name: project_pages_components project_pages_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_pages_components
    ADD CONSTRAINT project_pages_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: projects_components projects_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.projects_components
    ADD CONSTRAINT projects_components_pkey PRIMARY KEY (id);


--
-- Name: projects_localizations_links projects_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.projects_localizations_links
    ADD CONSTRAINT projects_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: projects_localizations_links projects_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.projects_localizations_links
    ADD CONSTRAINT projects_localizations_links_unique UNIQUE (project_id, inv_project_id);


--
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);


--
-- Name: projects_components projects_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.projects_components
    ADD CONSTRAINT projects_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: renovations_components renovations_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.renovations_components
    ADD CONSTRAINT renovations_components_pkey PRIMARY KEY (id);


--
-- Name: renovations_localizations_links renovations_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.renovations_localizations_links
    ADD CONSTRAINT renovations_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: renovations_localizations_links renovations_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.renovations_localizations_links
    ADD CONSTRAINT renovations_localizations_links_unique UNIQUE (renovation_id, inv_renovation_id);


--
-- Name: renovations renovations_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.renovations
    ADD CONSTRAINT renovations_pkey PRIMARY KEY (id);


--
-- Name: renovations_components renovations_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.renovations_components
    ADD CONSTRAINT renovations_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_unique UNIQUE (api_token_permission_id, api_token_id);


--
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions strapi_release_actions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions_release_links strapi_release_actions_release_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_pkey PRIMARY KEY (id);


--
-- Name: strapi_release_actions_release_links strapi_release_actions_release_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_unique UNIQUE (release_action_id, release_id);


--
-- Name: strapi_releases strapi_releases_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_unique UNIQUE (transfer_token_permission_id, transfer_token_id);


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: tags_localizations_links tags_localizations_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.tags_localizations_links
    ADD CONSTRAINT tags_localizations_links_pkey PRIMARY KEY (id);


--
-- Name: tags_localizations_links tags_localizations_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.tags_localizations_links
    ADD CONSTRAINT tags_localizations_links_unique UNIQUE (tag_id, inv_tag_id);


--
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_links up_permissions_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_links up_permissions_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_unique UNIQUE (permission_id, role_id);


--
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_links up_users_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_links up_users_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_unique UNIQUE (user_id, role_id);


--
-- Name: upload_folders_parent_links upload_folders_parent_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_pkey PRIMARY KEY (id);


--
-- Name: upload_folders_parent_links upload_folders_parent_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_unique UNIQUE (folder_id, inv_folder_id);


--
-- Name: upload_folders upload_folders_path_id_index; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);


--
-- Name: upload_folders upload_folders_path_index; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);


--
-- Name: upload_folders upload_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);


--
-- Name: about_uses_component_type_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX about_uses_component_type_index ON public.about_uses_components USING btree (component_type);


--
-- Name: about_uses_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX about_uses_created_by_id_fk ON public.about_uses USING btree (created_by_id);


--
-- Name: about_uses_entity_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX about_uses_entity_fk ON public.about_uses_components USING btree (entity_id);


--
-- Name: about_uses_field_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX about_uses_field_index ON public.about_uses_components USING btree (field);


--
-- Name: about_uses_localizations_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX about_uses_localizations_links_fk ON public.about_uses_localizations_links USING btree (about_us_id);


--
-- Name: about_uses_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX about_uses_localizations_links_inv_fk ON public.about_uses_localizations_links USING btree (inv_about_us_id);


--
-- Name: about_uses_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX about_uses_localizations_links_order_fk ON public.about_uses_localizations_links USING btree (about_us_order);


--
-- Name: about_uses_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX about_uses_updated_by_id_fk ON public.about_uses USING btree (updated_by_id);


--
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);


--
-- Name: admin_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);


--
-- Name: admin_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);


--
-- Name: admin_permissions_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_role_links_order_inv_fk ON public.admin_permissions_role_links USING btree (permission_order);


--
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);


--
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);


--
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);


--
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);


--
-- Name: admin_users_roles_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);


--
-- Name: admin_users_roles_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);


--
-- Name: admin_users_roles_links_order_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_roles_links_order_fk ON public.admin_users_roles_links USING btree (role_order);


--
-- Name: admin_users_roles_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_roles_links_order_inv_fk ON public.admin_users_roles_links USING btree (user_order);


--
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);


--
-- Name: article_pages_category_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX article_pages_category_links_fk ON public.article_pages_category_links USING btree (article_page_id);


--
-- Name: article_pages_category_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX article_pages_category_links_inv_fk ON public.article_pages_category_links USING btree (category_id);


--
-- Name: article_pages_category_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX article_pages_category_links_order_inv_fk ON public.article_pages_category_links USING btree (article_page_order);


--
-- Name: article_pages_component_type_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX article_pages_component_type_index ON public.article_pages_components USING btree (component_type);


--
-- Name: article_pages_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX article_pages_created_by_id_fk ON public.article_pages USING btree (created_by_id);


--
-- Name: article_pages_entity_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX article_pages_entity_fk ON public.article_pages_components USING btree (entity_id);


--
-- Name: article_pages_field_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX article_pages_field_index ON public.article_pages_components USING btree (field);


--
-- Name: article_pages_localizations_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX article_pages_localizations_links_fk ON public.article_pages_localizations_links USING btree (article_page_id);


--
-- Name: article_pages_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX article_pages_localizations_links_inv_fk ON public.article_pages_localizations_links USING btree (inv_article_page_id);


--
-- Name: article_pages_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX article_pages_localizations_links_order_fk ON public.article_pages_localizations_links USING btree (article_page_order);


--
-- Name: article_pages_tags_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX article_pages_tags_links_fk ON public.article_pages_tags_links USING btree (article_page_id);


--
-- Name: article_pages_tags_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX article_pages_tags_links_inv_fk ON public.article_pages_tags_links USING btree (tag_id);


--
-- Name: article_pages_tags_links_order_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX article_pages_tags_links_order_fk ON public.article_pages_tags_links USING btree (tag_order);


--
-- Name: article_pages_tags_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX article_pages_tags_links_order_inv_fk ON public.article_pages_tags_links USING btree (article_page_order);


--
-- Name: article_pages_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX article_pages_updated_by_id_fk ON public.article_pages USING btree (updated_by_id);


--
-- Name: articles_component_type_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX articles_component_type_index ON public.articles_components USING btree (component_type);


--
-- Name: articles_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX articles_created_by_id_fk ON public.articles USING btree (created_by_id);


--
-- Name: articles_entity_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX articles_entity_fk ON public.articles_components USING btree (entity_id);


--
-- Name: articles_field_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX articles_field_index ON public.articles_components USING btree (field);


--
-- Name: articles_localizations_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX articles_localizations_links_fk ON public.articles_localizations_links USING btree (article_id);


--
-- Name: articles_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX articles_localizations_links_inv_fk ON public.articles_localizations_links USING btree (inv_article_id);


--
-- Name: articles_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX articles_localizations_links_order_fk ON public.articles_localizations_links USING btree (article_order);


--
-- Name: articles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX articles_updated_by_id_fk ON public.articles USING btree (updated_by_id);


--
-- Name: blog_pages_category_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX blog_pages_category_links_fk ON public.blog_pages_category_links USING btree (blog_page_id);


--
-- Name: blog_pages_category_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX blog_pages_category_links_inv_fk ON public.blog_pages_category_links USING btree (category_id);


--
-- Name: blog_pages_category_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX blog_pages_category_links_order_inv_fk ON public.blog_pages_category_links USING btree (blog_page_order);


--
-- Name: blog_pages_component_type_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX blog_pages_component_type_index ON public.blog_pages_components USING btree (component_type);


--
-- Name: blog_pages_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX blog_pages_created_by_id_fk ON public.blog_pages USING btree (created_by_id);


--
-- Name: blog_pages_entity_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX blog_pages_entity_fk ON public.blog_pages_components USING btree (entity_id);


--
-- Name: blog_pages_field_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX blog_pages_field_index ON public.blog_pages_components USING btree (field);


--
-- Name: blog_pages_localizations_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX blog_pages_localizations_links_fk ON public.blog_pages_localizations_links USING btree (blog_page_id);


--
-- Name: blog_pages_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX blog_pages_localizations_links_inv_fk ON public.blog_pages_localizations_links USING btree (inv_blog_page_id);


--
-- Name: blog_pages_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX blog_pages_localizations_links_order_fk ON public.blog_pages_localizations_links USING btree (blog_page_order);


--
-- Name: blog_pages_tags_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX blog_pages_tags_links_fk ON public.blog_pages_tags_links USING btree (blog_page_id);


--
-- Name: blog_pages_tags_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX blog_pages_tags_links_inv_fk ON public.blog_pages_tags_links USING btree (tag_id);


--
-- Name: blog_pages_tags_links_order_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX blog_pages_tags_links_order_fk ON public.blog_pages_tags_links USING btree (tag_order);


--
-- Name: blog_pages_tags_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX blog_pages_tags_links_order_inv_fk ON public.blog_pages_tags_links USING btree (blog_page_order);


--
-- Name: blog_pages_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX blog_pages_updated_by_id_fk ON public.blog_pages USING btree (updated_by_id);


--
-- Name: blogs_component_type_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX blogs_component_type_index ON public.blogs_components USING btree (component_type);


--
-- Name: blogs_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX blogs_created_by_id_fk ON public.blogs USING btree (created_by_id);


--
-- Name: blogs_entity_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX blogs_entity_fk ON public.blogs_components USING btree (entity_id);


--
-- Name: blogs_field_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX blogs_field_index ON public.blogs_components USING btree (field);


--
-- Name: blogs_localizations_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX blogs_localizations_links_fk ON public.blogs_localizations_links USING btree (blog_id);


--
-- Name: blogs_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX blogs_localizations_links_inv_fk ON public.blogs_localizations_links USING btree (inv_blog_id);


--
-- Name: blogs_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX blogs_localizations_links_order_fk ON public.blogs_localizations_links USING btree (blog_order);


--
-- Name: blogs_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX blogs_updated_by_id_fk ON public.blogs USING btree (updated_by_id);


--
-- Name: categories_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX categories_created_by_id_fk ON public.categories USING btree (created_by_id);


--
-- Name: categories_localizations_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX categories_localizations_links_fk ON public.categories_localizations_links USING btree (category_id);


--
-- Name: categories_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX categories_localizations_links_inv_fk ON public.categories_localizations_links USING btree (inv_category_id);


--
-- Name: categories_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX categories_localizations_links_order_fk ON public.categories_localizations_links USING btree (category_order);


--
-- Name: categories_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX categories_updated_by_id_fk ON public.categories USING btree (updated_by_id);


--
-- Name: components_blocks_header_blocks_component_type_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX components_blocks_header_blocks_component_type_index ON public.components_blocks_header_blocks_components USING btree (component_type);


--
-- Name: components_blocks_header_blocks_entity_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX components_blocks_header_blocks_entity_fk ON public.components_blocks_header_blocks_components USING btree (entity_id);


--
-- Name: components_blocks_header_blocks_field_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX components_blocks_header_blocks_field_index ON public.components_blocks_header_blocks_components USING btree (field);


--
-- Name: components_blocks_image_blocks_component_type_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX components_blocks_image_blocks_component_type_index ON public.components_blocks_image_blocks_components USING btree (component_type);


--
-- Name: components_blocks_image_blocks_entity_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX components_blocks_image_blocks_entity_fk ON public.components_blocks_image_blocks_components USING btree (entity_id);


--
-- Name: components_blocks_image_blocks_field_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX components_blocks_image_blocks_field_index ON public.components_blocks_image_blocks_components USING btree (field);


--
-- Name: components_blocks_separator_blocks_component_type_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX components_blocks_separator_blocks_component_type_index ON public.components_blocks_separator_blocks_components USING btree (component_type);


--
-- Name: components_blocks_separator_blocks_entity_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX components_blocks_separator_blocks_entity_fk ON public.components_blocks_separator_blocks_components USING btree (entity_id);


--
-- Name: components_blocks_separator_blocks_field_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX components_blocks_separator_blocks_field_index ON public.components_blocks_separator_blocks_components USING btree (field);


--
-- Name: components_blocks_tab_blocks_component_type_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX components_blocks_tab_blocks_component_type_index ON public.components_blocks_tab_blocks_components USING btree (component_type);


--
-- Name: components_blocks_tab_blocks_entity_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX components_blocks_tab_blocks_entity_fk ON public.components_blocks_tab_blocks_components USING btree (entity_id);


--
-- Name: components_blocks_tab_blocks_field_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX components_blocks_tab_blocks_field_index ON public.components_blocks_tab_blocks_components USING btree (field);


--
-- Name: components_blocks_text_blocks_component_type_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX components_blocks_text_blocks_component_type_index ON public.components_blocks_text_blocks_components USING btree (component_type);


--
-- Name: components_blocks_text_blocks_entity_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX components_blocks_text_blocks_entity_fk ON public.components_blocks_text_blocks_components USING btree (entity_id);


--
-- Name: components_blocks_text_blocks_field_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX components_blocks_text_blocks_field_index ON public.components_blocks_text_blocks_components USING btree (field);


--
-- Name: files_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);


--
-- Name: files_folder_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_folder_links_fk ON public.files_folder_links USING btree (file_id);


--
-- Name: files_folder_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_folder_links_inv_fk ON public.files_folder_links USING btree (folder_id);


--
-- Name: files_folder_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_folder_links_order_inv_fk ON public.files_folder_links USING btree (file_order);


--
-- Name: files_related_morphs_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);


--
-- Name: files_related_morphs_id_column_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_related_morphs_id_column_index ON public.files_related_morphs USING btree (related_id);


--
-- Name: files_related_morphs_order_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_related_morphs_order_index ON public.files_related_morphs USING btree ("order");


--
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);


--
-- Name: homecares_component_type_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX homecares_component_type_index ON public.homecares_components USING btree (component_type);


--
-- Name: homecares_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX homecares_created_by_id_fk ON public.homecares USING btree (created_by_id);


--
-- Name: homecares_entity_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX homecares_entity_fk ON public.homecares_components USING btree (entity_id);


--
-- Name: homecares_field_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX homecares_field_index ON public.homecares_components USING btree (field);


--
-- Name: homecares_localizations_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX homecares_localizations_links_fk ON public.homecares_localizations_links USING btree (homecare_id);


--
-- Name: homecares_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX homecares_localizations_links_inv_fk ON public.homecares_localizations_links USING btree (inv_homecare_id);


--
-- Name: homecares_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX homecares_localizations_links_order_fk ON public.homecares_localizations_links USING btree (homecare_order);


--
-- Name: homecares_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX homecares_updated_by_id_fk ON public.homecares USING btree (updated_by_id);


--
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);


--
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);


--
-- Name: project_pages_category_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX project_pages_category_links_fk ON public.project_pages_category_links USING btree (project_page_id);


--
-- Name: project_pages_category_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX project_pages_category_links_inv_fk ON public.project_pages_category_links USING btree (category_id);


--
-- Name: project_pages_category_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX project_pages_category_links_order_inv_fk ON public.project_pages_category_links USING btree (project_page_order);


--
-- Name: project_pages_component_type_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX project_pages_component_type_index ON public.project_pages_components USING btree (component_type);


--
-- Name: project_pages_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX project_pages_created_by_id_fk ON public.project_pages USING btree (created_by_id);


--
-- Name: project_pages_entity_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX project_pages_entity_fk ON public.project_pages_components USING btree (entity_id);


--
-- Name: project_pages_field_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX project_pages_field_index ON public.project_pages_components USING btree (field);


--
-- Name: project_pages_localizations_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX project_pages_localizations_links_fk ON public.project_pages_localizations_links USING btree (project_page_id);


--
-- Name: project_pages_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX project_pages_localizations_links_inv_fk ON public.project_pages_localizations_links USING btree (inv_project_page_id);


--
-- Name: project_pages_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX project_pages_localizations_links_order_fk ON public.project_pages_localizations_links USING btree (project_page_order);


--
-- Name: project_pages_tags_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX project_pages_tags_links_fk ON public.project_pages_tags_links USING btree (project_page_id);


--
-- Name: project_pages_tags_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX project_pages_tags_links_inv_fk ON public.project_pages_tags_links USING btree (tag_id);


--
-- Name: project_pages_tags_links_order_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX project_pages_tags_links_order_fk ON public.project_pages_tags_links USING btree (tag_order);


--
-- Name: project_pages_tags_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX project_pages_tags_links_order_inv_fk ON public.project_pages_tags_links USING btree (project_page_order);


--
-- Name: project_pages_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX project_pages_updated_by_id_fk ON public.project_pages USING btree (updated_by_id);


--
-- Name: projects_component_type_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX projects_component_type_index ON public.projects_components USING btree (component_type);


--
-- Name: projects_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX projects_created_by_id_fk ON public.projects USING btree (created_by_id);


--
-- Name: projects_entity_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX projects_entity_fk ON public.projects_components USING btree (entity_id);


--
-- Name: projects_field_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX projects_field_index ON public.projects_components USING btree (field);


--
-- Name: projects_localizations_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX projects_localizations_links_fk ON public.projects_localizations_links USING btree (project_id);


--
-- Name: projects_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX projects_localizations_links_inv_fk ON public.projects_localizations_links USING btree (inv_project_id);


--
-- Name: projects_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX projects_localizations_links_order_fk ON public.projects_localizations_links USING btree (project_order);


--
-- Name: projects_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX projects_updated_by_id_fk ON public.projects USING btree (updated_by_id);


--
-- Name: renovations_component_type_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX renovations_component_type_index ON public.renovations_components USING btree (component_type);


--
-- Name: renovations_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX renovations_created_by_id_fk ON public.renovations USING btree (created_by_id);


--
-- Name: renovations_entity_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX renovations_entity_fk ON public.renovations_components USING btree (entity_id);


--
-- Name: renovations_field_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX renovations_field_index ON public.renovations_components USING btree (field);


--
-- Name: renovations_localizations_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX renovations_localizations_links_fk ON public.renovations_localizations_links USING btree (renovation_id);


--
-- Name: renovations_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX renovations_localizations_links_inv_fk ON public.renovations_localizations_links USING btree (inv_renovation_id);


--
-- Name: renovations_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX renovations_localizations_links_order_fk ON public.renovations_localizations_links USING btree (renovation_order);


--
-- Name: renovations_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX renovations_updated_by_id_fk ON public.renovations USING btree (updated_by_id);


--
-- Name: strapi_api_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);


--
-- Name: strapi_api_token_permissions_token_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_token_links_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_id);


--
-- Name: strapi_api_token_permissions_token_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_token_links_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_id);


--
-- Name: strapi_api_token_permissions_token_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_token_links_order_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_order);


--
-- Name: strapi_api_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);


--
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);


--
-- Name: strapi_release_actions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_release_actions_created_by_id_fk ON public.strapi_release_actions USING btree (created_by_id);


--
-- Name: strapi_release_actions_release_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_release_actions_release_links_fk ON public.strapi_release_actions_release_links USING btree (release_action_id);


--
-- Name: strapi_release_actions_release_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_release_actions_release_links_inv_fk ON public.strapi_release_actions_release_links USING btree (release_id);


--
-- Name: strapi_release_actions_release_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_release_actions_release_links_order_inv_fk ON public.strapi_release_actions_release_links USING btree (release_action_order);


--
-- Name: strapi_release_actions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_release_actions_updated_by_id_fk ON public.strapi_release_actions USING btree (updated_by_id);


--
-- Name: strapi_releases_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_releases_created_by_id_fk ON public.strapi_releases USING btree (created_by_id);


--
-- Name: strapi_releases_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_releases_updated_by_id_fk ON public.strapi_releases USING btree (updated_by_id);


--
-- Name: strapi_transfer_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);


--
-- Name: strapi_transfer_token_permissions_token_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_token_links_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_id);


--
-- Name: strapi_transfer_token_permissions_token_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_token_links_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_id);


--
-- Name: strapi_transfer_token_permissions_token_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_token_links_order_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_order);


--
-- Name: strapi_transfer_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_transfer_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);


--
-- Name: strapi_transfer_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);


--
-- Name: tags_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX tags_created_by_id_fk ON public.tags USING btree (created_by_id);


--
-- Name: tags_localizations_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX tags_localizations_links_fk ON public.tags_localizations_links USING btree (tag_id);


--
-- Name: tags_localizations_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX tags_localizations_links_inv_fk ON public.tags_localizations_links USING btree (inv_tag_id);


--
-- Name: tags_localizations_links_order_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX tags_localizations_links_order_fk ON public.tags_localizations_links USING btree (tag_order);


--
-- Name: tags_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX tags_updated_by_id_fk ON public.tags USING btree (updated_by_id);


--
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);


--
-- Name: up_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);


--
-- Name: up_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);


--
-- Name: up_permissions_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_role_links_order_inv_fk ON public.up_permissions_role_links USING btree (permission_order);


--
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);


--
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);


--
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);


--
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);


--
-- Name: up_users_role_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);


--
-- Name: up_users_role_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);


--
-- Name: up_users_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_role_links_order_inv_fk ON public.up_users_role_links USING btree (user_order);


--
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);


--
-- Name: upload_files_created_at_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);


--
-- Name: upload_files_ext_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);


--
-- Name: upload_files_folder_path_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);


--
-- Name: upload_files_name_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_name_index ON public.files USING btree (name);


--
-- Name: upload_files_size_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_size_index ON public.files USING btree (size);


--
-- Name: upload_files_updated_at_index; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);


--
-- Name: upload_folders_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);


--
-- Name: upload_folders_parent_links_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_parent_links_fk ON public.upload_folders_parent_links USING btree (folder_id);


--
-- Name: upload_folders_parent_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_parent_links_inv_fk ON public.upload_folders_parent_links USING btree (inv_folder_id);


--
-- Name: upload_folders_parent_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_parent_links_order_inv_fk ON public.upload_folders_parent_links USING btree (folder_order);


--
-- Name: upload_folders_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi
--

CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);


--
-- Name: about_uses about_uses_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.about_uses
    ADD CONSTRAINT about_uses_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: about_uses_components about_uses_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.about_uses_components
    ADD CONSTRAINT about_uses_entity_fk FOREIGN KEY (entity_id) REFERENCES public.about_uses(id) ON DELETE CASCADE;


--
-- Name: about_uses_localizations_links about_uses_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.about_uses_localizations_links
    ADD CONSTRAINT about_uses_localizations_links_fk FOREIGN KEY (about_us_id) REFERENCES public.about_uses(id) ON DELETE CASCADE;


--
-- Name: about_uses_localizations_links about_uses_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.about_uses_localizations_links
    ADD CONSTRAINT about_uses_localizations_links_inv_fk FOREIGN KEY (inv_about_us_id) REFERENCES public.about_uses(id) ON DELETE CASCADE;


--
-- Name: about_uses about_uses_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.about_uses
    ADD CONSTRAINT about_uses_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users_roles_links admin_users_roles_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- Name: admin_users_roles_links admin_users_roles_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: article_pages_category_links article_pages_category_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_pages_category_links
    ADD CONSTRAINT article_pages_category_links_fk FOREIGN KEY (article_page_id) REFERENCES public.article_pages(id) ON DELETE CASCADE;


--
-- Name: article_pages_category_links article_pages_category_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_pages_category_links
    ADD CONSTRAINT article_pages_category_links_inv_fk FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: article_pages article_pages_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_pages
    ADD CONSTRAINT article_pages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: article_pages_components article_pages_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_pages_components
    ADD CONSTRAINT article_pages_entity_fk FOREIGN KEY (entity_id) REFERENCES public.article_pages(id) ON DELETE CASCADE;


--
-- Name: article_pages_localizations_links article_pages_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_pages_localizations_links
    ADD CONSTRAINT article_pages_localizations_links_fk FOREIGN KEY (article_page_id) REFERENCES public.article_pages(id) ON DELETE CASCADE;


--
-- Name: article_pages_localizations_links article_pages_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_pages_localizations_links
    ADD CONSTRAINT article_pages_localizations_links_inv_fk FOREIGN KEY (inv_article_page_id) REFERENCES public.article_pages(id) ON DELETE CASCADE;


--
-- Name: article_pages_tags_links article_pages_tags_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_pages_tags_links
    ADD CONSTRAINT article_pages_tags_links_fk FOREIGN KEY (article_page_id) REFERENCES public.article_pages(id) ON DELETE CASCADE;


--
-- Name: article_pages_tags_links article_pages_tags_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_pages_tags_links
    ADD CONSTRAINT article_pages_tags_links_inv_fk FOREIGN KEY (tag_id) REFERENCES public.tags(id) ON DELETE CASCADE;


--
-- Name: article_pages article_pages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.article_pages
    ADD CONSTRAINT article_pages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: articles articles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: articles_components articles_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles_components
    ADD CONSTRAINT articles_entity_fk FOREIGN KEY (entity_id) REFERENCES public.articles(id) ON DELETE CASCADE;


--
-- Name: articles_localizations_links articles_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles_localizations_links
    ADD CONSTRAINT articles_localizations_links_fk FOREIGN KEY (article_id) REFERENCES public.articles(id) ON DELETE CASCADE;


--
-- Name: articles_localizations_links articles_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles_localizations_links
    ADD CONSTRAINT articles_localizations_links_inv_fk FOREIGN KEY (inv_article_id) REFERENCES public.articles(id) ON DELETE CASCADE;


--
-- Name: articles articles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: blog_pages_category_links blog_pages_category_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.blog_pages_category_links
    ADD CONSTRAINT blog_pages_category_links_fk FOREIGN KEY (blog_page_id) REFERENCES public.blog_pages(id) ON DELETE CASCADE;


--
-- Name: blog_pages_category_links blog_pages_category_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.blog_pages_category_links
    ADD CONSTRAINT blog_pages_category_links_inv_fk FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: blog_pages blog_pages_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.blog_pages
    ADD CONSTRAINT blog_pages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: blog_pages_components blog_pages_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.blog_pages_components
    ADD CONSTRAINT blog_pages_entity_fk FOREIGN KEY (entity_id) REFERENCES public.blog_pages(id) ON DELETE CASCADE;


--
-- Name: blog_pages_localizations_links blog_pages_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.blog_pages_localizations_links
    ADD CONSTRAINT blog_pages_localizations_links_fk FOREIGN KEY (blog_page_id) REFERENCES public.blog_pages(id) ON DELETE CASCADE;


--
-- Name: blog_pages_localizations_links blog_pages_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.blog_pages_localizations_links
    ADD CONSTRAINT blog_pages_localizations_links_inv_fk FOREIGN KEY (inv_blog_page_id) REFERENCES public.blog_pages(id) ON DELETE CASCADE;


--
-- Name: blog_pages_tags_links blog_pages_tags_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.blog_pages_tags_links
    ADD CONSTRAINT blog_pages_tags_links_fk FOREIGN KEY (blog_page_id) REFERENCES public.blog_pages(id) ON DELETE CASCADE;


--
-- Name: blog_pages_tags_links blog_pages_tags_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.blog_pages_tags_links
    ADD CONSTRAINT blog_pages_tags_links_inv_fk FOREIGN KEY (tag_id) REFERENCES public.tags(id) ON DELETE CASCADE;


--
-- Name: blog_pages blog_pages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.blog_pages
    ADD CONSTRAINT blog_pages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: blogs blogs_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.blogs
    ADD CONSTRAINT blogs_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: blogs_components blogs_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.blogs_components
    ADD CONSTRAINT blogs_entity_fk FOREIGN KEY (entity_id) REFERENCES public.blogs(id) ON DELETE CASCADE;


--
-- Name: blogs_localizations_links blogs_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.blogs_localizations_links
    ADD CONSTRAINT blogs_localizations_links_fk FOREIGN KEY (blog_id) REFERENCES public.blogs(id) ON DELETE CASCADE;


--
-- Name: blogs_localizations_links blogs_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.blogs_localizations_links
    ADD CONSTRAINT blogs_localizations_links_inv_fk FOREIGN KEY (inv_blog_id) REFERENCES public.blogs(id) ON DELETE CASCADE;


--
-- Name: blogs blogs_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.blogs
    ADD CONSTRAINT blogs_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: categories categories_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: categories_localizations_links categories_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.categories_localizations_links
    ADD CONSTRAINT categories_localizations_links_fk FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: categories_localizations_links categories_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.categories_localizations_links
    ADD CONSTRAINT categories_localizations_links_inv_fk FOREIGN KEY (inv_category_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: categories categories_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: components_blocks_header_blocks_components components_blocks_header_blocks_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_blocks_header_blocks_components
    ADD CONSTRAINT components_blocks_header_blocks_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_blocks_header_blocks(id) ON DELETE CASCADE;


--
-- Name: components_blocks_image_blocks_components components_blocks_image_blocks_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_blocks_image_blocks_components
    ADD CONSTRAINT components_blocks_image_blocks_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_blocks_image_blocks(id) ON DELETE CASCADE;


--
-- Name: components_blocks_separator_blocks_components components_blocks_separator_blocks_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_blocks_separator_blocks_components
    ADD CONSTRAINT components_blocks_separator_blocks_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_blocks_separator_blocks(id) ON DELETE CASCADE;


--
-- Name: components_blocks_tab_blocks_components components_blocks_tab_blocks_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_blocks_tab_blocks_components
    ADD CONSTRAINT components_blocks_tab_blocks_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_blocks_tab_blocks(id) ON DELETE CASCADE;


--
-- Name: components_blocks_text_blocks_components components_blocks_text_blocks_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.components_blocks_text_blocks_components
    ADD CONSTRAINT components_blocks_text_blocks_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_blocks_text_blocks(id) ON DELETE CASCADE;


--
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files_folder_links files_folder_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files_folder_links files_folder_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_inv_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: files_related_morphs files_related_morphs_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: homecares homecares_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.homecares
    ADD CONSTRAINT homecares_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: homecares_components homecares_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.homecares_components
    ADD CONSTRAINT homecares_entity_fk FOREIGN KEY (entity_id) REFERENCES public.homecares(id) ON DELETE CASCADE;


--
-- Name: homecares_localizations_links homecares_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.homecares_localizations_links
    ADD CONSTRAINT homecares_localizations_links_fk FOREIGN KEY (homecare_id) REFERENCES public.homecares(id) ON DELETE CASCADE;


--
-- Name: homecares_localizations_links homecares_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.homecares_localizations_links
    ADD CONSTRAINT homecares_localizations_links_inv_fk FOREIGN KEY (inv_homecare_id) REFERENCES public.homecares(id) ON DELETE CASCADE;


--
-- Name: homecares homecares_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.homecares
    ADD CONSTRAINT homecares_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: project_pages_category_links project_pages_category_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_pages_category_links
    ADD CONSTRAINT project_pages_category_links_fk FOREIGN KEY (project_page_id) REFERENCES public.project_pages(id) ON DELETE CASCADE;


--
-- Name: project_pages_category_links project_pages_category_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_pages_category_links
    ADD CONSTRAINT project_pages_category_links_inv_fk FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;


--
-- Name: project_pages project_pages_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_pages
    ADD CONSTRAINT project_pages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: project_pages_components project_pages_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_pages_components
    ADD CONSTRAINT project_pages_entity_fk FOREIGN KEY (entity_id) REFERENCES public.project_pages(id) ON DELETE CASCADE;


--
-- Name: project_pages_localizations_links project_pages_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_pages_localizations_links
    ADD CONSTRAINT project_pages_localizations_links_fk FOREIGN KEY (project_page_id) REFERENCES public.project_pages(id) ON DELETE CASCADE;


--
-- Name: project_pages_localizations_links project_pages_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_pages_localizations_links
    ADD CONSTRAINT project_pages_localizations_links_inv_fk FOREIGN KEY (inv_project_page_id) REFERENCES public.project_pages(id) ON DELETE CASCADE;


--
-- Name: project_pages_tags_links project_pages_tags_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_pages_tags_links
    ADD CONSTRAINT project_pages_tags_links_fk FOREIGN KEY (project_page_id) REFERENCES public.project_pages(id) ON DELETE CASCADE;


--
-- Name: project_pages_tags_links project_pages_tags_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_pages_tags_links
    ADD CONSTRAINT project_pages_tags_links_inv_fk FOREIGN KEY (tag_id) REFERENCES public.tags(id) ON DELETE CASCADE;


--
-- Name: project_pages project_pages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.project_pages
    ADD CONSTRAINT project_pages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: projects projects_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: projects_components projects_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.projects_components
    ADD CONSTRAINT projects_entity_fk FOREIGN KEY (entity_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: projects_localizations_links projects_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.projects_localizations_links
    ADD CONSTRAINT projects_localizations_links_fk FOREIGN KEY (project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: projects_localizations_links projects_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.projects_localizations_links
    ADD CONSTRAINT projects_localizations_links_inv_fk FOREIGN KEY (inv_project_id) REFERENCES public.projects(id) ON DELETE CASCADE;


--
-- Name: projects projects_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: renovations renovations_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.renovations
    ADD CONSTRAINT renovations_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: renovations_components renovations_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.renovations_components
    ADD CONSTRAINT renovations_entity_fk FOREIGN KEY (entity_id) REFERENCES public.renovations(id) ON DELETE CASCADE;


--
-- Name: renovations_localizations_links renovations_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.renovations_localizations_links
    ADD CONSTRAINT renovations_localizations_links_fk FOREIGN KEY (renovation_id) REFERENCES public.renovations(id) ON DELETE CASCADE;


--
-- Name: renovations_localizations_links renovations_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.renovations_localizations_links
    ADD CONSTRAINT renovations_localizations_links_inv_fk FOREIGN KEY (inv_renovation_id) REFERENCES public.renovations(id) ON DELETE CASCADE;


--
-- Name: renovations renovations_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.renovations
    ADD CONSTRAINT renovations_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_inv_fk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_release_actions strapi_release_actions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_release_actions_release_links strapi_release_actions_release_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_fk FOREIGN KEY (release_action_id) REFERENCES public.strapi_release_actions(id) ON DELETE CASCADE;


--
-- Name: strapi_release_actions_release_links strapi_release_actions_release_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions_release_links
    ADD CONSTRAINT strapi_release_actions_release_links_inv_fk FOREIGN KEY (release_id) REFERENCES public.strapi_releases(id) ON DELETE CASCADE;


--
-- Name: strapi_release_actions strapi_release_actions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_release_actions
    ADD CONSTRAINT strapi_release_actions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_releases strapi_releases_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_releases strapi_releases_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_releases
    ADD CONSTRAINT strapi_releases_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: tags tags_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: tags_localizations_links tags_localizations_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.tags_localizations_links
    ADD CONSTRAINT tags_localizations_links_fk FOREIGN KEY (tag_id) REFERENCES public.tags(id) ON DELETE CASCADE;


--
-- Name: tags_localizations_links tags_localizations_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.tags_localizations_links
    ADD CONSTRAINT tags_localizations_links_inv_fk FOREIGN KEY (inv_tag_id) REFERENCES public.tags(id) ON DELETE CASCADE;


--
-- Name: tags tags_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions_role_links up_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;


--
-- Name: up_permissions_role_links up_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users_role_links up_users_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: up_users_role_links up_users_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders upload_folders_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders_parent_links upload_folders_parent_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders_parent_links upload_folders_parent_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_inv_fk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders upload_folders_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

