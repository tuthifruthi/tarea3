--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: Alumnos; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Alumnos" (
    rol text NOT NULL,
    id_campus integer NOT NULL,
    rut text,
    nombre text,
    carrera text,
    email text,
    telefono integer,
    contrasena text
);


ALTER TABLE public."Alumnos" OWNER TO postgres;

--
-- Name: Alumnos_id_campus_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Alumnos_id_campus_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Alumnos_id_campus_seq" OWNER TO postgres;

--
-- Name: Alumnos_id_campus_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Alumnos_id_campus_seq" OWNED BY "Alumnos".id_campus;


--
-- Name: Areas; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Areas" (
    id_area integer NOT NULL,
    nombre text,
    fecha timestamp without time zone,
    horario time without time zone,
    cant_seleccionados integer
);


ALTER TABLE public."Areas" OWNER TO postgres;

--
-- Name: Areas_id_area_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Areas_id_area_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Areas_id_area_seq" OWNER TO postgres;

--
-- Name: Areas_id_area_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Areas_id_area_seq" OWNED BY "Areas".id_area;


--
-- Name: Campus; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Campus" (
    id_campus integer NOT NULL,
    nombre text NOT NULL,
    direccion text NOT NULL
);


ALTER TABLE public."Campus" OWNER TO postgres;

--
-- Name: Campus_id_campus_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Campus_id_campus_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Campus_id_campus_seq" OWNER TO postgres;

--
-- Name: Campus_id_campus_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Campus_id_campus_seq" OWNED BY "Campus".id_campus;


--
-- Name: Colaboradores; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Colaboradores" (
    id_colaborador integer NOT NULL,
    id_perfil integer,
    rol text,
    tallapolera text
);


ALTER TABLE public."Colaboradores" OWNER TO postgres;

--
-- Name: Colaboradores_area; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Colaboradores_area" (
    id_colaborador integer NOT NULL,
    id_area integer NOT NULL
);


ALTER TABLE public."Colaboradores_area" OWNER TO postgres;

--
-- Name: Colaboradores_id_colaborador_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Colaboradores_id_colaborador_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Colaboradores_id_colaborador_seq" OWNER TO postgres;

--
-- Name: Colaboradores_id_colaborador_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Colaboradores_id_colaborador_seq" OWNED BY "Colaboradores".id_colaborador;


--
-- Name: Coordinadores; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Coordinadores" (
    id_coordinador integer NOT NULL,
    id_perfil integer,
    rol text,
    tallapolera text,
    id_area integer
);


ALTER TABLE public."Coordinadores" OWNER TO postgres;

--
-- Name: Coordinadores_id_coordinador_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Coordinadores_id_coordinador_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Coordinadores_id_coordinador_seq" OWNER TO postgres;

--
-- Name: Coordinadores_id_coordinador_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Coordinadores_id_coordinador_seq" OWNED BY "Coordinadores".id_coordinador;


--
-- Name: Noticias; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Noticias" (
    id_noticia integer NOT NULL,
    id_area integer,
    id_coordinador integer,
    titular text,
    contenido text,
    fecha_publicacion timestamp without time zone
);


ALTER TABLE public."Noticias" OWNER TO postgres;

--
-- Name: Noticias_id_noticia_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Noticias_id_noticia_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Noticias_id_noticia_seq" OWNER TO postgres;

--
-- Name: Noticias_id_noticia_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Noticias_id_noticia_seq" OWNED BY "Noticias".id_noticia;


--
-- Name: Perfiles_usuario; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Perfiles_usuario" (
    id_perfil integer NOT NULL,
    nombre text,
    agregar_coord_area boolean,
    edit_coord_area boolean,
    eliminar_coord_area boolean,
    agregar_colaborador boolean,
    edit_tallapolera_propia boolean,
    agregar_area boolean,
    editar_area boolean,
    eliminar_area boolean,
    descartar_postulante boolean,
    edit_tallapolera boolean,
    gestionar_noticia_area boolean,
    gestionar_noticias boolean,
    seleccionar_postulante boolean
);


ALTER TABLE public."Perfiles_usuario" OWNER TO postgres;

--
-- Name: Perfiles_usuario_id_perfil_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Perfiles_usuario_id_perfil_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Perfiles_usuario_id_perfil_seq" OWNER TO postgres;

--
-- Name: Perfiles_usuario_id_perfil_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Perfiles_usuario_id_perfil_seq" OWNED BY "Perfiles_usuario".id_perfil;


--
-- Name: Postulantes; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Postulantes" (
    "id_postulante " integer NOT NULL,
    id_coordinador integer,
    rol text
);


ALTER TABLE public."Postulantes" OWNER TO postgres;

--
-- Name: Postulantes_area; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Postulantes_area" (
    id_area integer NOT NULL,
    id_postulante integer NOT NULL,
    preferencia integer,
    seleccionado boolean
);


ALTER TABLE public."Postulantes_area" OWNER TO postgres;

--
-- Name: Pòstulantes_id_postulante _seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Pòstulantes_id_postulante _seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Pòstulantes_id_postulante _seq" OWNER TO postgres;

--
-- Name: Pòstulantes_id_postulante _seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Pòstulantes_id_postulante _seq" OWNED BY "Postulantes"."id_postulante ";


--
-- Name: Pòstulantes; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE "Pòstulantes" (
    "id_postulante " integer DEFAULT nextval('"Pòstulantes_id_postulante _seq"'::regclass) NOT NULL,
    id_coordinador integer,
    rol text
);


ALTER TABLE public."Pòstulantes" OWNER TO postgres;

--
-- Name: view_seleccionados; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW view_seleccionados AS
 SELECT "Areas".nombre AS "nombreArea",
    "Alumnos".nombre AS "nombreColaborador"
   FROM ((("Colaboradores"
   JOIN "Alumnos" ON (("Colaboradores".rol = "Alumnos".rol)))
   JOIN "Colaboradores_area" ON (("Colaboradores".id_colaborador = "Colaboradores_area".id_colaborador)))
   JOIN "Areas" ON (("Colaboradores_area".id_area = "Areas".id_area)));


ALTER TABLE public.view_seleccionados OWNER TO postgres;

--
-- Name: view_seleccionados_area1; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW view_seleccionados_area1 AS
 SELECT "Areas".nombre AS "nombreArea",
    "Alumnos".nombre AS "nombreColaborador"
   FROM ((("Colaboradores"
   JOIN "Alumnos" ON (("Colaboradores".rol = "Alumnos".rol)))
   JOIN "Colaboradores_area" ON (("Colaboradores".id_colaborador = "Colaboradores_area".id_colaborador)))
   JOIN "Areas" ON ((("Colaboradores_area".id_area = "Areas".id_area) AND ("Areas".id_area = 1))));


ALTER TABLE public.view_seleccionados_area1 OWNER TO postgres;

--
-- Name: view_seleccionados_area2; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW view_seleccionados_area2 AS
 SELECT "Areas".nombre AS "nombreArea",
    "Alumnos".nombre AS "nombreColaborador"
   FROM ((("Colaboradores"
   JOIN "Alumnos" ON (("Colaboradores".rol = "Alumnos".rol)))
   JOIN "Colaboradores_area" ON (("Colaboradores".id_colaborador = "Colaboradores_area".id_colaborador)))
   JOIN "Areas" ON ((("Colaboradores_area".id_area = "Areas".id_area) AND ("Areas".id_area = 2))));


ALTER TABLE public.view_seleccionados_area2 OWNER TO postgres;

--
-- Name: view_seleccionados_area3; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW view_seleccionados_area3 AS
 SELECT "Areas".nombre AS "nombreArea",
    "Alumnos".nombre AS "nombreColaborador"
   FROM ((("Colaboradores"
   JOIN "Alumnos" ON (("Colaboradores".rol = "Alumnos".rol)))
   JOIN "Colaboradores_area" ON (("Colaboradores".id_colaborador = "Colaboradores_area".id_colaborador)))
   JOIN "Areas" ON ((("Colaboradores_area".id_area = "Areas".id_area) AND ("Areas".id_area = 3))));


ALTER TABLE public.view_seleccionados_area3 OWNER TO postgres;

--
-- Name: view_seleccionados_area4; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW view_seleccionados_area4 AS
 SELECT "Areas".nombre AS "nombreArea",
    "Alumnos".nombre AS "nombreColaborador"
   FROM ((("Colaboradores"
   JOIN "Alumnos" ON (("Colaboradores".rol = "Alumnos".rol)))
   JOIN "Colaboradores_area" ON (("Colaboradores".id_colaborador = "Colaboradores_area".id_colaborador)))
   JOIN "Areas" ON ((("Colaboradores_area".id_area = "Areas".id_area) AND ("Areas".id_area = 4))));


ALTER TABLE public.view_seleccionados_area4 OWNER TO postgres;

--
-- Name: view_seleccionados_area5; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW view_seleccionados_area5 AS
 SELECT "Areas".nombre AS "nombreArea",
    "Alumnos".nombre AS "nombreColaborador"
   FROM ((("Colaboradores"
   JOIN "Alumnos" ON (("Colaboradores".rol = "Alumnos".rol)))
   JOIN "Colaboradores_area" ON (("Colaboradores".id_colaborador = "Colaboradores_area".id_colaborador)))
   JOIN "Areas" ON ((("Colaboradores_area".id_area = "Areas".id_area) AND ("Areas".id_area = 5))));


ALTER TABLE public.view_seleccionados_area5 OWNER TO postgres;

--
-- Name: view_seleccionados_area6; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW view_seleccionados_area6 AS
 SELECT "Areas".nombre AS "nombreArea",
    "Alumnos".nombre AS "nombreColaborador"
   FROM ((("Colaboradores"
   JOIN "Alumnos" ON (("Colaboradores".rol = "Alumnos".rol)))
   JOIN "Colaboradores_area" ON (("Colaboradores".id_colaborador = "Colaboradores_area".id_colaborador)))
   JOIN "Areas" ON ((("Colaboradores_area".id_area = "Areas".id_area) AND ("Areas".id_area = 6))));


ALTER TABLE public.view_seleccionados_area6 OWNER TO postgres;

--
-- Name: view_seleccionados_area7; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW view_seleccionados_area7 AS
 SELECT "Areas".nombre AS "nombreArea",
    "Alumnos".nombre AS "nombreColaborador"
   FROM ((("Colaboradores"
   JOIN "Alumnos" ON (("Colaboradores".rol = "Alumnos".rol)))
   JOIN "Colaboradores_area" ON (("Colaboradores".id_colaborador = "Colaboradores_area".id_colaborador)))
   JOIN "Areas" ON ((("Colaboradores_area".id_area = "Areas".id_area) AND ("Areas".id_area = 7))));


ALTER TABLE public.view_seleccionados_area7 OWNER TO postgres;

--
-- Name: id_campus; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Alumnos" ALTER COLUMN id_campus SET DEFAULT nextval('"Alumnos_id_campus_seq"'::regclass);


--
-- Name: id_area; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Areas" ALTER COLUMN id_area SET DEFAULT nextval('"Areas_id_area_seq"'::regclass);


--
-- Name: id_campus; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Campus" ALTER COLUMN id_campus SET DEFAULT nextval('"Campus_id_campus_seq"'::regclass);


--
-- Name: id_colaborador; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Colaboradores" ALTER COLUMN id_colaborador SET DEFAULT nextval('"Colaboradores_id_colaborador_seq"'::regclass);


--
-- Name: id_coordinador; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Coordinadores" ALTER COLUMN id_coordinador SET DEFAULT nextval('"Coordinadores_id_coordinador_seq"'::regclass);


--
-- Name: id_noticia; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Noticias" ALTER COLUMN id_noticia SET DEFAULT nextval('"Noticias_id_noticia_seq"'::regclass);


--
-- Name: id_postulante ; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Postulantes" ALTER COLUMN "id_postulante " SET DEFAULT nextval('"Pòstulantes_id_postulante _seq"'::regclass);


--
-- Data for Name: Alumnos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Alumnos" (rol, id_campus, rut, nombre, carrera, email, telefono, contrasena) FROM stdin;
2010735842	1	17671428k	Maria Jesus	informatica	tuthifruthi@gmail.com	51131458	mariaj
\.


--
-- Name: Alumnos_id_campus_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Alumnos_id_campus_seq"', 3, true);


--
-- Data for Name: Areas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Areas" (id_area, nombre, fecha, horario, cant_seleccionados) FROM stdin;
1	juanito	\N	\N	\N
2	holi	\N	\N	\N
3	holi2	\N	\N	\N
4	holi3	\N	\N	\N
5	holi4	\N	\N	\N
6	holi5	\N	\N	\N
7	holi6	\N	\N	\N
\.


--
-- Name: Areas_id_area_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Areas_id_area_seq"', 7, true);


--
-- Data for Name: Campus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Campus" (id_campus, nombre, direccion) FROM stdin;
1	san joaquin	vm 3939
2	vitacura	vita
\.


--
-- Name: Campus_id_campus_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Campus_id_campus_seq"', 2, true);


--
-- Data for Name: Colaboradores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Colaboradores" (id_colaborador, id_perfil, rol, tallapolera) FROM stdin;
4	3	2010735842	S
\.


--
-- Data for Name: Colaboradores_area; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Colaboradores_area" (id_colaborador, id_area) FROM stdin;
4	1
\.


--
-- Name: Colaboradores_id_colaborador_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Colaboradores_id_colaborador_seq"', 4, true);


--
-- Data for Name: Coordinadores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Coordinadores" (id_coordinador, id_perfil, rol, tallapolera, id_area) FROM stdin;
1	1	111111111	m	1
\.


--
-- Name: Coordinadores_id_coordinador_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Coordinadores_id_coordinador_seq"', 1, true);


--
-- Data for Name: Noticias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Noticias" (id_noticia, id_area, id_coordinador, titular, contenido, fecha_publicacion) FROM stdin;
\.


--
-- Name: Noticias_id_noticia_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Noticias_id_noticia_seq"', 1, false);


--
-- Data for Name: Perfiles_usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Perfiles_usuario" (id_perfil, nombre, agregar_coord_area, edit_coord_area, eliminar_coord_area, agregar_colaborador, edit_tallapolera_propia, agregar_area, editar_area, eliminar_area, descartar_postulante, edit_tallapolera, gestionar_noticia_area, gestionar_noticias, seleccionar_postulante) FROM stdin;
1	Coordinador General	t	t	t	t	t	t	t	t	t	t	t	t	t
2	Coordinador de Area	f	f	f	t	t	f	f	f	t	t	t	f	t
3	Colaborador	f	f	f	f	t	f	f	f	f	f	f	f	f
\.


--
-- Name: Perfiles_usuario_id_perfil_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Perfiles_usuario_id_perfil_seq"', 1, false);


--
-- Data for Name: Postulantes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Postulantes" ("id_postulante ", id_coordinador, rol) FROM stdin;
\.


--
-- Data for Name: Postulantes_area; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Postulantes_area" (id_area, id_postulante, preferencia, seleccionado) FROM stdin;
\.


--
-- Data for Name: Pòstulantes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Pòstulantes" ("id_postulante ", id_coordinador, rol) FROM stdin;
\.


--
-- Name: Pòstulantes_id_postulante _seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Pòstulantes_id_postulante _seq"', 1, false);


--
-- Name: Alumnos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Alumnos"
    ADD CONSTRAINT "Alumnos_pkey" PRIMARY KEY (rol);


--
-- Name: Areas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Areas"
    ADD CONSTRAINT "Areas_pkey" PRIMARY KEY (id_area);


--
-- Name: Campus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Campus"
    ADD CONSTRAINT "Campus_pkey" PRIMARY KEY (id_campus);


--
-- Name: Colaboradores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Colaboradores"
    ADD CONSTRAINT "Colaboradores_pkey" PRIMARY KEY (id_colaborador);


--
-- Name: Coordinadores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Coordinadores"
    ADD CONSTRAINT "Coordinadores_pkey" PRIMARY KEY (id_coordinador);


--
-- Name: Noticias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Noticias"
    ADD CONSTRAINT "Noticias_pkey" PRIMARY KEY (id_noticia);


--
-- Name: Perfiles_usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Perfiles_usuario"
    ADD CONSTRAINT "Perfiles_usuario_pkey" PRIMARY KEY (id_perfil);


--
-- Name: Postulantes_area_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Postulantes_area"
    ADD CONSTRAINT "Postulantes_area_pkey" PRIMARY KEY (id_area, id_postulante);


--
-- Name: Pòstulantes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Pòstulantes"
    ADD CONSTRAINT "Pòstulantes_pkey" PRIMARY KEY ("id_postulante ");


--
-- Name: colaboradores_area_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY "Colaboradores_area"
    ADD CONSTRAINT colaboradores_area_pkey PRIMARY KEY (id_colaborador, id_area);


--
-- Name: Coordinadores_id_area_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Coordinadores"
    ADD CONSTRAINT "Coordinadores_id_area_fkey" FOREIGN KEY (id_area) REFERENCES "Areas"(id_area);


--
-- Name: id_area; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Noticias"
    ADD CONSTRAINT id_area FOREIGN KEY (id_area) REFERENCES "Areas"(id_area);


--
-- Name: id_campus; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Alumnos"
    ADD CONSTRAINT id_campus FOREIGN KEY (id_campus) REFERENCES "Campus"(id_campus);


--
-- Name: id_coordinador; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Noticias"
    ADD CONSTRAINT id_coordinador FOREIGN KEY (id_coordinador) REFERENCES "Coordinadores"(id_coordinador);


--
-- Name: id_coordinador; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Pòstulantes"
    ADD CONSTRAINT id_coordinador FOREIGN KEY (id_coordinador) REFERENCES "Coordinadores"(id_coordinador);


--
-- Name: id_perfil; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Colaboradores"
    ADD CONSTRAINT id_perfil FOREIGN KEY (id_perfil) REFERENCES "Perfiles_usuario"(id_perfil);


--
-- Name: rol; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Colaboradores"
    ADD CONSTRAINT rol FOREIGN KEY (rol) REFERENCES "Alumnos"(rol);


--
-- Name: rol; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Pòstulantes"
    ADD CONSTRAINT rol FOREIGN KEY (rol) REFERENCES "Alumnos"(rol);


--
-- Name: rol; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Postulantes"
    ADD CONSTRAINT rol FOREIGN KEY (rol) REFERENCES "Alumnos"(rol);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

